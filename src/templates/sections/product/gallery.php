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
      <div class="swiper lg">
        <div class="swiper-wrapper">
          <?php
          $html = get_custom_image_html($post_thumbnail_id, true);
          echo apply_filters('woocommerce_single_product_image_thumbnail_html', $html, $post_thumbnail_id); // phpcs:disable WordPress.XSS.EscapeOutput.OutputNotEscaped
          do_action('woocommerce_product_thumbnails');


          // Якщо це варіативний товар, додаємо зображення варіантів
          /*
          if ($product && $product->is_type('variable')) {
            $available_variations = $product->get_children(); // Отримує всі варіанти

            foreach ($available_variations as $variation_id) {
                $variation = wc_get_product($variation_id);

                // Отримуємо ID зображення варіації
                $variation_image_id = $variation->get_image_id();

                // Перевіряємо, чи задане головне зображення
                if ($variation_image_id && wp_attachment_is_image($variation_image_id) && $post_thumbnail_id!=$variation_image_id) {
                    $img_attrs = array(
                        'data-id' => $variation_id,
                        // 'class' => 'custom-image-class', // за потреби
                    );

                    $variation_image_html = wp_get_attachment_image($variation_image_id, 'full', false, $img_attrs);

                    echo '<div class="swiper-slide image obj-contain" data-id="' . $variation_id . '">';
                    echo $variation_image_html;
                    echo '</div>';
                }
            }
          }
          */
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
/*
          foreach ($available_variations as $variation_id) {
            $variation = wc_get_product($variation_id);

            // Отримуємо ID зображення варіації
            $variation_image_id = $variation->get_image_id();

            // Перевіряємо, чи задане головне зображення
            if ($variation_image_id && wp_attachment_is_image($variation_image_id) && $post_thumbnail_id!=$variation_image_id) {
                $img_attrs = array(
                    'data-id' => $variation_id,
                    // 'class' => 'custom-image-class', // за потреби
                );

                $variation_image_html = wp_get_attachment_image($variation_image_id, 'full', false, $img_attrs);

                echo '<div class="swiper-slide image obj-contain" data-id="' . $variation_id . '">';
                echo $variation_image_html;
                echo '</div>';
            }
        }*/
          ?>
        </div>
      </div>

    </div>