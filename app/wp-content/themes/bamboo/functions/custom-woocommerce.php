<?php

function woocommerce_custom_content()
{

  if (is_singular('product')) {

    while (have_posts()) :
      the_post();
      wc_get_template_part('content', 'single-product');
    endwhile;
  } else {
?>

    <?php
    // remove sorting
    // remove_action('woocommerce_before_shop_loop', 'woocommerce_catalog_ordering', 30);

    // remove ress
    remove_action('woocommerce_before_shop_loop', 'woocommerce_result_count', 20);

    // remove empty woocommerce-notices-wrapper
    remove_action('woocommerce_before_shop_loop', 'woocommerce_output_all_notices', 10);
    ?>

    <?php if (woocommerce_product_loop()) : ?>

      <?php do_action('woocommerce_before_shop_loop'); ?>

      <?php //woocommerce_product_loop_start(); ?>
      <div class="grid w-full">
      <?php if (wc_get_loop_prop('total')) : ?>
        <?php while (have_posts()) : ?>
          <?php the_post(); ?>
          <?php
          // wp-content/themes/bamboo/woocommerce/content-product.php
          wc_get_template_part('content', 'product'); ?>
        <?php endwhile; ?>
      <?php endif; ?>
      </div>
      <?php //woocommerce_product_loop_end(); ?>

      <?php do_action('woocommerce_after_shop_loop'); ?>


    <?php
    else :
      do_action('woocommerce_no_products_found');
    endif;
  }
}

// 1-12 з 17 товарів
add_action('woocommerce_before_shop_loop', 'enjoy_echo_product_range', 5);

function enjoy_echo_product_range() {
  global $wp_query;

  $total = $wp_query->found_posts; // Загальна кількість товарів
  $per_page = $wp_query->query_vars['posts_per_page']; // Кількість товарів на сторінку
  $current_page = max(1, get_query_var('paged')); // Поточна сторінка

  $start = ($current_page - 1) * $per_page + 1;
  $end = min($start + $per_page - 1, $total);

  echo '<p class="product-count custom_product-count roboto-16-sb">' . $start . '-' . $end . ' з ' . $total . ' товарів</p>';
}


function get_custom_image_html($attachment_id, $main_image = false)
{

  if (empty($attachment_id)) {
    return '<div class="swiper-slide image cover">' . wc_placeholder_img() . '</div>';
  }
  $flexslider        = (bool) apply_filters('woocommerce_single_product_flexslider_enabled', get_theme_support('wc-product-gallery-slider'));
  $gallery_thumbnail = wc_get_image_size('gallery_thumbnail');
  $thumbnail_size    = apply_filters('woocommerce_gallery_thumbnail_size', array($gallery_thumbnail['width'], $gallery_thumbnail['height']));
  $image_size        = apply_filters('woocommerce_gallery_image_size', $flexslider || $main_image ? 'woocommerce_single' : $thumbnail_size);
  $full_size         = apply_filters('woocommerce_gallery_full_size', apply_filters('woocommerce_product_thumbnails_large_size', 'full'));
  $full_src          = wp_get_attachment_image_src($attachment_id, $full_size);
  $image             = wp_get_attachment_image(
    $attachment_id,
    $full_size,
    false,
    apply_filters(
      'woocommerce_gallery_image_html_attachment_image_params',
      array(
        'title'                   => _wp_specialchars(get_post_field('post_title', $attachment_id), ENT_QUOTES, 'UTF-8', true),
        'data-caption'            => _wp_specialchars(get_post_field('post_excerpt', $attachment_id), ENT_QUOTES, 'UTF-8', true),
        'data-src'                => esc_url($full_src[0]),
        'data-large_image'        => esc_url($full_src[0]),
        'class'                   => esc_attr($main_image ? 'wp-post-image' : ''),
      ),
      $attachment_id,
      $image_size,
      $main_image
    )
  );


  return '<div class="swiper-slide image cover"><a href="' . esc_url($full_src[0]) . '" target="_blank">' . $image . '</a></div>';
}

// Remove default thumbnail output
remove_action('woocommerce_before_shop_loop_item_title', 'woocommerce_template_loop_product_thumbnail', 10);

// Custom thumbnail size for WooCommerce loop
add_action('woocommerce_before_shop_loop_item_title', 'face_woocommerce_thumbnail_size', 10);
function face_woocommerce_thumbnail_size()
{
  // Set the custom size you want ('full', 'medium', 'large', or any custom size)
  echo woocommerce_get_product_thumbnail('large'); // Change 'medium' to the desired size
}


// buy one click
function add_buy_now_button()
{
  global $product;

  // Get the product ID
  $product_id = $product->get_id();

  // Create the Buy Now button
  echo '<a href="' . esc_url(add_query_arg('buy_now', $product_id, home_url('/checkout/'))) . '" class="single_by_now_button button custom border-black md buy-now-button">Швидка покупка</a>';
}
add_action('woocommerce_after_add_to_cart_button', 'add_buy_now_button', 30);

function handle_buy_now_button()
{
  if (isset($_GET['buy_now'])) {
    $product_id = absint($_GET['buy_now']);

    // Ensure the product exists
    if ($product_id && wc_get_product($product_id)) {
      // Clear the cart first
      WC()->cart->empty_cart();

      // Add the product to the cart
      WC()->cart->add_to_cart($product_id);

      // Redirect to the checkout page
      wp_safe_redirect(wc_get_checkout_url());
      exit;
    }
  }
}
add_action('template_redirect', 'handle_buy_now_button');



// кастомна ціна
function custom_subtotal_price()
{
  echo '<p class="custom-total-price-title font_title-m t">' . esc_html__('Subtotal:', 'woocommerce') . '</p> ';
  echo '<p class="custom-total-price-number font_title-s n">' . WC()->cart->get_cart_subtotal() . '</p> ';
}
function custom_to_checkout()
{
  echo '<a href="' . esc_url(wc_get_checkout_url()) . '" class="button checkout wc-forward custom back-black md">' . esc_html__('Checkout', 'woocommerce') . '</a>';
}


function custom_to_view_cart()
{
  echo '<a href="' . esc_url(wc_get_cart_url()) . '" class="button wc-forward custom border-black md">' . esc_html__('View cart', 'woocommerce') . '</a>';
}

// new - popular tag for product
function face_code_before_shop_loop_item()
{
  global $post, $product;

  echo '<div class="spetial_offer tags flex ">';
  if ($product->is_on_sale()) {
    echo '<span class="tag custom border-black sm onsale">' . esc_html__('Sale!', 'woocommerce') . '</span>';
  }
  if (get_field('new', $post->ID) == '1') {
    echo '<span class="tag custom border-black sm">New</span>';
  }
  if (get_field('popular', $post->ID) == '1') {
    echo '<span class="tag custom border-black sm">Bestseller</span>';
  }
  echo '</div>';
}
add_action('woocommerce_before_shop_loop_item', 'face_code_before_shop_loop_item');



// Add plus/minus buttons in mini cart
add_filter('woocommerce_widget_cart_item_quantity', 'custom_minicart_quantity', 10, 3);
function custom_minicart_quantity($html, $cart_item, $cart_item_key)
{
  $product = $cart_item['data'];
  $product_price = WC()->cart->get_product_price($product); // Get product price including tax

  $product_quantity = woocommerce_quantity_input(array(
    'input_name'  => "cart[{$cart_item_key}][qty]",
    'input_value' => $cart_item['quantity'],
    'max_value'   => $cart_item['data']->get_max_purchase_quantity(),
    'min_value'   => '1',
    'product_name' => $cart_item['data']->get_name(),
  ), $cart_item['data'], false);

  // Wrap the quantity input with plus/minus buttons
  return '<div class="custom-minicart-quantity">' . $product_quantity . '<span class="quantity custom-product-price font_body-l">' . $product_price . '</span></div>';
}

add_action('wp_ajax_woocommerce_update_cart', 'custom_woocommerce_update_cart');
add_action('wp_ajax_nopriv_woocommerce_update_cart', 'custom_woocommerce_update_cart');

function custom_woocommerce_update_cart()
{
  if (isset($_POST['cart_item_key']) && isset($_POST['quantity'])) {
    WC()->cart->set_quantity($_POST['cart_item_key'], $_POST['quantity'], true);
    WC()->cart->calculate_totals();
  }

  // Return fragments for mini cart update
  WC_AJAX::get_refreshed_fragments();
  wp_die();
}


function extract_key_from_string($str)
{
  if (preg_match('/cart\[(.*?)\]/', $str, $matches)) {
    return $matches[1];
  }
  return "";
}



/**
 * Change a currency symbol
 */
add_filter('woocommerce_currency_symbol', 'change_existing_currency_symbol', 10, 2);

function change_existing_currency_symbol($currency_symbol, $currency)
{
  switch ($currency) {
    case 'UAH':
      $currency_symbol = 'грн';
      break;
  }
  return '<span class="custom_symbol">' . $currency_symbol . '</span>';
}

// Change Add to Cart button text in WooCommerce loop
add_filter('woocommerce_product_add_to_cart_text', 'face_woocommerce_add_to_cart_text', 10, 2);

function face_woocommerce_add_to_cart_text($text, $product)
{
  if ($product->is_type('simple')) {
    // For simple products
    if (face_out_of_stock()) {
      return 'Переглянути товар';
    } else {
      return 'Додати в кошик'; // Default text
    }
  } elseif ($product->is_type('variable')) {
    // For variable products
    return 'Переглянути товар';
  } else {
    if (face_out_of_stock()) {
      return 'Переглянути товар';
    } else {
      return 'Додати в кошик'; // Default text
    }
  }
}



// chech if out of stock
function face_out_of_stock()
{
  global $post, $product;
  if ($product && !$product->is_in_stock() || $product && !$product->get_price()) :
    return true;
  else:
    return false;
  endif;
}

// order out of stock
add_filter('posts_clauses', 'order_by_stock_status');
function order_by_stock_status($posts_clauses)
{
  if (class_exists('WooCommerce')) {
    global $wpdb;
    // only change query on WooCommerce loops
    if (is_woocommerce() && (is_shop() || is_product_category() || is_product_tag() || is_product_taxonomy())) {
      $posts_clauses['join'] .= " INNER JOIN $wpdb->postmeta istockstatus ON ($wpdb->posts.ID = istockstatus.post_id) ";
      $posts_clauses['orderby'] = " istockstatus.meta_value ASC, " . $posts_clauses['orderby'];
      $posts_clauses['where'] = " AND istockstatus.meta_key = '_stock_status' AND istockstatus.meta_value <> '' " . $posts_clauses['where'];
    }
    return $posts_clauses;
  }
}


add_filter('woocommerce_pagination_args', 'custom_woocommerce_pagination_args');
function custom_woocommerce_pagination_args($args) {
    // Кількість сторінок, які відображаються перед і після поточної сторінки
    $args['end_size'] = 1; // Кількість сторінок на початку і в кінці пагінації
    $args['mid_size'] = 1; // Кількість сторінок перед і після поточної сторінки (між ними)
    return $args;
}

/*
// redirect thank you page
add_action( 'template_redirect', 'woo_custom_redirect_after_purchase' );
function woo_custom_redirect_after_purchase() {
	global $wp;
	if ( is_checkout() && !empty( $wp->query_vars['order-received'] ) ) {
		wp_redirect( '/thank-you/' );
		exit;
	}
}
*/


// fix price default variation
add_filter( 'woocommerce_variable_sale_price_html', 'wc_custom_show_sale_price', 10, 2 );
add_filter( 'woocommerce_variable_price_html', 'wc_custom_show_sale_price', 10, 2 );

function wc_custom_show_sale_price( $price, $product ) {
// Main Price
$prices = array( $product->get_variation_price( 'min', true ), $product->get_variation_price( 'max', true ) );
$price = $prices[0] !== $prices[1] ? sprintf( __( '%1$s', 'woocommerce' ), wc_price( $prices[0] ) ) : wc_price( $prices[0] );

// Sale Price
$prices = array( $product->get_variation_regular_price( 'min', true ), $product->get_variation_regular_price( 'max', true ) );
sort( $prices );
$saleprice = $prices[0] !== $prices[1] ? sprintf( __( '%1$s', 'woocommerce' ), wc_price( $prices[0] ) ) : wc_price( $prices[0] );

if ( $price !== $saleprice ) {
$price = '<del>' . $saleprice . '</del> <ins>' . $price . '</ins>';
}

return $price;
}



// Remove default up-sells and related products
remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_upsell_display', 15 );

// Add up-sells before related products
add_action( 'woocommerce_after_single_product', 'woocommerce_upsell_display', 15 );


// remove /product-category/ from url
add_filter('request', function( $vars ) {
	global $wpdb;
	if( ! empty( $vars['pagename'] ) || ! empty( $vars['category_name'] ) || ! empty( $vars['name'] ) || ! empty( $vars['attachment'] ) ) {
		$slug = ! empty( $vars['pagename'] ) ? $vars['pagename'] : ( ! empty( $vars['name'] ) ? $vars['name'] : ( !empty( $vars['category_name'] ) ? $vars['category_name'] : $vars['attachment'] ) );
		$exists = $wpdb->get_var( $wpdb->prepare( "SELECT t.term_id FROM $wpdb->terms t LEFT JOIN $wpdb->term_taxonomy tt ON tt.term_id = t.term_id WHERE tt.taxonomy = 'product_cat' AND t.slug = %s" ,array( $slug )));
		if( $exists ){
			$old_vars = $vars;
			$vars = array('product_cat' => $slug );
			if ( !empty( $old_vars['paged'] ) || !empty( $old_vars['page'] ) )
				$vars['paged'] = ! empty( $old_vars['paged'] ) ? $old_vars['paged'] : $old_vars['page'];
			if ( !empty( $old_vars['orderby'] ) )
	 	        	$vars['orderby'] = $old_vars['orderby'];
      			if ( !empty( $old_vars['order'] ) )
 			        $vars['order'] = $old_vars['order'];
		}
	}
	return $vars;
});


// remove /product/ from url
function wsp_remove_slug( $post_link, $post, $leavename ) {
  if ( 'product' != $post->post_type || 'publish' != $post->post_status ) {
      return $post_link;
  }
  $post_link = str_replace( '/product/', '/', $post_link );
  return $post_link;
}
add_filter( 'post_type_link', 'wsp_remove_slug', 10, 3 );

function change_slug_structure( $query ) {
  if ( ! $query->is_main_query() || 2 != count( $query->query ) || ! isset( $query->query['page'] ) ) {
      return;
  }
  if ( ! empty( $query->query['name'] ) ) {
      $query->set( 'post_type', array( 'post', 'product', 'page' ) );
  } elseif ( ! empty( $query->query['pagename'] ) && false === strpos( $query->query['pagename'], '/' ) ) {
      $query->set( 'post_type', array( 'post', 'product', 'page' ) );
      // We also need to set the name query var since redirect_guess_404_permalink() relies on it.
      $query->set( 'name', $query->query['pagename'] );
  }
}
add_action( 'pre_get_posts', 'change_slug_structure', 99 );


// <form class="variations_form cart"  enctype="multipart/form-data" data-product_id="83" data-product_variations="">
add_filter('woocommerce_available_variation', 'customize_product_variations', 10, 3);

function customize_product_variations($variation_data, $product, $variation) {
    // Приклад зміни атрибуту 'price_html'
    //$variation_data['price_html'] = '<span class="custom-price">Custom Price: ' . wc_price($variation->get_price()) . '</span>';

    // Додати новий ключ у data-product_variations
    if (isset($variation_data['attributes']['attribute_pa_material'])) {
        $material_slug = $variation_data['attributes']['attribute_pa_material'];

        // Отримуємо термін за slug у таксономії pa_material
        $material_term = get_term_by('slug', $material_slug, 'pa_material');

        if ($material_term) {
            $material_id = $material_term->term_id; // ID терміна
            // додаткові дані матеріалу
            $material_img = get_field('image', 'pa_material_'.$material_id);
            $variation_data['material_details']['id']=$material_term->term_id;
            $variation_data['material_details']['slug']=$material_term->slug;
            $variation_data['material_details']['name']=$material_term->name;
            $variation_data['material_details']['image']=$material_img;

            $colors = get_field('colors', 'pa_material_'.$material_id);
            foreach($colors as $color){
              $term = get_term($color, 'pa_kolory');
              $color_img = get_field('photo', 'pa_kolory_'.$color);
              $variation_data['material_colors'][$color]['name']=$term->name;
              $variation_data['material_colors'][$color]['image']=$color_img;
              $variation_data['material_colors'][$color]['id']=$color;
            }

            $options = get_field('options', 'pa_material_'.$material_id);
            $i=0;
            if (!empty($options) && is_array($options)) {
              foreach($options as $option){
                $variation_data['material_options'][$i]=$option;
                $i++;
              }
            }
        }

    }

    return $variation_data;
}

// replace product title
remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_title', 5);

add_action('woocommerce_single_product_summary', 'enjoy_woocommerce_single_title', 5);
function enjoy_woocommerce_single_title()
{
  global $post;
  echo '<div class="enjoy-product-title flex-v">';
  echo '<h1 class="product-title roboto-38">';
  echo esc_html($post->post_title); // Вивід заголовка
  echo '</h1>';
  if (function_exists('get_field')) {
    $rows = get_field('promo');
    $i = 0;
    if ($rows) {
      foreach ($rows as $row) {
        if ($i == 0) {
          echo '<div class="promo-box">';
          if ($row['url']) {
            echo '<a href="' . $row['url'] . '">';
          }
          echo '<div class="custom-pr-sale">';

          echo '<span>' . $row['name'] . '</span>';
          echo '</div>';
          if ($row['url']) {
            echo '</a>';
          }
          echo '</div>';
        }
        $i++;
      }
    }
  }
  echo '</div>';
}

// woocommerce_template_single_excerpt  replace excerpt to the_content
remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_excerpt', 20);

add_action('woocommerce_single_product_summary', 'enjoy_replace_excerpt_with_content', 20);
function enjoy_replace_excerpt_with_content() {
    global $post;
    echo '<div class="woocommerce-product-content">' . apply_filters('the_content', $post->post_content) . '</div>';
    if (function_exists('get_field')) {
      if(get_field('instruct_name')){
        echo'
        <div class="woocommerce-product-instruction">
          <div class="instruction-title">'.get_field('instruct_name').'</div>
          <div class="instruction-text">'.get_field('instruct_text').'</div>
        </div>
        ';
      }
    }
}