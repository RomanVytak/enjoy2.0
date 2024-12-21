<?php
$product_tabs = apply_filters('woocommerce_product_tabs', array());

if (! empty($product_tabs)) :
?>
  <section class="product_tabs">
    <div class="grid-container">
      <?php
      if (function_exists('woocommerce_output_product_data_tabs')) {
        woocommerce_output_product_data_tabs();
      }
      ?>
    </div>
  </section>

<?php endif; ?>