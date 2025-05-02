<?php
/*
Plugin Name: Custom Gateway
Description: Custom gateway for WooCommerce
Version: 1.0
Author: Molinsky
Author URI: https://www.facebook.com/YAmolinski/
*/
if (!defined('ABSPATH')) exit;

add_action('plugins_loaded', 'payment_gateway_init', 0);

function payment_gateway_init() {

    if (!class_exists('WC_Payment_Gateway')) return;

    class WC_Gateway_Field extends WC_Payment_Gateway {

        public function __construct() {

            $this->id = 'field';
            $this->method_title = 'Custom Payment Gateway';
            $this->title = 'Custom Payment Gateway';
            $this->has_fields = false;
            $this->method_description = 'Your description of the payment gateway';

            $this->init_form_fields();
            $this->init_settings();
            $this->enabled = $this->get_option('enabled');
            $this->title = $this->get_option('title');
            $this->description = $this->get_option('description');

            add_action('woocommerce_thankyou_' . $this->id, array($this, 'thankyou_page'));
            add_action('woocommerce_update_options_payment_gateways_' . $this->id, array($this, 'process_admin_options'));
        }

        public function init_form_fields() {
            $this->form_fields = array(
                'enabled' => array(
                    'title'       => 'Enable/Disable',
                    'type'        => 'checkbox',
                    'label'       => 'Enable Custom Payment Gateway',
                    'default'     => 'no'
                ),
                'title' => array(
                    'title'       => 'Method Title',
                    'type'        => 'text',
                    'description' => 'This controls the payment method title',
                    'default'     => 'Custom Payment Gateway',
                    'desc_tip'    => true,
                ),
                'description' => array(
                    'title'       => 'Customer Message',
                    'type'        => 'textarea',
                    'css'         => 'width:500px;',
                    'default'     => 'Your Payment Gateway Description',
                    'description' => 'The message which you want it to appear to the customer in the checkout page.',
                )
            );
        }

        public function process_payment($order_id) {
            $order = wc_get_order($order_id);

            if (isset($_POST['field_option'])) {
                $order->update_meta_data('_field_option', sanitize_textarea_field($_POST['field_option']));
            }

            $order->update_status('processing', 'Custom gateway: оплата обробляється');
            WC()->cart->empty_cart();
            $order->reduce_order_stock();

            return array(
                'result'   => 'success',
                'redirect' => $this->get_return_url($order)
            );
        }

        public function thankyou_page($order_id) {
            echo '<p>' . __('Дякуємо за ваше замовлення. Ми його обробляємо.', 'woocommerce') . '</p>';
        }
    }

    function wm_field($methods) {
        $methods[] = 'WC_Gateway_Field';
        return $methods;
    }

    add_filter('woocommerce_payment_gateways', 'wm_field');
}

add_filter('woocommerce_gateway_description', 'gateway_field_custom_fields', 20, 2);
function gateway_field_custom_fields($description, $payment_id) {
    if ('field' === $payment_id) {
        ob_start();
        echo '<div class="field-options">';
        woocommerce_form_field('field_option', array(
            'type'     => 'textarea',
            'label'    => __("Обов'язкове поле", "woocommerce"),
            'class'    => array('form-row-wide'),
            'required' => true,
        ), '');
        echo '</div>';
        $description .= ob_get_clean();
    }
    return $description;
}

add_action('woocommerce_checkout_process', 'field_option_validation');
function field_option_validation() {
    if (isset($_POST['payment_method']) && $_POST['payment_method'] === 'field'
        && (!isset($_POST['field_option']) || empty($_POST['field_option']))) {
        wc_add_notice(__('Будь ласка, заповніть поле для виставлення рахунку.', 'woocommerce'), 'error');
    }
}

add_action('woocommerce_checkout_create_order', 'save_field_option_order_meta', 10, 2);
function save_field_option_order_meta($order, $data) {
    if (isset($_POST['field_option']) && !empty($_POST['field_option'])) {
        $order->update_meta_data('_field_option', sanitize_textarea_field($_POST['field_option']));
    }
}

add_action('woocommerce_get_order_item_totals', 'display_field_option_on_order_totals', 10, 3);
function display_field_option_on_order_totals($total_rows, $order, $tax_display) {
    $field_option = $order->get_meta('_field_option');
    if ($field_option) {
        $sorted_total_rows = [];
        foreach ($total_rows as $key => $row) {
            $sorted_total_rows[$key] = $row;
            if ($key === 'payment_method') {
                $sorted_total_rows['field_option'] = array(
                    'label' => __('Юридична назва, ЄДРПОУ тощо для виставлення рахунку', 'woocommerce'),
                    'value' => esc_html($field_option),
                );
            }
        }
        $total_rows = $sorted_total_rows;
    }
    return $total_rows;
}

add_action('woocommerce_admin_order_data_after_billing_address', 'display_field_option_near_admin_order_billing_address', 10, 1);
function display_field_option_near_admin_order_billing_address($order) {
    $field_option = $order->get_meta('_field_option');
    if ($field_option) {
        echo '<div class="field-option">
            <p><strong>' . __('Юридична назва, ЄДРПОУ тощо для виставлення рахунку', 'woocommerce') . ':</strong> ' . esc_html($field_option) . '</p>
        </div>';
    }
}
