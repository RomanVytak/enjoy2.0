<?php

/**
 * Variable product add to cart
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/add-to-cart/variable.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 9.6.0
 */

defined('ABSPATH') || exit;

global $product;

$attribute_keys  = array_keys($attributes);
$variations_json = wp_json_encode($available_variations);
$variations_attr = function_exists('wc_esc_json') ? wc_esc_json($variations_json) : _wp_specialchars($variations_json, ENT_QUOTES, 'UTF-8', true);
$is_sertyfikat = isset($attributes['pa_sertyfikaty']);


do_action('woocommerce_before_add_to_cart_form'); ?>

<div class="custom-woo-data flex-v loading" data-product-ajax>


  <?php if ($is_sertyfikat) { ?>
    <div class="wrapper">
      <div class="wrapper_sertyfikat">
        <div class="top">
          <p class="roboto-16-sb wrapper-name">Варіанти</p>
        </div>
        <div class="variations" data-sertyfikat></div>
      </div>
    </div>
  <?php } else { ?>

    <div class="wrapper">
      <div class="wrapper_material">
        <div class="top">
          <p class="roboto-16-sb wrapper-name">Матеріал <span data-material-name class="name"></span> </p>

          <div class="params flex-v">
            <p class="roboto-16-sb params-title wrapper-name">Переваги Матеріалу</p>
            <div class="params-params flex-h hidden" data-material-params>
              <div class="param">
              </div>
            </div>
          </div>
        </div>
        <div class="materials" data-materials>
        </div>
      </div>
      <div class="wrapper_color">
        <div class="top">
          <p class="roboto-16-sb wrapper-name">Колір <span data-color-name></span> </p>
        </div>
        <div class="colors" data-colors></div>
      </div>
    </div>
    <div class="wrapper">
      <div class="wrapper_sizes">
        <div class="top">
          <p class="roboto-16-sb wrapper-name">Розмір </p>
          <div class="params flex-h" data-size-params></div>
        </div>
        <div class="sizes" data-sizes></div>
        <div class="description" data-size-description></div>
      </div>
    </div>
  <?php } ?>

</div>

<form class="variations_form cart" data-product-type="<?php echo $is_sertyfikat ? 'sertyfikat' : "product" ?>" data-product-name="<?php echo esc_attr($product->get_name()); ?>" data-product-form-data action="<?php echo esc_url(apply_filters('woocommerce_add_to_cart_form_action', $product->get_permalink())); ?>" method="post" enctype='multipart/form-data' data-product_id="<?php echo absint($product->get_id()); ?>" data-product_variations="<?php echo $variations_attr; // WPCS: XSS ok.
                                                                                                                                                                                                                                                                                                                                                                                                                                                          ?>">
  <?php do_action('woocommerce_before_variations_form'); ?>

  <?php if (empty($available_variations) && false !== $available_variations) : ?>
    <p class="stock out-of-stock"><?php echo esc_html(apply_filters('woocommerce_out_of_stock_message', __('This product is currently out of stock and unavailable.', 'woocommerce'))); ?></p>
  <?php else : ?>



    <input type="hidden" name="attribute_pa_rozmiry" value="">
    <input type="hidden" name="attribute_pa_material" value="">
    <input type="hidden" name="quantity" value="1">
    <input type="hidden" name="product_id" value="<?php echo absint($product->get_id()); ?>">
    <input type="hidden" name="custom_data[color]">
    <input type="hidden" name="variation_id" value="">

    <div class="custom-woo-data">
      <div class="wrapper">
        <div class="wrapper_sent">
          <div class="wrapper_sent_price" data-custom-price></div>

          <div class="wrapper_sent_nav">
            <div class="spinner"></div>
            <button type="button" aria-label="Замовити" disabled data-sent-ajax>Замовити</button>
          </div>
        </div>
      </div>
    </div>
  <?php endif; ?>

</form>

<?php
do_action('woocommerce_after_add_to_cart_form');
