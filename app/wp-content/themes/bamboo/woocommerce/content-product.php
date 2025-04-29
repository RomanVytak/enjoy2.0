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

defined( 'ABSPATH' ) || exit;

global $product;

// Check if the product is a valid WooCommerce product and ensure its visibility before proceeding.
if ( ! is_a( $product, WC_Product::class ) || ! $product->is_visible() ) {
	return;
}
?>

<?php
$product_cats = wp_get_post_terms( $product->get_id(), 'product_cat' );
if ( ! empty( $product_cats ) && ! is_wp_error( $product_cats ) ) {
    // Отримати першу категорію (якщо їх декілька)
    $main_category = $product_cats[0];
    // Вивести назву категорії
    $product_category = $main_category->name;
	$product_category_id = $product_cats[0]->term_id;
}
$color = get_field('product_color', 'product_cat_'.$product_category_id);
?>

	<div class="product-item">
          <?php
          if (function_exists('get_field')) {
            $rows = get_field('promo');
            $i = 0;
            if( $rows ) {
                foreach( $rows as $row ) {
                    if($i==0){
                      echo '<div class="product-item-sale flex-c roboto-16-sb">';
                      if($row['url']){echo'<a href="'.$row['url'].'">';}
                      echo '<div class="custom-pr-sale">';
                      if($row['ico']['url']){echo '<img src="'.$row['ico']['url'].'" alt="icon" />';}
                      echo '<span>'.$row['name'].'</span>';
                      echo'</div>';
                      if($row['url']){echo'</a>';}
                      echo'</div>';
                    }
                    $i++;
                }
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
            <a href="<?php echo esc_url( get_permalink( $product->get_id() ) ); ?>" class="swiper swiper-images" data-product-images>
              <div class="swiper-wrapper">

                <div class="swiper-slide product-item-icon obj-contain">
                  <?php echo $product->get_image();?>
                  <?php if ($color) { ?>
                    <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
                  <?php } ?>
                </div>

				<?php
				$gallery_image_ids = $product->get_gallery_image_ids(); // Отримуємо всі ID зображень із галереї продукту

				if ( !empty($gallery_image_ids) ) {
					foreach ( $gallery_image_ids as $image_id ) {
						$image_url = wp_get_attachment_image_url( $image_id, 'full' ); // Отримуємо URL зображення
						?>
						<div class="swiper-slide product-item-icon obj-contain">
							<?php echo '<img src="' . esc_url( $image_url ) . '" alt="' . esc_attr( get_post_meta( $image_id, '_wp_attachment_image_alt', true ) ) . '" />';?>
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
          <a href="<?php echo esc_url( get_permalink( $product->get_id() ) ); ?>" class="product-item-info flex-v">
            <p class="name roboto-38"><?php echo $product->get_name();?></p>
            <p class="category roboto-16-sb"><?php echo $product_category;?></p>
          </a>
          <div class="product-item-price flex-v">
            <div class="flex w-full h-between">
              <p class="price roboto-38">
              <?php
              if ( $product->is_type( 'variable' ) ) {
                  $default_attributes = $product->get_default_attributes();

                  // Якщо жодного дефолтного атрибута не задано
                  if ( empty( $default_attributes ) ) {
                      $prices = $product->get_variation_prices( true );
                      $min_price = current( $prices['price'] );
                      $max_price = end( $prices['price'] );

                      if ( $min_price !== $max_price ) {
                          echo '<span class="price">' . wc_price( $min_price ) . ' - ' . wc_price( $max_price ) . '</span>';
                      } else {
                          echo '<span class="price">' . wc_price( $min_price ) . '</span>';
                      }
                  } else {
                      // Якщо є дефолтна варіація, показати стандартну ціну
                      echo $product->get_price_html();
                  }
              } else {
                  // Для простих товарів
                  echo $product->get_price_html();
              }
              ?>
              </p>
            </div>

            <div class="payment-icons flex v-center">
              <div class="group flex v-center">
                <div class="itt pr"> <img src="https://enjoy.ua/wp-content/themes/enjoy/img/payment/pr.svg" alt=""></div>
                <div class="itt mon"> <img src="https://enjoy.ua/wp-content/themes/enjoy/img/payment/mon.svg" alt=""></div>
              </div>
              <a href="<?php echo esc_url( get_permalink( $product->get_id() ) ); ?>" class="link roboto-16-b flex-c" title="Обрати дизайн">
                Обрати дизайн
              </a>
            </div>

          </div>

        </div>