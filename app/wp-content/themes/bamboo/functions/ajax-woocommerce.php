<?php
// пфдключаємо скрипт
/* add_action( 'wp_enqueue_scripts', 'enqueue_product_ajax_script' );
function enqueue_product_ajax_script() {
    if ( is_product() ) {

        wp_enqueue_script(
            'product-variations-ajax',
            get_template_directory_uri() . '/js/product-variations.js', // або plugin_dir_url(__FILE__)
            array('jquery'),
            null,
            true
        );

        wp_localize_script( 'product-variations-ajax', 'product_ajax_data', array(
            'ajax_url'   => admin_url( 'admin-ajax.php' ),
            'product_id' => get_the_ID(),
        ));
    }
}
*/


// ajax обробка
add_action( 'wp_ajax_get_product_variations_json', 'get_product_variations_json' );
add_action( 'wp_ajax_nopriv_get_product_variations_json', 'get_product_variations_json' );

function get_product_variations_json() {
    $product_id = intval($_POST['product_id']);
    $product = wc_get_product($product_id);

    if ( ! $product || ! $product->is_type('variable') ) {
        wp_send_json_error('Invalid product');
    }

    $variations_data = array();
    $available_variations = $product->get_available_variations();

    foreach ( $available_variations as $variation ) {
        $variation_obj = wc_get_product( $variation['variation_id'] );
        $variation['display_price'] = $variation_obj->get_price();
        $variation['display_regular_price'] = $variation_obj->get_regular_price();
        // Можна додати додаткові поля тут
        $variations_data[] = $variation;
    }

    wp_send_json($variations_data);
}


// get gallery
add_action('wp_ajax_get_variation_images_html', 'get_variation_images_html');
add_action('wp_ajax_nopriv_get_variation_images_html', 'get_variation_images_html');

function get_variation_images_html() {
    $variation_id = intval($_POST['variation_id']);
    if (!$variation_id) {
        wp_send_json_error('Missing variation ID');
    }

    $variation = wc_get_product($variation_id);
    if (!$variation || !$variation->is_type('variation')) {
        wp_send_json_error('Invalid variation');
    }

    ob_start();

    $used_ids = [];
    $full_ids = [];
    $thumb_ids = [];
    // Головне зображення варіації
    $main_id = $variation->get_image_id();
    if ($main_id && wp_attachment_is_image($main_id)) {
        echo '<div class="swiper-slide image obj-contain" data-id="' . $variation_id . '">';
        echo wp_get_attachment_image($main_id, 'full', false, ['data-id' => $variation_id]);
        echo '</div>';
        $used_ids[] = $main_id;

        $full_ids[] = ['id' => $main_id, 'img' => wp_get_attachment_image_src( $main_id, 'full' )[0]];
        $thumb_ids[] = ['id' => $main_id, 'img' => wp_get_attachment_image_src( $main_id, 'thumbnail' )[0]];
    }

    // Додаткові зображення (WooCommerce Additional Variation Images)
    $raw = get_post_meta($variation_id, '_wc_additional_variation_images', true);
        //print_r($raw);

    if (!empty($raw)) {
        // Беремо перший елемент — це рядок з ID через кому
        //$ids_csv = $raw[0];
        //print_r($raw);
        // Перетворюємо в масив чисел
        $image_ids = array_map('intval', explode(',', $raw));
        
        foreach ($image_ids as $image_id) {
            if ($image_id && !in_array($image_id, $used_ids) && wp_attachment_is_image($image_id)) {
                echo '<div class="swiper-slide image obj-contain" data-id="' . $variation_id . '">';
                echo wp_get_attachment_image($image_id, 'full', false, ['data-id' => $variation_id]);
                echo '</div>';
                $used_ids[] = $image_id;

                $full_ids[] = ['id' => $image_id, 'img' => wp_get_attachment_image_src( $image_id, 'full' )[0]];
                $thumb_ids[] = ['id' => $main_id, 'img' => wp_get_attachment_image_src( $main_id, 'thumbnail' )[0]];
            }
        }
    }

    $html = ob_get_clean();

    wp_send_json_success([
        'html' => $html,
        'full_ids' => $full_ids,
        'thumb_ids' => $thumb_ids,
    ]);
}