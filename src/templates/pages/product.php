<?php
get_header();

renderComponent('breadcrumbs');


remove_action('woocommerce_before_single_product', 'woocommerce_output_all_notices', 10);
remove_action('woocommerce_after_single_product_summary', 'woocommerce_output_related_products', 20);
remove_action('woocommerce_after_single_product_summary', 'woocommerce_output_product_data_tabs', 10);


while (have_posts()) :
  the_post();
  global $product;
  /**
   * Hook: woocommerce_before_single_product.
   *
   * @hooked woocommerce_output_all_notices - 10  remove_action
   */
  // do_action('woocommerce_before_single_product');

  if (post_password_required()) {
    echo get_the_password_form(); // WPCS: XSS ok.
    return;
  }
?>
  <section id="product-<?php the_ID(); ?>" class="single_product">
    <div class="container">


      <?php renderSection('product/gallery'); ?>
      <?php renderSection('product/short-description'); ?>

      <?php
      /**
       * Hook: woocommerce_after_single_product_summary.
       *
       * @hooked woocommerce_output_product_data_tabs - 10 remove_action
       * @hooked woocommerce_upsell_display - 15
       * @hooked woocommerce_output_related_products - 20  remove_action
       */
      do_action('woocommerce_after_single_product_summary');
      ?>
    </div>
  </section>


  <?php renderSection('home/builder'); ?>

<?php

  do_action('woocommerce_after_single_product');

endwhile;

// renderSection('product/tabs');

// section related products
/*if (function_exists('woocommerce_output_related_products')) {
  woocommerce_output_related_products();
}*/

//renderSection('choose-tool');



get_footer();
