<?php

/**
 * Order Item Details
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/order/order-details-item.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 5.2.0
 */

if (! defined('ABSPATH')) {
  exit;
}

if (! apply_filters('woocommerce_order_item_visible', true, $item)) {
  return;
}
?>
<div class="product">

  <div class="wrapper">
    <?php
    $is_visible        = $product && $product->is_visible();
    $product_permalink = apply_filters('woocommerce_order_item_permalink', $is_visible ? $product->get_permalink($item) : '', $item, $order);
    $thumbnail         = apply_filters('woocommerce_cart_item_thumbnail', $product->get_image());
    $qty          = $item->get_quantity();


    echo '<a class="product_img" href="' . esc_url($product_permalink) . '">'
      . $thumbnail
      . apply_filters('woocommerce_order_item_quantity_html', '<div class="product-quantity">' . esc_html($qty) . '</div>', $item)
      . '</a>';
    echo '<div class="product_info">';
    echo wp_kses_post(apply_filters('woocommerce_order_item_name', $product_permalink ? sprintf('<a href="%s">%s</a>', $product_permalink, $item->get_name()) : $item->get_name(), $item, $is_visible));



    do_action('woocommerce_order_item_meta_start', $item_id, $item, $order, false);

    wc_display_item_meta($item); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped

    do_action('woocommerce_order_item_meta_end', $item_id, $item, $order, false);
    echo '</div>';
    ?>

  </div>

  <div class="price">
    <?php echo $order->get_formatted_line_subtotal($item); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
    ?>
  </div>

</div>

<?php if ($show_purchase_note && $purchase_note) : ?>

  <div class="woocommerce-table__product-purchase-note product-purchase-note">

    <div colspan="2"><?php echo wpautop(do_shortcode(wp_kses_post($purchase_note))); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
                      ?></div>

  </div>

<?php endif; ?>