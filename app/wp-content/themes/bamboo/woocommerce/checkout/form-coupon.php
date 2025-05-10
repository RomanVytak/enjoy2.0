<?php

/**
 * Checkout coupon form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-coupon.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 7.0.1
 */

defined('ABSPATH') || exit;

if (! wc_coupons_enabled()) { // @codingStandardsIgnoreLine.
  return;
}

?>

<form class="checkout_coupon woocommerce-form-coupon custom-coupon-form" method="post">

  <div class="form-title">
    <p><?php esc_html_e('If you have a coupon code, please apply it below.', 'woocommerce'); ?></p>
  </div>
  <div class="form-data">
    <label class="form-row">
      <input type="text" name="coupon_code" class="input-text" placeholder="<?php esc_attr_e('Coupon code', 'woocommerce'); ?>" id="coupon_code" value="" />
    </label>
    <div class="cta">
      <div class="spinner"></div>
      <button type="submit" class="button<?php echo esc_attr(wc_wp_theme_get_element_class_name('button') ? ' ' . wc_wp_theme_get_element_class_name('button') : ''); ?>" name="apply_coupon" value="<?php esc_attr_e('Apply coupon', 'woocommerce'); ?>"><?php esc_html_e('Apply coupon', 'woocommerce'); ?></button>
    </div>
  </div>
</form>