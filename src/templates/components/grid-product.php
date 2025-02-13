<?php
$product_id = get_sub_field('product');
$product = wc_get_product($product_id);
$sale = get_sub_field('sale');
$type = get_row_layout();

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

<a href="<?php echo get_permalink($product_id); ?>" class="product-item <?php echo $type ?> <?php echo $color ? 'on-hover' : '' ?>">
  <?php if ($sale) { ?>
    <div class="product-item-sale flex-c roboto-18-sb">
      <div class="icon icon_sale"></div>
      <div><?php echo $sale ?></div>
    </div>
  <?php } ?>

  <div class="product-item-icon flex-c obj-contain">
    <?php echo $product->get_image();?>

    <?php if ($color) { ?>
      <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
    <?php } ?>
  </div>
  <div class="product-item-info info flex h-between w-full">
    <p><?php echo get_the_title($product_id); ?></p>
    <div class="price">
      <p>
        <?php echo $product->get_price_html(); ?>
      </p>

    </div>
  </div>
</a>