<?php

/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 9.4.0
 */

defined('ABSPATH') || exit;

global $product;

// Check if the product is a valid WooCommerce product and ensure its visibility before proceeding.
if (! is_a($product, WC_Product::class) || ! $product->is_visible()) {
  return;
}
?>

<?php
$product_cats = wp_get_post_terms($product->get_id(), 'product_cat');
if (! empty($product_cats) && ! is_wp_error($product_cats)) {
  // Отримати першу категорію (якщо їх декілька)
  $main_category = $product_cats[0];
  // Вивести назву категорії
  $product_category = $main_category->name;
  $product_category_id = $product_cats[0]->term_id;
}
$color = get_field('product_color', 'product_cat_' . $product_category_id);
?>

<div class="product-item">
  <?php
  if (function_exists('get_field') && get_field('promo')) {
    $row = get_field('promo');
    $name = $row['name'] ?? false;
    $ico = $row['ico'] == 'no' ? false : $row['ico'] ?? false;
    $url = $row['url'] ?? false;

    if ($name || $ico) {
      echo '<div class="product-item-sale flex-c roboto-16-sb">';
      echo $url ? '<a href="' . $url . '">' : '';
      echo '<div class="custom-pr-sale">';
      echo $ico ? '<img src="' . getAssets('img/shares/') . $ico . '.svg">' : '';
      echo $name ? '<span>' . $name . '</span>' : '';
      echo '</div>';
      echo $url ? '</a>' : '';
      echo '</div>';
    }
  }
  ?>
  <div class="product-item-slider flex w-full">
    <div class="product-item-slider-navs flex w-full h-between">
      <button class="nav prev flex-c">
        <div class="icon icon_arrow_s left"></div>
      </button>
      <button class="nav next flex-c">
        <div class="icon icon_arrow_s right"></div>
      </button>

    </div>
    <a href="<?php echo esc_url(get_permalink($product->get_id())); ?>" class="swiper swiper-images" data-product-images>
      <div class="swiper-wrapper">

        <div class="swiper-slide product-item-icon obj-contain">
          <?php echo $product->get_image(); ?>
          <?php if ($color) { ?>
            <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
          <?php } ?>
        </div>

        <?php
        $gallery_image_ids = $product->get_gallery_image_ids(); // Отримуємо всі ID зображень із галереї продукту

        if (!empty($gallery_image_ids)) {
          foreach ($gallery_image_ids as $image_id) {
            $image_url = wp_get_attachment_image_url($image_id, 'full'); // Отримуємо URL зображення
        ?>
            <div class="swiper-slide product-item-icon obj-contain">
              <?php echo '<img src="' . esc_url($image_url) . '" alt="' . esc_attr(get_post_meta($image_id, '_wp_attachment_image_alt', true)) . '" />'; ?>
              <?php if ($color) { ?>
                <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
              <?php } ?>
            </div>
        <?php
          }
        }
        ?>

      </div>
    </a>
  </div>

  <a href="<?php echo esc_url(get_permalink($product->get_id())); ?>" class="product-item-info flex-v">
    <p class="name roboto-38"><?php echo $product->get_name(); ?></p>
    <p class="category roboto-16-sb"><?php echo $product_category; ?></p>
  </a>

  <div class="product-item-price flex-v">
    <div class="flex w-full h-between">
      <p class="data-price">
        <?php
        if ($product->is_type('variable')) {
          $default_attributes = $product->get_default_attributes();

          if (empty($default_attributes)) {
            // Немає варіацій за замовчуванням – вивести діапазон цін
            $prices = $product->get_variation_prices(true);
            $min_price = current($prices['price']);
            $max_price = end($prices['price']);

            if ($min_price !== $max_price) {
              echo '<span class="price price_html">' . wc_price($min_price) . ' - ' . wc_price($max_price) . '</span>';
            } else {
              echo '<span class="price price_html">' . wc_price($min_price) . '</span>';
            }
          } else {
            // Є варіація за замовчуванням — шукаємо її серед доступних
            $variations = $product->get_available_variations();
            $variation_id = null;

            foreach ($variations as $variation) {
              $match = true;
              foreach ($default_attributes as $key => $value) {
                $attribute_key = 'attribute_' . $key;
                if (!isset($variation['attributes'][$attribute_key]) || $variation['attributes'][$attribute_key] !== $value) {
                  $match = false;
                  break;
                }
              }

              if ($match) {
                $variation_id = $variation['variation_id'];
                break;
              }
            }

            if ($variation_id) {
              $variation_product = wc_get_product($variation_id);
              $regular_price = (float) $variation_product->get_regular_price();
              $sale_price = (float) $variation_product->get_sale_price();

              echo '<span class="price_html">';
              echo wc_price($variation_product->get_price());
              echo '</span>';

              if ($sale_price && $regular_price > $sale_price) {
                $discount_percent = round((($regular_price - $sale_price) / $regular_price) * 100);
                $saving_money = $regular_price - $sale_price;

                echo '<span class="discount">';
                echo '<span class="discount-top"><span class="discount-percent">-' . $discount_percent . '%</span>';
                echo '<span class="discount-price">' . wc_price($regular_price) . '</span></span>';
                echo '<span class="discount-saving">Економія ' . wc_price($saving_money) . '</span>';
                echo '</span>';
              }
            }
          }
        } else {
          // Простий продукт
          $regular_price = (float) $product->get_regular_price();
          $sale_price = (float) $product->get_sale_price();

          echo '<span class="price_html">';
          echo $product->get_price_html();
          echo '</span>';

          if ($sale_price && $regular_price > $sale_price) {
            $discount_percent = round((($regular_price - $sale_price) / $regular_price) * 100);
            $saving_money = $regular_price - $sale_price;

            echo '<span class="discount">';
            echo '<span class="discount_percent">-' . $discount_percent . '%</span>';
            echo '<span class="full_price">' . wc_price($regular_price) . '</span>';
            echo '<span class="saving_money">Економія ' . wc_price($saving_money) . '</span>';
            echo '</span>';
          }
        }
        ?>
      </p>
    </div>

    <div class="payment-icons">
      <a href="<?php echo esc_url(get_permalink($product->get_id())); ?>" class="link roboto-16-b flex-c" title="Обрати дизайн">
        Обрати дизайн
      </a>
    </div>

  </div>
</div>