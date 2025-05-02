<?php
/**
 * Plugin Name: Monobank Plugin for Woocommerce 
 * Description: Extends WooCommerce with Monobank Gateway.
 * Version: 4.0
 */
if ( ! defined( 'ABSPATH' ) ) exit;


function phoneMask() {
?>
<script type="text/javascript">
	if($('#billing_phone').val()===''){
		$('#billing_phone').val('+38');
	}
	function phoneMask() {
		console.log($(this).val().length);
		if($(this).val().length<4){
			$('#billing_phone').val('+38'); 
		}
		else{ 
		}
	}
	$('#billing_phone').keyup(phoneMask);
</script>
<?php
}
add_action( 'wp_footer', 'phoneMask' );


add_action('plugins_loaded', 'plugin_monobank', 0);

function plugin_monobank() {	  
	if ( !class_exists( 'WC_Payment_Gateway' ) ) {
	    echo 'Monobank Gateway for WooCommerce plugin is disabled. Check to see if this plugin is active.';
	    return;
	}
	
	add_filter( 'woocommerce_payment_gateways', 'add_monobank_method' );
    function add_monobank_method( $methods ){	
		$methods[] = 'WC_Gateway_MonoBank'; 
		return $methods;
	}
	class WC_Gateway_MonoBank extends WC_Payment_Gateway {

		/**
		 * Constructor for the gateway.
		 */
		public function __construct() {
			// Setup general properties.
			$this->setup_properties();

			// Load the settings.
			$this->init_form_fields();
			$this->init_settings();

			//API settings 
			$this->store_id 		  = $this->get_option(  'store_id'  );
			$this->password		      = $this->get_option(  'pass'  );
			$this->month		      = $this->get_option(  'month'  );

			// Get settings.
			$this->title              = $this->get_option( 'title' );
			$this->description        = $this->get_option( 'description' );
			$this->instructions       = $this->get_option( 'instructions' );
			$this->enable_for_methods = $this->get_option( 'enable_for_methods', array() );
			$this->enable_for_virtual = $this->get_option( 'enable_for_virtual', 'yes' ) === 'yes';

			add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array( $this, 'process_admin_options' ) );
			add_action( 'woocommerce_thankyou_' . $this->id, array( $this, 'thankyou_page' ) );
			add_filter( 'woocommerce_payment_complete_order_status', array( $this, 'change_payment_complete_order_status' ), 10, 3 );
			
			
			// Payment listener/API hook
            add_action('woocommerce_api_wc_gateway_monoinstallment', array($this, 'check_monoinstallment_response'));

			// Customer Emails.
			add_action( 'woocommerce_email_before_order_table', array( $this, 'email_instructions' ), 10, 3 );
		}

		/**
		 * Setup general properties for the gateway.
		 */
		protected function setup_properties() {
			$this->id                 = 'monoinstallment';
			$this->method_title       = __( 'Mono оплата частинами', 'woocommerce' );
			$this->method_description = __( 'Mono оплата частинами', 'woocommerce' );
			$this->has_fields         = true;
		}

		/*
		 * Initialise Gateway Settings Form Fields.
		 */
		public function init_form_fields() {
			$this->form_fields = array(
				'enabled'            => array(
					'title'       => __( 'Enable/Disable', 'woocommerce' ),
					'label'       => __( 'Включити оплату через Monobank', 'woocommerce' ),
					'type'        => 'checkbox',
					'description' => '',
					'default'     => 'no',
				),
				'title'              => array(
					'title'       => __( 'Title', 'woocommerce' ),
					'type'        => 'text',
					'description' => __( 'Payment method description that the customer will see on your checkout.', 'woocommerce' ),
					'default'     => __( 'Mono оплата частинами', 'woocommerce' ),
					'desc_tip'    => true,
				),
				'description'        => array(
					'title'       => __( 'Description', 'woocommerce' ),
					'type'        => 'textarea',
					'description' => __( 'Payment method description that the customer will see on your website.', 'woocommerce' ),
					'default'     => __( 'Mono оплата частинами.', 'woocommerce' ),
					'desc_tip'    => true,
				),
				'instructions'       => array(
					'title'       => __( 'Instructions', 'woocommerce' ),
					'type'        => 'textarea',
					'description' => __( 'Instructions that will be added to the thank you page.', 'woocommerce' ),
					'default'     => __( 'Mono оплата частинами.', 'woocommerce' ),
					'desc_tip'    => true,
				),
				'store_id' => array(
					'title' 		=> __( 'Store ID', 'woocommerce' ),
					'type' 			=> 'text',
					'description'	=> 'Візьміть з особистого кабинету Monobank',
					'default' 		=> '',
					'desc_tip' 		=> false,
				),
				'pass' => array(
					'title' 		=> __( 'Sign Key', 'woocommerce' ),
					'type' 			=> 'text',
					'description'	=> 'Візьміть з особистого кабинету Monobank',
					'default' 		=> '',
					'desc_tip' 		=> false,
				),
				/*'month' => array(
					'title' 		=> __( 'Місяці', 'woocommerce' ),
					'type' 			=> 'select',
					'description'	=> '',
					'desc_tip' 		=> false,
					'options'     => array(
						'2' => __( '2', 'woocommerce' ),
						'3' => __( '3', 'woocommerce' ),
						'4' => __( '4', 'woocommerce' ),
						'5' => __( '5', 'woocommerce' ),
						'6' => __( '6', 'woocommerce' ),
						'7' => __( '7', 'woocommerce' ),
						'8' => __( '8', 'woocommerce' ),
						'9' => __( '9', 'woocommerce' ),
						'10' => __( '10', 'woocommerce' ),
						'11' => __( '11', 'woocommerce' ),
						'12' => __( '12', 'woocommerce' ),
                    ),
				),*/
			);
		}

		/**
		 * Check If The Gateway Is Available For Use.
		 *
		 * @return bool
		 */
		public function is_available() {
			$order          = null;
			$needs_shipping = false;

			// Test if shipping is needed first.
			if ( WC()->cart && WC()->cart->needs_shipping() ) {
				$needs_shipping = true;
			} elseif ( is_page( wc_get_page_id( 'checkout' ) ) && 0 < get_query_var( 'order-pay' ) ) {
				$order_id = absint( get_query_var( 'order-pay' ) );
				$order    = wc_get_order( $order_id );

				// Test if order needs shipping.
				if ( 0 < count( $order->get_items() ) ) {
					foreach ( $order->get_items() as $item ) {
						$_product = $item->get_product();
						if ( $_product && $_product->needs_shipping() ) {
							$needs_shipping = true;
							break;
						}
					}
				}
			}

			$needs_shipping = apply_filters( 'woocommerce_cart_needs_shipping', $needs_shipping );

			// Virtual order, with virtual disabled.
			if ( ! $this->enable_for_virtual && ! $needs_shipping ) {
				return false;
			}

			// Only apply if all packages are being shipped via chosen method, or order is virtual.
			if ( ! empty( $this->enable_for_methods ) && $needs_shipping ) {
				$order_shipping_items            = is_object( $order ) ? $order->get_shipping_methods() : false;
				$chosen_shipping_methods_session = WC()->session->get( 'chosen_shipping_methods' );

				if ( $order_shipping_items ) {
					$canonical_rate_ids = $this->get_canonical_order_shipping_item_rate_ids( $order_shipping_items );
				} else {
					$canonical_rate_ids = $this->get_canonical_package_rate_ids( $chosen_shipping_methods_session );
				}

				if ( ! count( $this->get_matching_rates( $canonical_rate_ids ) ) ) {
					return false;
				}
			}

			return parent::is_available();
		}

		
		/**
		 * Converts the chosen rate IDs generated by Shipping Methods to a canonical 'method_id:instance_id' format.
		 *
		 * @since  3.4.0
		 *
		 * @param  array $order_shipping_items  Array of WC_Order_Item_Shipping objects.
		 * @return array $canonical_rate_ids    Rate IDs in a canonical format.
		 */
		private function get_canonical_order_shipping_item_rate_ids( $order_shipping_items ) {

			$canonical_rate_ids = array();

			foreach ( $order_shipping_items as $order_shipping_item ) {
				$canonical_rate_ids[] = $order_shipping_item->get_method_id() . ':' . $order_shipping_item->get_instance_id();
			}

			return $canonical_rate_ids;
		}

		/**
		 * Converts the chosen rate IDs generated by Shipping Methods to a canonical 'method_id:instance_id' format.
		 *
		 * @since  3.4.0
		 *
		 * @param  array $chosen_package_rate_ids Rate IDs as generated by shipping methods. Can be anything if a shipping method doesn't honor WC conventions.
		 * @return array $canonical_rate_ids  Rate IDs in a canonical format.
		 */
		private function get_canonical_package_rate_ids( $chosen_package_rate_ids ) {

			$shipping_packages  = WC()->shipping()->get_packages();
			$canonical_rate_ids = array();

			if ( ! empty( $chosen_package_rate_ids ) && is_array( $chosen_package_rate_ids ) ) {
				foreach ( $chosen_package_rate_ids as $package_key => $chosen_package_rate_id ) {
					if ( ! empty( $shipping_packages[ $package_key ]['rates'][ $chosen_package_rate_id ] ) ) {
						$chosen_rate          = $shipping_packages[ $package_key ]['rates'][ $chosen_package_rate_id ];
						$canonical_rate_ids[] = $chosen_rate->get_method_id() . ':' . $chosen_rate->get_instance_id();
					}
				}
			}

			return $canonical_rate_ids;
		}

		/**
		 * Indicates whether a rate exists in an array of canonically-formatted rate IDs that activates this gateway.
		 *
		 * @since  3.4.0
		 *
		 * @param array $rate_ids Rate ids to check.
		 * @return boolean
		 */
		private function get_matching_rates( $rate_ids ) {
			// First, match entries in 'method_id:instance_id' format. Then, match entries in 'method_id' format by stripping off the instance ID from the candidates.
			return array_unique( array_merge( array_intersect( $this->enable_for_methods, $rate_ids ), array_intersect( $this->enable_for_methods, array_unique( array_map( 'wc_get_string_before_colon', $rate_ids ) ) ) ) );
		}

		/**
		 * Process the payment and return the result.
		 *
		 * @param int $order_id Order ID.
		 * @return array
		 */
		public function process_payment( $order_id ) {
			$order = wc_get_order( $order_id ); 

			$id_order = $order->id;
			
			//$store_id = $this->store_id;
			// test
			// $store_id = '3292604208_176';	// old		
			$store_id = '3414504273_348';			
			
			//$password = $this->password; 
			// test pass
			// $password = '4484d83c-a63d-460e-ae2d-a84878736dfc'; //old
			 $password = '95d2e2b3-11a9-4d38-b477-e93af0da779e'; 
			
			//$url = 'https://u2-demo.ftband.com/api/order/create';
			$url = 'https://u2.monobank.com.ua/api/order/create';
	
			//$amount_q = $order->get_total();
			$amount_q = $order->get_total();
			if($amount_q>10000){
				// $partsCount = $this->month;
				$partsCount = '5';
			}
			else{
				$partsCount = '3';
			}
			
			$responseUrl = get_bloginfo('url')."/wc-api/wc_gateway_monoinstallment/?order_id=".$order_id;

$request_string = '{ "store_order_id": "'.$order->id.'",
  "client_phone": "'.$order->billing_phone.'",
  "total_sum": '.$amount_q.',
  "invoice": {
    "date": "'.get_the_time('Y-m-d', $order->id ).'",
    "number": "'.$order->id.'",
    "point_id": 1234,
    "source": "INTERNET"
  },
  "available_programs": [
    {
      "available_parts_count": [
        '.$partsCount.'
      ],
      "type": "payment_installments"
    }
  ],
  "products": [
    {
      "name": "Product",
      "count": 1,
      "sum": '.$amount_q.'
    }
  ],
  "result_callback": "'.$responseUrl.'"
}';
//print_r($request_string);
$signature = base64_encode(hash_hmac("sha256", $request_string, $password, true));

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
curl_setopt($ch, CURLOPT_POSTFIELDS, $request_string);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    'store-id: '.$store_id.'',
    'signature: '.$signature,
    'Content-Type: application/json',
    'Accept: application/json'
));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

$server_output = curl_exec ($ch);
curl_close ($ch);

print_r($server_output);

$json_q = json_decode($server_output, true);

update_post_meta($order->id, 'mono-id', $json_q['order_id']);

			$formUrl = $order->get_checkout_order_received_url();

			WC()->cart->empty_cart();
			//$order->update_status( 'completed' );


			return array(
				'result'   => 'success',
				'redirect' => $formUrl
			);
			
		}

		/**
		 * Output for the order received page.
		 */

		/**
		 * Change payment complete order status to completed for IPay orders.
		 *
		 * @since  3.1.0
		 * @param  string         $status Current order status.
		 * @param  int            $order_id Order ID.
		 * @param  WC_Order|false $order Order object.
		 * @return string
		 */
		public function change_payment_complete_order_status( $status, $order_id = 0, $order = false ) {
			if ( $order && 'monoinstallments' === $order->get_payment_method() ) {
				$status = 'completed';
			}
			return $status;
		}

		public function thankyou_page() {
			if ( $this->instructions ) {
				echo wp_kses_post( wpautop( wptexturize( $this->instructions ) ) );
			}
		}


		/**
		 * Add content to the WC emails.
		 *
		 * @param WC_Order $order Order object.
		 * @param bool     $sent_to_admin  Sent to admin.
		 * @param bool     $plain_text Email format: plain text or HTML.
		 */
		public function email_instructions( $order, $sent_to_admin, $plain_text = false ) {
			if ( $this->instructions && ! $sent_to_admin && $this->id === $order->get_payment_method() ) {
				echo wp_kses_post( wpautop( wptexturize( $this->instructions ) ) . PHP_EOL );
			}
		}
		
		
		function check_monoinstallment_response() {
            global $woocommerce;
			/*
            $success = isset($_POST['data']) && isset($_POST['signature']);			 
            if ($success) {
                $data = $_POST['data'];
                $parsed_data = json_decode(base64_decode($data));
                $received_signature = $_POST['signature'];
                $received_public_key = $parsed_data->public_key;
                $order_id = $parsed_data->order_id;
                $status = $parsed_data->status;
                $sender_phone = $parsed_data->sender_phone;
                $amount = $parsed_data->amount;
                $currency = $parsed_data->currency;
                $transaction_id = $parsed_data->transaction_id;

                $generated_signature = base64_encode(sha1($this->private_key . $data . $this->private_key, 1));

                if ($received_signature != $generated_signature || $this->public_key != $received_public_key) wp_die('IPN Request Failure');

                $order = new WC_Order($order_id);

                if ($status == 'success' || ($status == 'sandbox' && $this->sandbox == 'yes')) {
                    $order->update_status($this->status, __('Заказ оплачен (оплата получена)', 'woocommerce'));
                    $order->add_order_note(__('Клиент оплатил свой заказ', 'woocommerce'));
                    $woocommerce->cart->empty_cart();
                } else {
                    $order->update_status('failed', __('Оплата не была получена', 'woocommerce'));
					
					//WC()->mailer()->get_emails()['WC_Email_Cancelled_Order']->trigger( $order_id );
					
                    wp_redirect($order->get_cancel_order_url());
                    exit;
                }
            } else {
                wp_die('IPN Request Failure');
            }
			*/
			
			
			//$store_id = $this->store_id;
			// test
			// $store_id = '3292604208_176';	//old		
			$store_id = '3414504273_348';			
			
			//$password = $this->password; 
			// test pass
			// $password = '4484d83c-a63d-460e-ae2d-a84878736dfc';  // old
			$password = '95d2e2b3-11a9-4d38-b477-e93af0da779e'; 
			
			//$url = 'https://u2-demo.ftband.com/api/order/state';
			$url = 'https://u2.monobank.com.ua/api/order/state';
			$url2 = 'https://u2.monobank.com.ua/api/order/confirm';
			$url3 = 'https://u2.monobank.com.ua/api/order/reject';
			
			//$password = '75bef16bfdce4d0e9c0ad5a19b9940df'; 
			$order_id= $_GET['order_id'];
			
			$mono_id = get_post_meta($order_id, 'mono-id', true);
			
			$request_string = '{
  "order_id": "'.$mono_id.'"
}';
			
			$signature = base64_encode(hash_hmac("sha256", $request_string, $password, true));
			
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
			curl_setopt($ch, CURLOPT_POSTFIELDS, $request_string);
			curl_setopt($ch, CURLOPT_HTTPHEADER, array(
				'store-id: '.$store_id.'',
				'signature: '.$signature,
				'Content-Type: application/json',
				'Accept: application/json'
			));
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

			$server_output = curl_exec ($ch);
			curl_close ($ch);
			
			$json_q = json_decode($server_output, true);
			
			
			//update_option('test_pb', 'order_id: '.$order_id.' respone: '.$response);
			
			$order = new WC_Order($order_id);
			
			// IN_PROCESS 
			if($json_q['state']=='IN_PROCESS'&&$json_q['order_sub_state']=='WAITING_FOR_STORE_CONFIRM'){
				$order->update_status('processing', __('Заказ оплачен (оплата получена)', 'woocommerce'));
                    $order->add_order_note($json_q['order_sub_state']);
                    $woocommerce->cart->empty_cart();
												
								$signature = base64_encode(hash_hmac("sha256", $request_string, $password, true));
								
								$ch = curl_init();
								curl_setopt($ch, CURLOPT_URL, $url2);
								curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
								curl_setopt($ch, CURLOPT_POSTFIELDS, $request_string);
								curl_setopt($ch, CURLOPT_HTTPHEADER, array(
									'store-id: '.$store_id.'',
									'signature: '.$signature,
									'Content-Type: application/json',
									'Accept: application/json'
								));
								curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

								$server_output = curl_exec ($ch);
								curl_close ($ch);
								
								$json_q = json_decode($server_output, true);
								update_post_meta($order_id, 'mono_result', $server_output);
			}
			else{
				$order->update_status('failed', __('Оплата не была получена', 'woocommerce'));
				$order->add_order_note($json_q['order_sub_state']);
				
								$signature = base64_encode(hash_hmac("sha256", $request_string, $password, true));
								
								$ch = curl_init();
								curl_setopt($ch, CURLOPT_URL, $url3);
								curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
								curl_setopt($ch, CURLOPT_POSTFIELDS, $request_string);
								curl_setopt($ch, CURLOPT_HTTPHEADER, array(
									'store-id: '.$store_id.'',
									'signature: '.$signature,
									'Content-Type: application/json',
									'Accept: application/json'
								));
								curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

								$server_output = curl_exec ($ch);
								curl_close ($ch);
								
								$json_q = json_decode($server_output, true);
								update_post_meta($order_id, 'mono_result', $server_output);
			}

        }
		
		
		
	}
}