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
    return '<div class="swiper-slide image obj-contain">' . wc_placeholder_img() . '</div>';
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


  return '<div class="swiper-slide image obj-contain">' . $image . '</div>';
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
  echo '<p class="woocommerce-mini-cart__total total roboto-28"><strong>Разом</strong>' . WC()->cart->get_cart_subtotal() . '</p>';
}
function custom_to_checkout()
{
  echo '<p class="woocommerce-mini-cart__buttons buttons"><a href="' . esc_url(wc_get_checkout_url()) . '" class="button checkout wc-forward">Оформити замовлення</a></p>';
}
remove_action('woocommerce_widget_shopping_cart_total', 'woocommerce_widget_shopping_cart_subtotal', 10);
remove_action('woocommerce_widget_shopping_cart_buttons', 'woocommerce_widget_shopping_cart_button_view_cart', 10);
remove_action('woocommerce_widget_shopping_cart_buttons', 'woocommerce_widget_shopping_cart_proceed_to_checkout', 20);
add_action('woocommerce_widget_shopping_cart_buttons', 'custom_to_checkout', 21);
add_action('woocommerce_widget_shopping_cart_total', 'custom_subtotal_price', 11);



function custom_to_view_cart()
{
  echo '<a href="' . esc_url(wc_get_cart_url()) . '" class="button wc-forward custom border-black md">Переглянути кошик</a>';
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
  return $currency_symbol;
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


// get default variation ID: wc_get_default_variation($product->get_id());
function wc_get_default_variation( $product_id = false, $return = 'id' ) {
  // do not use wc_get_product() to bypass some limits
  $product = WC()->product_factory->get_product( $product_id );

  if ( empty( $product ) || ! $product instanceof WC_Product_Variable ) {
      return 0;
  }

  if ( $product->has_child() ) {
      $attributes = $product->get_default_attributes();

      if ( ! empty( $attributes ) ) {
          $check_count      = true;
          $attributes_count = count( $attributes );

          // get in-stock (if enabled in wc options) and visible variations
          $variations = $product->get_available_variations( 'objects' );

          foreach ( $variations as $variation ) {
              $variation_attributes = $variation->get_attributes();

              // check count for first time
              // if not match, it means that user do not set default value for some variation attrs
              if ( $check_count && $attributes_count !== count( $variation_attributes ) ) {
                  break;
              }

              // no need to check count anymore
              $check_count = false;

              // remove 'any' attrs (empty values)
              $variation_attributes = array_filter( $variation_attributes );

              // add 'any' attrs with default value
              $variation_attributes = wp_parse_args( $variation_attributes, $attributes );

              // check is default
              if ( $variation_attributes == $attributes ) {
                  if ( $return === 'id' ) {
                      return $variation->get_id();
                  }

                  return $variation;
              }
          }
      }
  }

  return 0;
}

// <form class="variations_form cart"  enctype="multipart/form-data" data-product_id="83" data-product_variations="">
add_filter('woocommerce_available_variation', 'customize_product_variations', 10, 3);

function customize_product_variations($variation_data, $product, $variation) {
    // Приклад зміни атрибуту 'price_html'
    //$variation_data['price_html'] = '<span class="custom-price">Custom Price: ' . wc_price($variation->get_price()) . '</span>';

    $default_variation_id = wc_get_default_variation($product->get_id());
    if ( $default_variation_id && $variation->get_id() == $default_variation_id ) {
      $variation_data['is_default'] = true;
    } else {
        $variation_data['is_default'] = false;
    }

    // Визначаємо ціну без знижки і знижкову ціну
    $regular_price = (float) $variation->get_regular_price();
    $sale_price = (float) $variation->get_sale_price();

    // Якщо є знижка
    if ( $regular_price > 0 && $sale_price > 0 && $sale_price < $regular_price ) {
        $saved = $regular_price - $sale_price;
        $discount_percent = round( ( $saved / $regular_price ) * 100 );

        $variation_data['discount_percent'] = $discount_percent;
        $variation_data['money_saved'] = $saved;
    } else {
        $variation_data['discount_percent'] = 0;
        $variation_data['money_saved'] = 0;
    }

    // Додати новий ключ у data-product_variations
    if (isset($variation_data['attributes']['attribute_pa_sertyfikaty'])) {
      $sertyfikaty_slug = $variation_data['attributes']['attribute_pa_sertyfikaty'];

      // Отримуємо термін за slug у таксономії pa_material
      $sertyfikaty_term = get_term_by('slug', $sertyfikaty_slug, 'pa_sertyfikaty');
      if ($sertyfikaty_term) {
        $sertyfikaty_id = $sertyfikaty_term->term_id; // ID терміна
        // додаткові дані сертифікату
        $sertyfikaty_img = get_field('image', 'pa_sertyfikaty_'.$sertyfikaty_id);
        $variation_data['sertyfikat_details']['id']=$sertyfikaty_term->term_id;
        $variation_data['sertyfikat_details']['slug']=$sertyfikaty_term->slug;
        $variation_data['sertyfikat_details']['name']=$sertyfikaty_term->name;
        $variation_data['sertyfikat_details']['image']=$sertyfikaty_img;
      }

    }

    /*if (isset($variation_data['attributes']['attribute_pa_rozmiry'])) {
      $rozmiry_slug = $variation_data['attributes']['attribute_pa_rozmiry'];

      // Отримуємо термін за slug у таксономії pa_material
      $rozmiry_term = get_term_by('slug', $rozmiry_slug, 'pa_rozmiry');
      if ($rozmiry_term) {
        $rozmiry_id = $rozmiry_term->term_id; // ID терміна
        // додаткові дані матеріалу
        $variation_data['rozmiry_details']['id']=$rozmiry_term->term_id;
        $variation_data['rozmiry_details']['slug']=$rozmiry_term->slug;
        $variation_data['rozmiry_details']['name']=$rozmiry_term->name;
        $variation_data['rozmiry_details']['height']=get_field('height', 'pa_rozmiry_'.$rozmiry_id);
        $variation_data['rozmiry_details']['width']=get_field('width', 'pa_rozmiry_'.$rozmiry_id);
        $variation_data['rozmiry_details']['depth']=get_field('depth', 'pa_rozmiry_'.$rozmiry_id);
        $variation_data['rozmiry_details']['volume']=get_field('volume', 'pa_rozmiry_'.$rozmiry_id);

      }

    }*/

    if (isset($variation_data['attributes']['attribute_pa_material'])) {
        $material_slug = $variation_data['attributes']['attribute_pa_material'];

        // Вилучаємо непотрібні дані з масиву
        unset($variation_data['image']);
        unset($variation_data['price_html']);

        // Отримуємо термін за slug у таксономії pa_material
        $material_term = get_term_by('slug', $material_slug, 'pa_material');

        if ($material_term) {
            $full_size = '';
            $material_id = $material_term->term_id; // ID терміна
            // додаткові дані матеріалу
            $material_img = get_field('image', 'pa_material_'.$material_id);


          if (!empty($material_img) && isset($material_img['url'])) {
              $full_size = esc_url($material_img['url']);
          }

            $variation_data['material_details']['id']=$material_term->term_id;
            $variation_data['material_details']['slug']=$material_term->slug;
            $variation_data['material_details']['name']=$material_term->name;
            $variation_data['material_details']['id']=$material_term->term_id;
            $variation_data['material_details']['description'] = esc_html(term_description($material_term->term_id, 'pa_material'));
            // $variation_data['material_details']['image']=$material_img;
            $variation_data['material_details']['full_size']=$full_size;
            $variation_data['material_details']['image_html']= isset($material_img['id']) ? wp_get_attachment_image($material_img['id']) : '';
            $variation_data['material_details']['video']=get_field('video', 'pa_material_'.$material_id);

            $colors = get_field('colors', 'pa_material_'.$material_id);
            foreach($colors as $color){
              $term = get_term($color, 'pa_kolory');
              $color_img = get_field('photo', 'pa_kolory_'.$color);


              if (!empty($color_img) && isset($color_img['url'])) {
                $color_full_size = esc_url($color_img['url']);
              }else{
                $color_full_size ='';
              }

              $variation_data['material_colors'][$color]['name']=$term->name;
              //$variation_data['material_colors'][$color]['image']=$color_img;
              $variation_data['material_colors'][$color]['full_size']=$color_full_size;
              $variation_data['material_colors'][$color]['id']=$color;
              $variation_data['material_colors'][$color]['image_html']= isset($color_img['id']) ? wp_get_attachment_image($color_img['id']) : '';

            }

            $options = get_field('options', 'pa_material_'.$material_id);
            $i=0;
            if (!empty($options) && is_array($options)) {
              foreach($options as $option){
                $variation_data['material_details']['options'][$i]=$option;
                $i++;
              }
            }
        }

    }

    if (isset($variation_data['dimensions'])){
      $volume = get_post_meta($variation->get_id(), '_volume', true);
      if ( $volume ) {
          $variation_data['dimensions']['volume'] = $volume;
      }
    }
    if (isset($variation_data)){
      $dimensions_description = get_post_meta($variation->get_id(), '_dimensions_description', true);
      if ( $dimensions_description ) {
          $variation_data['dimensions_description'] = $dimensions_description;
      }
    }



    // Додати новий ключ у data-product_variations
    if (isset($variation_data['attributes']['attribute_pa_variants'])) {
      $variants_slug = $variation_data['attributes']['attribute_pa_variants'];

      // Отримуємо термін за slug у таксономії pa_material
      $variants_term = get_term_by('slug', $variants_slug, 'pa_variants');
      if ($variants_term) {
        $variants_id = $variants_term->term_id; // ID терміна
        // додаткові дані матеріалу
        $variants_img = get_field('image', 'pa_variants_'.$variants_id);
        $variation_data['variants_details']['id']=$variants_term->term_id;
        $variation_data['variants_details']['slug']=$variants_term->slug;
        $variation_data['variants_details']['name']=$variants_term->name;
        // $variation_data['variants_details']['image']=$variants_img;
        if ( isset( $variants_img['id'] ) && absint( $variants_img['id'] ) > 0 ) {
            $variation_data['variants_details']['image_html'] = wp_get_attachment_image( $variants_img['id'] );
        } else {
            $variation_data['variants_details']['image_html'] = ''; // або запасне зображення
        }
        $variation_data['variants_details']['title'] = get_field('title', 'pa_variants_'.$variants_id);
        // $variation_data['variants_details']['description'] = esc_html(term_description($variants_term->term_id, 'pa_print'));
      }

    }


    // Універсальне розширення для всіх атрибутів
    foreach ($variation_data['attributes'] as $attr_key => $attr_value) {
      // Перевіряємо, чи це користувацький атрибут (таксономія)
      if (strpos($attr_key, 'attribute_pa_') === 0) {
          $taxonomy = str_replace('attribute_', '', $attr_key); // наприклад pa_material
          $term = get_term_by('slug', $attr_value, $taxonomy);

          if ($term) {
              $term_id = $term->term_id;

              // Базові дані терміна
              $variation_data['attributes_details'][$taxonomy] = [
                  'id'    => $term_id,
                  'slug'  => $term->slug,
                  'name'  => $term->name,
                  'description' => term_description($term_id, $taxonomy),
              ];

              // Якщо є ACF-зображення (припускаємо, що воно називається 'image')
              $img = get_field('image', $taxonomy . '_' . $term_id);
              if (!empty($img) && isset($img['url'])) {
                  $variation_data['attributes_details'][$taxonomy]['image'] = esc_url($img['url']);
                  $variation_data['attributes_details'][$taxonomy]['image_html'] = isset($img['id']) ? wp_get_attachment_image($img['id']) : '';
              }

              // Якщо є додаткові поля (опціонально: додай свої назви ACF-полів)
              /* $acf_fields = ['title', 'video', 'colors', 'options']; // додавай, що хочеш
              foreach ($acf_fields as $field) {
                  $acf_value = get_field($field, $taxonomy . '_' . $term_id);
                  if (!empty($acf_value)) {
                      $variation_data['attributes_details'][$taxonomy][$field] = $acf_value;
                  }
              }*/
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

  if (!empty($post->post_content)) {
    echo '<div class="woocommerce-product-content">' . apply_filters('the_content', $post->post_content) . '</div>';
  }

  if (function_exists('get_field')) {
    if (get_field('instruct_text')) {
      echo '
        <div class="woocommerce-product-instruction">
          <div class="instruction-text">' . get_field('instruct_text') . '</div>
        </div>
        ';
    }
  }
}

// переклад сортувалки
add_filter( 'woocommerce_catalog_orderby', 'custom_woocommerce_catalog_orderby' );
function custom_woocommerce_catalog_orderby( $sortby ) {
    $sortby['menu_order'] = 'Сортування за замовчуванням';
    $sortby['popularity'] = 'За популярністю';
    $sortby['rating'] = 'За середньою оцінкою';
    $sortby['date'] = 'Спочатку нові';
    $sortby['price'] = 'За ціною: від дешевих';
    $sortby['price-desc'] = 'За ціною: від дорогих';

    return $sortby;
}



// кастомне поле об'єм
/*add_action('woocommerce_product_options_dimensions', 'add_volume_field_to_product');

function add_volume_field_to_product() {
    woocommerce_wp_text_input([
        'id'          => '_volume',
        'label'       => __('Об\'єм (cм³)', 'woocommerce'),
        'desc_tip'    => 'true',
        'description' => __('Enter the product volume.', 'woocommerce'),
        'type'        => 'number',
        'custom_attributes' => [
            'step' => 'any',
            'min'  => '0',
        ]
    ]);
}

add_action('woocommerce_process_product_meta', 'save_volume_field');

function save_volume_field($post_id) {
    $volume = isset($_POST['_volume']) ? wc_clean($_POST['_volume']) : '';
    update_post_meta($post_id, '_volume', $volume);
}

add_action('woocommerce_product_meta_end', function() {
  global $product;

  $length = $product->get_length();
  $width  = $product->get_width();
  $height = $product->get_height();

  if ( $length && $width && $height ) {
      $volume = $length * $width * $height;
      echo '<div class="product-volume"><strong>' . __('Volume:', 'woocommerce') . '</strong> ' . esc_html($volume) . ' cm³</div>';
  }
});
*/


// Кастомні поля обʼєм і опис розмірів для варіантів
add_action('woocommerce_variation_options_dimensions', function($loop, $variation_data, $variation) {
  // Обʼєм
  woocommerce_wp_text_input([
      'id' => 'volume[' . $loop . ']',
      'label' => __('Об\'єм (cm³)', 'woocommerce'),
      'desc_tip' => true,
      'description' => __('Enter the volume for this variation.', 'woocommerce'),
      'wrapper_class' => 'form-row form-row-first',
      'value' => get_post_meta($variation->ID, '_volume', true),
      'type' => 'number',
      'custom_attributes' => [
          'step' => 'any',
          'min'  => '0',
      ],
  ]);

  // Опис розмірів
  woocommerce_wp_text_input([
      'id' => 'dimensions_description[' . $loop . ']',
      'label' => __('Опис розмірів', 'woocommerce'),
      'desc_tip' => true,
      'description' => __('Введіть для кого підійде.', 'woocommerce'),
      'wrapper_class' => 'form-row form-row-last',
      'value' => get_post_meta($variation->ID, '_dimensions_description', true),
      'type' => 'text',
  ]);
}, 10, 3);

// Збереження полів
add_action('woocommerce_save_product_variation', function($variation_id, $i) {
  if ( isset($_POST['volume'][$i]) ) {
      update_post_meta($variation_id, '_volume', wc_clean($_POST['volume'][$i]));
  }
  if ( isset($_POST['dimensions_description'][$i]) ) {
      update_post_meta($variation_id, '_dimensions_description', wc_clean($_POST['dimensions_description'][$i]));
  }
}, 10, 2);


/* standart mail fields */
add_filter('wp_mail_from', 'new_mail_from');
add_filter('wp_mail_from_name', 'new_mail_from_name');
function new_mail_from($old)
{
  return 'no-replay@enjoy.ua';
}
function new_mail_from_name($old)
{
  return 'Enjoy';
}
/* Hide links from admin menu */
function remove_menus()
{
  //remove_menu_page( 'edit.php' );
  remove_menu_page('edit-comments.php');
}
add_action('admin_menu', 'remove_menus');

add_filter('woocommerce_checkout_fields', 'custom_override_checkout_fields');
function custom_override_checkout_fields($fields)
{
    // Прибираємо непотрібні білінг-поля
    unset($fields['billing']['billing_country']);
    unset($fields['billing']['billing_address_2']);
    unset($fields['billing']['billing_city']);
    unset($fields['billing']['billing_postcode']);
    unset($fields['billing']['billing_state']);

    // Прибираємо поле коментарів до замовлення
    unset($fields['order']['order_comments']);

    // Прибираємо всі поля доставки
    unset($fields['shipping']);

    // Кастомізація білінг-полів
    $fields['billing']['billing_first_name']['placeholder'] = 'Ім’я';
    $fields['billing']['billing_first_name']['label'] = 'Ім’я';

    $fields['billing']['billing_last_name']['placeholder'] = 'Прізвище';
    $fields['billing']['billing_last_name']['label'] = 'Прізвище';

    $fields['billing']['billing_email']['placeholder'] = 'E-mail';
    $fields['billing']['billing_email']['label'] = 'E-mail';
    $fields['billing']['billing_email']['required'] = false;

    $fields['billing']['billing_phone']['placeholder'] = 'Номер телефону';
    $fields['billing']['billing_phone']['label'] = 'Номер телефону';

    $fields['billing']['billing_address_1']['placeholder'] = 'Доставка (номер відділення/індекс, або ж адреса для курʼєрської доставки)';
    $fields['billing']['billing_address_1']['label'] = 'Доставка (номер відділення/індекс, або ж адреса для курʼєрської доставки)';
    $fields['billing']['billing_address_1']['required'] = false;

    $fields['billing']['billing_company']['placeholder'] = 'Коментар';
    $fields['billing']['billing_company']['label'] = 'Коментар';
    $fields['billing']['billing_company']['required'] = false;

    return $fields;
}

// зміна поля в чекауті
add_filter( 'woocommerce_form_field', 'custom_text_field_output', 10, 4 );

function custom_text_field_output( $field, $key, $args, $value ) {
    // Повна заміна HTML
    $field = sprintf(
        '<div class="wc-block-components-text-input is-active">
            <label for="%1$s">%2$s</label><input type="text" name="%1$s" id="%1$s" class="form-control" value="%3$s" />
        </div>',
        esc_attr( $key ),
        esc_html( $args['label'] ),
        esc_attr( $value )
    );
    return $field;
}



// Додаємо custom data до товару в корзині
add_filter('woocommerce_add_cart_item_data', 'add_custom_data_to_cart_item', 10, 2);
function add_custom_data_to_cart_item($cart_item_data, $product_id) {
    if (isset($_POST['custom_data']['color'])) {
        $cart_item_data['custom_color'] = sanitize_text_field($_POST['custom_data']['color']);
    }
    return $cart_item_data;
}

// Відображаємо кастомний атрибут у замовленні
add_action('woocommerce_checkout_create_order_line_item', 'add_custom_data_to_order_item', 10, 4);
function add_custom_data_to_order_item($item, $cart_item_key, $values, $order) {
    if (isset($values['custom_color'])) {
        $item->add_meta_data('Custom Color', $values['custom_color'], true);
    }
}




// кастомний колір в чекаут
add_filter('woocommerce_get_item_data', 'display_custom_data_cart_checkout', 10, 2);
function display_custom_data_cart_checkout($item_data, $cart_item) {
    if (isset($cart_item['custom_color'])) {
        $item_data[] = array(
            'key'   => __('Custom Color', 'woocommerce'),
            'value' => wc_clean($cart_item['custom_color']),
            'display' => '',
        );
    }
    return $item_data;
}

// кастомний колір в замовлення
add_filter('woocommerce_order_item_display_meta_key', 'change_order_item_meta_display_name', 10, 3);
function change_order_item_meta_display_name($display_key, $meta, $item) {
    if ($meta->key === 'Custom Color') {
        return __('Selected Color', 'woocommerce');
    }
    return $display_key;
}
