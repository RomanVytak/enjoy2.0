<?php

/**
 * Show options for ordering
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/orderby.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see         https://woocommerce.com/document/template-structure/
 * @package     WooCommerce\Templates
 * @version     3.6.0
 */

if (! defined('ABSPATH')) {
  exit;
}

?>
<?php
$selected = "";
if (array_search($orderby, array_keys($catalog_orderby_options)) !== false) {
  $selected = $catalog_orderby_options[esc_attr($orderby)];
}

function replace($srt)
{
  $s = str_replace(["Sort", "Сортування", "Сортувати"], "", $srt);
  echo $s;
}
?>


<div class="catalog--ordering">
  <form class="woocommerce-ordering" method="get" data-ordering-form>
    <input type="hidden" name="orderby" value="<?php echo $orderby ?>" />
    <input type="hidden" name="paged" value="1" />
    <?php wc_query_string_form_fields(null, array('orderby', 'submit', 'paged', 'product-page')); ?>
  </form>

  <div class="row-sort flex roboto-16-sb" data-ordering-row>
    <button class="toggle toggle-sort flex-c ">
      <span class="sort_by"><?php replace($selected) ?></span>
      <div class="icon icon_arrow_s "></div>
    </button>
    <div class="row-sort-by flex-v ">
      <?php foreach ($catalog_orderby_options as $id => $name) : ?>
        <button value="<?php echo esc_attr($id); ?>" class="by <?php echo $orderby == $id ? "active" : "" ?>"><?php replace($name); ?></button>
      <?php endforeach; ?>
    </div>
  </div>
</div>