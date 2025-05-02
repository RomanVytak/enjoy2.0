<?php
/*
Plugin Name: Custom Gateway
Description: Custom gateway for WooCommerce
Version: 999.0
Author: Molinsky
Author URI: https://www.facebook.com/YAmolinski/
*/
if (!defined('ABSPATH')) exit;

add_action('plugins_loaded', 'payment_gateway_init', 0);

function payment_gateway_init() {

    if (!class_exists('WC_Payment_Gateway')) return;

    class WC_Gateway_Field extends WC_Payment_Gateway {
		
		public function __construct() {

            global $woocommerce;

            $this->id = 'field';
            $this->method_title = 'Custom Payment Gateway';
            $this->title = 'Custom Payment Gateway';
            $this->has_fields = false;
            $this->method_description = 'Your description of the payment gateway';

            //load the settings
            $this->init_form_fields();
            $this->init_settings();
            $this->enabled = $this->get_option('enabled');
            $this->title = $this->get_option( 'title' );
            $this->description = $this->get_option('description');
			
			 add_action('woocommerce_receipt_field', array($this, 'receipt_page'));
            //process settings with parent method
            add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array( $this, 'process_admin_options' ) );

        }


        public function init_form_fields() {

            $this->form_fields = array(
                'enabled' => array(
                    'title'         => 'Enable/Disable',
                    'type'          => 'checkbox',
                    'label'         => 'Enable Custom Payment Gateway',
                    'default'       => 'no'
                ),
                'title' => array(
                    'title'         => 'Method Title',
                    'type'          => 'text',
                    'description'   => 'This controls the payment method title',
                    'default'       => 'Custom Payment Gatway',
                    'desc_tip'      => true,
                ),
                'description' => array(
                    'title'         => 'Customer Message',
                    'type'          => 'textarea',
                    'css'           => 'width:500px;',
                    'default'       => 'Your Payment Gateway Description',
                    'description'   => 'The message which you want it to appear to the customer in the checkout page.',
                )
            );
        }


        function process_payment($order_id) {
            global $woocommerce;

            $order = new WC_Order( $order_id );

            /****

                Here is where you need to call your payment gateway API to process the payment
                You can use cURL or wp_remote_get()/wp_remote_post() to send data and receive response from your API.

            ****/
			
			update_post_meta( $order_id, '_field_option', esc_attr($_POST['field_option']) );
			//$order->update_post_meta( '_field_option', esc_attr($_POST['field_option']) );
			//  $order->update_meta_data( '_field_option' , esc_attr($_POST['field_option']) );
			

            //Based on the response from your payment gateway, you can set the the order status to processing or completed if successful:
            $order->update_status('processing','Additional data like transaction id or reference number');

            //once the order is updated clear the cart and reduce the stock
            $woocommerce->cart->empty_cart();
            $order->reduce_order_stock();

            //if the payment processing was successful, return an array with result as success and redirect to the order-received/thank you page.
            return array(
                'result' => 'success',
                'redirect' => $this->get_return_url( $order )
            );
        }

		
        

    }

    function wm_field($methods) {
        $methods[] = 'WC_Gateway_Field';
        return $methods;
    }

    add_filter('woocommerce_payment_gateways', 'wm_field');

}




// field payement gateway description: Append custom select field
add_filter( 'woocommerce_gateway_description', 'gateway_field_custom_fields', 20, 2 );
function gateway_field_custom_fields( $description, $payment_id ){
    //
    if( 'field' === $payment_id ){
        ob_start(); // Start buffering

        echo '<div  class="field-options">';

        woocommerce_form_field( 'field_option', array(
            'type'          => 'textarea',
            'label'         => __("Обов'язкове поле", "woocommerce"),
            'class'         => array('form-row-wide'),
            'required'      => true,
        ), '');

        echo '<div>';

        $description .= ob_get_clean(); // Append buffered content
    }
    return $description;
}

// Checkout custom field validation
add_action('woocommerce_checkout_process', 'field_option_validation' );
function field_option_validation() {
    
	if ( isset($_POST['payment_method']) && $_POST['payment_method'] === 'field'
    && isset($_POST['field_option']) && empty($_POST['field_option']) ) {
        wc_add_notice( __( 'Please Select an option for "Direct Bank Transfer" payment, please.' ), 'error' );
    }
	
}

// Checkout custom field save to order meta
add_action('woocommerce_checkout_create_order', 'save_field_option_order_meta', 10, 2 );
function save_field_option_order_meta( $order, $data ) {
	/*
	if ( isset($_POST['field_option']) && ! empty($_POST['field_option']) ) {
		$order->update_post_meta( '_field_option', esc_attr($_POST['field_option']) );
        $order->update_meta_data( '_field_option' , esc_attr($_POST['field_option']) );
    }*/
}

// Display custom field on order totals lines everywhere
add_action('woocommerce_get_order_item_totals', 'display_field_option_on_order_totals', 10, 3 );
function display_field_option_on_order_totals( $total_rows, $order, $tax_display ) {
    if ($field_option = get_post_meta($order->id, '_field_option', true) ) {
        $sorted_total_rows = [];

        foreach ( $total_rows as $key_row => $total_row ) {
            $sorted_total_rows[$key_row] = $total_row;
            if( $key_row === 'payment_method' ) {
                $sorted_total_rows['field_option'] = [
                    'label' => __( "Юридична назва, ЄДРПОУ тощо для виставлення рахунку", "woocommerce"),
                    'value' => esc_html( $field_option ),
                ];
            }
        }
        $total_rows = $sorted_total_rows;
    }
    return $total_rows;
}

// Display custom field in Admin orders, below billing address block
add_action( 'woocommerce_admin_order_data_after_billing_address', 'display_field_option_near_admin_order_billing_address', 10, 1 );
function display_field_option_near_admin_order_billing_address( $order ){
	//print_r($order->id);
    if( $field_option = get_post_meta($order->id, '_field_option', true) ) {
        echo '<div class="field-option">
        <p><strong>'.__('Юридична назва, ЄДРПОУ тощо для виставлення рахунку').':</strong> ' . $field_option . '</p>
        </div>';
    }
}