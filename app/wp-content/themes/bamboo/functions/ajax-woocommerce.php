<?php
// пфдключаємо скрипт
add_action( 'wp_enqueue_scripts', 'enqueue_product_ajax_script' );
function enqueue_product_ajax_script() {
    if ( is_product() ) {
/*
        wp_enqueue_script(
            'product-variations-ajax',
            get_template_directory_uri() . '/js/product-variations.js', // або plugin_dir_url(__FILE__)
            array('jquery'),
            null,
            true
        );
*/
        wp_localize_script( 'product-variations-ajax', 'product_ajax_data', array(
            'ajax_url'   => admin_url( 'admin-ajax.php' ),
            'product_id' => get_the_ID(),
        ));
    }
}



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
