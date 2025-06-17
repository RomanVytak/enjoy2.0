<?php
/**
 * Plugin Name: Privat Bank 24 Plugin for Woocommerce 
 * Description: Extends WooCommerce with Privat Bank 24 Gateway.
 * Version: 4.0
 */
if ( ! defined( 'ABSPATH' ) ) exit;

add_action('plugins_loaded', 'plugin_privatbank', 0);

function plugin_privatbank() {	  
	if ( !class_exists( 'WC_Payment_Gateway' ) ) {
	    echo 'PrivatBank24 Gateway for WooCommerce plugin is disabled. Check to see if this plugin is active.';
	    return;
	}
	
	add_filter( 'woocommerce_payment_gateways', 'add_privatbank_method' );
    function add_privatbank_method( $methods ){	
		$methods[] = 'WC_Gateway_PrivatBank'; 
		return $methods;
	}
	class WC_Gateway_PrivatBank extends WC_Payment_Gateway {

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
            add_action('woocommerce_api_wc_gateway_installment', array($this, 'check_installment_response'));

			// Customer Emails.
			add_action( 'woocommerce_email_before_order_table', array( $this, 'email_instructions' ), 10, 3 );
		}

		/**
		 * Setup general properties for the gateway.
		 */
		protected function setup_properties() {
			$this->id                 = 'installment';
			$this->method_title       = __( 'Оплата частинами', 'woocommerce' );
			$this->method_description = __( 'Оплата частинами', 'woocommerce' );
			$this->has_fields         = true;
		}

		/*
		 * Initialise Gateway Settings Form Fields.
		 */
		public function init_form_fields() {
			$this->form_fields = array(
				'enabled'            => array(
					'title'       => __( 'Enable/Disable', 'woocommerce' ),
					'label'       => __( 'Включити оплату через PrivatBank24', 'woocommerce' ),
					'type'        => 'checkbox',
					'description' => '',
					'default'     => 'no',
				),
				'title'              => array(
					'title'       => __( 'Title', 'woocommerce' ),
					'type'        => 'text',
					'description' => __( 'Payment method description that the customer will see on your checkout.', 'woocommerce' ),
					'default'     => __( 'Оплата частинами', 'woocommerce' ),
					'desc_tip'    => true,
				),
				'description'        => array(
					'title'       => __( 'Description', 'woocommerce' ),
					'type'        => 'textarea',
					'description' => __( 'Payment method description that the customer will see on your website.', 'woocommerce' ),
					'default'     => __( 'Оплата частинами.', 'woocommerce' ),
					'desc_tip'    => true,
				),
				'instructions'       => array(
					'title'       => __( 'Instructions', 'woocommerce' ),
					'type'        => 'textarea',
					'description' => __( 'Instructions that will be added to the thank you page.', 'woocommerce' ),
					'default'     => __( 'Оплата частинами.', 'woocommerce' ),
					'desc_tip'    => true,
				),
				'store_id' => array(
					'title' 		=> __( 'Store ID', 'woocommerce' ),
					'type' 			=> 'text',
					'description'	=> 'Візьміть з особистого кабинету PrivatBank24',
					'default' 		=> '',
					'desc_tip' 		=> false,
				),
				'pass' => array(
					'title' 		=> __( 'Password', 'woocommerce' ),
					'type' 			=> 'text',
					'description'	=> 'Візьміть з особистого кабинету PrivatBank24',
					'default' 		=> '',
					'desc_tip' 		=> false,
				),
				'month' => array(
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
				),
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
		 * Checks to see whether or not the admin settings are being accessed by the current request.
		 *
		 * @return bool
		 */
		/*private function is_accessing_settings() {
			if ( is_admin() ) {
				// phpcs:disable WordPress.Security.NonceVerification
				if ( ! isset( $_REQUEST['page'] ) || 'wc-settings' !== $_REQUEST['page'] ) {
					return false;
				}
				if ( ! isset( $_REQUEST['tab'] ) || 'checkout' !== $_REQUEST['tab'] ) {
					return false;
				}
				if ( ! isset( $_REQUEST['section'] ) || 'cod' !== $_REQUEST['section'] ) {
					return false;
				}
				// phpcs:enable WordPress.Security.NonceVerification

				return true;
			}

			if ( Constants::is_true( 'REST_REQUEST' ) ) {
				global $wp;
				if ( isset( $wp->query_vars['rest_route'] ) && false !== strpos( $wp->query_vars['rest_route'], '/payment_gateways' ) ) {
					return true;
				}
			}

			return false;
		}*/

		/**
		 * Loads all of the shipping method options for the enable_for_methods field.
		 *
		 * @return array
		 */
		/*private function load_shipping_method_options() {
			// Since this is expensive, we only want to do it if we're actually on the settings page.
			if ( ! $this->is_accessing_settings() ) {
				return array();
			}

			$data_store = WC_Data_Store::load( 'shipping-zone' );
			$raw_zones  = $data_store->get_zones();

			foreach ( $raw_zones as $raw_zone ) {
				$zones[] = new WC_Shipping_Zone( $raw_zone );
			}

			$zones[] = new WC_Shipping_Zone( 0 );

			$options = array();
			foreach ( WC()->shipping()->load_shipping_methods() as $method ) {

				$options[ $method->get_method_title() ] = array();

				// Translators: %1$s shipping method name.
				$options[ $method->get_method_title() ][ $method->id ] = sprintf( __( 'Any &quot;%1$s&quot; method', 'woocommerce' ), $method->get_method_title() );

				foreach ( $zones as $zone ) {

					$shipping_method_instances = $zone->get_shipping_methods();

					foreach ( $shipping_method_instances as $shipping_method_instance_id => $shipping_method_instance ) {

						if ( $shipping_method_instance->id !== $method->id ) {
							continue;
						}

						$option_id = $shipping_method_instance->get_rate_id();

						// Translators: %1$s shipping method title, %2$s shipping method id.
						$option_instance_title = sprintf( __( '%1$s (#%2$s)', 'woocommerce' ), $shipping_method_instance->get_title(), $shipping_method_instance_id );

						// Translators: %1$s zone name, %2$s shipping method instance name.
						$option_title = sprintf( __( '%1$s &ndash; %2$s', 'woocommerce' ), $zone->get_id() ? $zone->get_zone_name() : __( 'Other locations', 'woocommerce' ), $option_instance_title );

						$options[ $method->get_method_title() ][ $option_id ] = $option_title;
					}
				}
			}

			return $options;
		}*/

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
			
			$store_id = $this->store_id;
			// test
			//$store_id = '4AAD1369CF734B64B70F';
			
			$api_url = 'https://payparts2.privatbank.ua/ipp/v2/payment/create';
			
			$merchantType = 'PP';
			$password = $this->password; 
			// test pass
			//$password = '75bef16bfdce4d0e9c0ad5a19b9940df'; 

$line_items = $order->get_items( apply_filters( 'woocommerce_admin_order_item_types', 'line_item' ) );		
	
			//$amount_q = $order->get_total();
			$amount_q = $order->get_total();
			if($amount_q>10000){
				// $partsCount = $this->month;
				$partsCount = '5';
			}
			else{
				$partsCount = '3';
			}
			
			$matches = null;

			if (   preg_match('/./', $amount_q, $matches, PREG_OFFSET_CAPTURE)	== 1  ) {
				$amount = $amount_q;
				$amount_without_floating_point = str_replace('.', '', $amount * 100);
			}else{
				$amount = $amount_q;
				$amount_without_floating_point = $amount * 100;
			}
			
			//$responseUrl = get_site_url();
			$responseUrl = get_bloginfo('url')."/wc-api/wc_gateway_installment/?order_id=".$order_id;
			//$redirectUrl = get_site_url();
			$redirectUrl = $order->get_checkout_order_received_url();
			$productString = 'Product' . '1' . $amount_without_floating_point;
			$signature = base64_encode(sha1(	$password . $store_id . $id_order . $amount_without_floating_point . $partsCount . $merchantType . $responseUrl . $redirectUrl . $productString . $password , true));

			$data = '
			{
			  "storeId": "'.$store_id.'",
			  "orderId": "'.$order_id.'",
			  "amount": "'.$amount.'",
			  "partsCount": "'.$partsCount.'",

			  "merchantType": "'.$merchantType.'",
			  "products": [
			    {
			      "name": "Product",
			      "count": 1,
			      "price": "'.$amount.'"
			    }
			  ],
			  "responseUrl": "'.$responseUrl.'",
			  "redirectUrl": "'.$redirectUrl.'",
			  "signature": "'.$signature.'"
			}';

			  $headers = array();
			  $headers[] = "Content-Type:  application/json; charset=UTF-8";
			  $headers[] = "Accept: application/json; charset=utf-8";


			$curl = curl_init();

			curl_setopt_array($curl, array(
			  CURLOPT_URL => $api_url,
			  CURLOPT_RETURNTRANSFER => true,
			  CURLOPT_ENCODING => "",
			  CURLOPT_MAXREDIRS => 10,
			  CURLOPT_TIMEOUT => 0,
			  CURLOPT_FOLLOWLOCATION => true,
			  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			  CURLOPT_HTTPHEADER => $headers,
			  CURLOPT_CUSTOMREQUEST => "POST",
			  CURLOPT_POSTFIELDS =>	$data
			  )
			);

			$response = curl_exec($curl);
			curl_close($curl);

			$json_q = json_decode($response, true);
			$formUrl = 'https://payparts2.privatbank.ua/ipp/v2/payment?token=' . $json_q['token'];

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
			if ( $order && 'installments' === $order->get_payment_method() ) {
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
		
		
		function check_installment_response() {
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
			
			
			$store_id = $this->store_id;
			// test
			//$store_id = '4AAD1369CF734B64B70F';
			$api_url = 'https://payparts2.privatbank.ua/ipp/v2/payment/state';
			$password = $this->password; 
			// test pass
			//$password = '75bef16bfdce4d0e9c0ad5a19b9940df'; 
			$order_id= $_GET['order_id'];
			
			
			
			$signature = base64_encode(sha1($password . $store_id . $order_id . $password , true));
			$data = '
			{
			  "storeId": "'.$store_id.'",
			  "orderId": "'.$order_id.'",
			  "showRefund": "true",
			  "signature": "'.$signature.'"
			}';

			  $headers = array();
			  $headers[] = "Content-Type:  application/json; charset=UTF-8";
			  $headers[] = "Accept: application/json; charset=utf-8";


			$curl = curl_init();

			curl_setopt_array($curl, array(
			  CURLOPT_URL => $api_url,
			  CURLOPT_RETURNTRANSFER => true,
			  CURLOPT_ENCODING => "",
			  CURLOPT_MAXREDIRS => 10,
			  CURLOPT_TIMEOUT => 0,
			  CURLOPT_FOLLOWLOCATION => true,
			  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			  CURLOPT_HTTPHEADER => $headers,
			  CURLOPT_CUSTOMREQUEST => "POST",
			  CURLOPT_POSTFIELDS =>	$data
			  )
			);

			$response = curl_exec($curl);
			curl_close($curl);

			$json_q = json_decode($response, true);
			
			
			//update_option('test_pb', 'order_id: '.$order_id.' respone: '.$response);
			
			$order = new WC_Order($order_id);
			if($json_q['paymentState']=='SUCCESS'){
				$order->update_status('processing', __('Замовлення оплачене (оплата отримана)', 'woocommerce'));
                    $order->add_order_note(__('Покупець оплатив своє замовлення', 'woocommerce'));
                    $woocommerce->cart->empty_cart();
			}
			else{
				$order->update_status('failed', __('Оплата не отримана', 'woocommerce'));
			}

        }
		
		
		
	}
}