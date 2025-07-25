<?php

/**
 * Thankyou page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/thankyou.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 8.1.0
 *
 * @var WC_Order $order
 */

defined('ABSPATH') || exit;
?>

<div class="woocommerce-order custom_order">

  <?php
  if ($order) :

    do_action('woocommerce_before_thankyou', $order->get_id());
  ?>

    <?php if ($order->has_status('failed')) : ?>

      <p class="woocommerce-notice woocommerce-notice--error woocommerce-thankyou-order-failed"><?php esc_html_e('Unfortunately your order cannot be processed as the originating bank/merchant has declined your transaction. Please attempt your purchase again.', 'woocommerce'); ?></p>

      <p class="woocommerce-notice woocommerce-notice--error woocommerce-thankyou-order-failed-actions">
        <a href="<?php echo esc_url($order->get_checkout_payment_url()); ?>" class="button pay"><?php esc_html_e('Pay', 'woocommerce'); ?></a>
        <?php if (is_user_logged_in()) : ?>
          <a href="<?php echo esc_url(wc_get_page_permalink('myaccount')); ?>" class="button pay"><?php esc_html_e('My account', 'woocommerce'); ?></a>
        <?php endif; ?>
      </p>

    <?php else : ?>

      <div class="custom_order-details">
        <?php wc_get_template('checkout/order-received.php', array('order' => $order)); ?>

        <ul class="custom_order--list">

          <li class="order">
            <p class="title">
              <?php esc_html_e('Order number:', 'woocommerce'); ?>
            </p>
            <p class="value"><?php echo $order->get_order_number(); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                              ?></p>
          </li>
          <div class="line"></div>

          <li class="date">
            <p class="title">
              <?php esc_html_e('Date:', 'woocommerce'); ?>
            </p>
            <p class="value"><?php echo wc_format_datetime($order->get_date_created()); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                              ?></p>
          </li>
          <div class="line"></div>

          <?php
            // remove false condition to show email
          if (false && is_user_logged_in() && $order->get_user_id() === get_current_user_id() && $order->get_billing_email()) : ?>
            <li class="email">
              <p class="title">
                <?php esc_html_e('Email:', 'woocommerce'); ?>
              </p>
              <p class="value"><?php echo $order->get_billing_email(); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                                ?></p>
            </li>
            <div class="line"></div>
          <?php endif; ?>

          <li class="total">
            <p class="title">
              <?php esc_html_e('Total:', 'woocommerce'); ?>
            </p>
            <p class="value"><?php echo $order->get_formatted_order_total(); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                              ?></p>
          </li>
          <?php
          // remove false condition to show payment method
          if ($order->get_payment_method_title() && false) : ?>
            <div class="line"></div>

            <li class="method method">
              <p class="title">
                <?php esc_html_e('Payment method:', 'woocommerce'); ?>
              </p>
              <p class="value"><?php echo wp_kses_post($order->get_payment_method_title()); ?></p>
            </li>
          <?php endif; ?>

        </ul>

        <a href="<?php echo site_url() ?>" class="custom_order--home">На головну</a>
      </div>

    <?php endif; ?>

    <?php // do_action( 'woocommerce_thankyou_' . $order->get_payment_method(), $order->get_id() );
    ?>
    <?php do_action('woocommerce_thankyou', $order->get_id()); ?>

  <?php else : ?>

    <?php wc_get_template('checkout/order-received.php', array('order' => false)); ?>

  <?php endif; ?>

</div>