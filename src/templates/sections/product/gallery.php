    <?php
    /**
     * Hook: woocommerce_before_single_product_summary.
     *
     * @hooked woocommerce_show_product_sale_flash - 10
     * @hooked woocommerce_show_product_images - 20
     */
    //do_action( 'woocommerce_before_single_product_summary' );
    ?>
    <?php
    /**
     * Single Product Image
     *
     * This template can be overridden by copying it to yourtheme/woocommerce/single-product/product-image.php.
     *
     * HOWEVER, on occasion WooCommerce will need to update template files and you
     * (the theme developer) will need to copy the new files to your theme to
     * maintain compatibility. We try to do this as little as possible, but it does
     * happen. When this occurs the version of the template file will be bumped and
     * the readme will list any important changes.
     *
     * @see     https://woocommerce.com/document/template-structure/
     * @package WooCommerce\Templates
     * @version 9.0.0
     */

    defined('ABSPATH') || exit;

    // Note: `wc_get_gallery_image_html` was added in WC 3.3.2 and did not exist prior. This check protects against theme overrides being used on older versions of WC.
    if (! function_exists('wc_get_gallery_image_html')) {
      return;
    }

    global $product;
    $post_thumbnail_id = $product->get_image_id();

    ?>
    <div class="woocommerce-gallery">
      <div class="promo-box">
        <?php if (function_exists('get_field')) {
          $rows = get_field('promo');
          $i = 0;
          if ($rows) {
            foreach ($rows as $row) {
              echo '<div class="product-item-sale flex-c roboto-18-sb">';
              if ($row['url']) {
                echo '<a href="' . $row['url'] . '">';
              }
              echo '<div class="custom-pr-sale">';
              if ($row['ico']['url']) {
                echo '<img src="' . $row['ico']['url'] . '" alt="icon" />';
              }
              echo '<span>' . $row['name'] . '</span>';
              echo '</div>';
              if ($row['url']) {
                echo '</a>';
              }
              echo '</div>';
              $i++;
            }
          }
        } ?>
      </div>
      <div class="swiper lg">
        <div class="swiper-wrapper">
          <?php
          $html = get_custom_image_html($post_thumbnail_id, true);
          echo apply_filters('woocommerce_single_product_image_thumbnail_html', $html, $post_thumbnail_id); // phpcs:disable WordPress.XSS.EscapeOutput.OutputNotEscaped
          do_action('woocommerce_product_thumbnails');
          ?>
        </div>

        <div class="swiper-slide-navs flex w-full h-between">
          <button class="nav prev flex-c">
            <div class="icon icon_arrow_s left"></div>
          </button>
          <button class="nav next flex-c">
            <div class="icon icon_arrow_s right"></div>
          </button>

        </div>
      </div>
      <div class="swiper sm">
        <div class="swiper-wrapper">
          <?php
          $html = get_custom_image_html($post_thumbnail_id, true);
          echo apply_filters('woocommerce_single_product_image_thumbnail_html', $html, $post_thumbnail_id); // phpcs:disable WordPress.XSS.EscapeOutput.OutputNotEscaped
          do_action('woocommerce_product_thumbnails');
          ?>
        </div>
      </div>

    </div>