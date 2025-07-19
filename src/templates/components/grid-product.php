<?php
$product_id = get_sub_field('product');
$product = wc_get_product($product_id);

$type = get_row_layout();
if ($product) {

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

<a href="<?php echo get_permalink($product_id); ?>" class="product-item <?php echo $type ?> <?php echo $color ? 'on-hover' : '' ?>">
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

  <div class="product-item-icon flex-c obj-contain">
    <?php echo $product->get_image(); ?>

    <?php if ($color) { ?>
      <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
    <?php } ?>
  </div>
  <div class="product-item-info info flex h-between w-full">
    <div><?php echo get_the_title($product_id); ?></div>
    <div class="price">
        <?php echo $product->get_price_html(); ?>
    </div>
  </div>
</a>
<?php }?>