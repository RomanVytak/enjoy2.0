<?php

/**
 * Order Customer Details
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/order/order-details-customer.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 8.7.0
 */

defined('ABSPATH') || exit;

$show_shipping = ! wc_ship_to_billing_address_only() && $order->needs_shipping_address();
?>
<div class="custom_order-customer-details">


  <div class="custom_order-customer-details--row">

    <h3 class="title roboto-28"><?php esc_html_e('Деталі клієнта', 'woocommerce'); ?></h3>

    <div class="custom_order-customer-details--data">

      <?php
      $country  = $order->get_shipping_country(); // наприклад, UA
      $state    = $order->get_shipping_state();   // наприклад, 46
      $wc_countries = new WC_Countries();
      $states   = $wc_countries->get_states($country);

      // Отримуємо назву області
      $state_name = isset($states[$state]) ? $states[$state] : $state;

      $address_parts = [
        $order->get_shipping_address_1(),
        $order->get_shipping_address_2(),
        $order->get_shipping_city(),
        $state_name,
        $order->get_shipping_postcode()
      ];

      $clean_address = implode(', ', array_filter($address_parts));
      ?>
      <div class="row">
        <p class="row-data">Адреса</p>
        <p class="row-value">
          <?php echo esc_html($clean_address); ?>
        </p>
      </div>

      <?php if ($order->get_shipping_phone()) : ?>
        <div class="row">
          <p class="row-data">Мобільний телефон</p>
          <p class="row-value">
            <?php echo esc_html($order->get_billing_phone()); ?>
          </p>
        </div>
      <?php endif; ?>

      <?php if ($order->get_billing_email()) : ?>
        <div class="row">
          <p class="row-data">Email</p>
          <p class="row-value">
            <?php echo esc_html($order->get_billing_email()); ?>
          </p>
        </div>
      <?php endif; ?>

      <?php
      /**
       * Action hook fired after an address in the order customer details.
       *
       * @since 8.7.0
       * @param string $address_type Type of address (billing or shipping).
       * @param WC_Order $order Order object.
       */
      do_action('woocommerce_order_details_after_customer_address', 'billing', $order);
      ?>
    </div>
  </div>

  <?php do_action('woocommerce_order_details_after_customer_details', $order);
  ?>

</div>