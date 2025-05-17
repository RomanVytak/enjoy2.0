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
$is_variants = isset($attributes['pa_variants']);


do_action('woocommerce_before_add_to_cart_form'); ?>

<div class="custom-woo-data flex-v" data-product-ajax>

  <?php

  // var_dump($attributes);
  ?>




  <div class="wrapper">
    <div class="wrapper_material">
      <div class="top">
        <p class="roboto-16-sb wrapper-name">Матеріал <span data-material-name class="name"></span> </p>

        <div class="params flex-v">
          <p class="roboto-16-sb params-title wrapper-name">Переваги Матеріалу</p>
          <div class="params-params flex-h material-params-wrapper hidden" data-material-params>
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

  <div class="wrapper">
    <div class="wrapper_sertyfikat">
      <div class="top">
        <p class="roboto-16-sb wrapper-name">Варіанти</p>
      </div>
      <div class="variations" data-variants></div>
    </div>
  </div>

  <div class="wrapper-attrs flex-v" data-attrs>
    <div class="wrapper">
      <div class="wrapper_attribut">
        <p class="roboto-16-sb name" data-title>Внутрішній чохол
          <span class="info">
            <span class="icon"></span>
          </span>
          :
        </p>
        <label>
          <input type="checkbox" name="inner_case" data-name>
          <span data-value>З чохлом</span>
        </label>
      </div>
    </div>
  </div>

</div>

<form class="variations_form cart" data-product-name="<?php echo esc_attr($product->get_name()); ?>" data-product-form-data action="<?php echo esc_url(apply_filters('woocommerce_add_to_cart_form_action', $product->get_permalink())); ?>" method="post" enctype='multipart/form-data' data-product_id="<?php echo absint($product->get_id()); ?>">
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
            <div class="buy">
              <img src="<?php echo getAssets('img/shares/pay_pr.svg')  ?>" alt="Приат24" title="Оплата частинами Приват24">
              <img src="<?php echo getAssets('img/shares/pay_mono.svg')  ?>" alt="МОНО" title="Оплата частинами Монобанк">
            </div>
            <div class="cta">
              <div class="spinner"></div>
              <button type="button" aria-label="Замовити" disabled data-sent-ajax>Замовити</button>
            </div>
            <button class="rotate" type="button"></button>
          </div>
        </div>
      </div>
    </div>
  <?php endif; ?>

</form>

<div class="consultation-form">
  <div class="custom-woo-data">
    <div class="wrapper">
      <?php echo do_shortcode('[contact-form-7 id="45e8339"]'); ?>
    </div>
  </div>
</div>

<?php
do_action('woocommerce_after_add_to_cart_form');
