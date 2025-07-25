<div class="summary entry-summary loading-wrapper loading" data-pin-parrent>
  <?php
  remove_action("woocommerce_single_product_summary", "woocommerce_template_single_meta", 40);
  remove_action("woocommerce_single_product_summary", "woocommerce_template_single_price", 10);
  /**
   * Hook: woocommerce_single_product_summary.
   *
   * @hooked woocommerce_template_single_title - 5
   * @hooked woocommerce_template_single_rating - 10
   * @hooked woocommerce_template_single_price - 10
   * @hooked woocommerce_template_single_excerpt - 20
   * @hooked woocommerce_template_single_add_to_cart - 30
   * @hooked woocommerce_template_single_meta - 40
   * @hooked woocommerce_template_single_sharing - 50
   * @hooked WC_Structured_Data::generate_product_data() - 60
   */
  do_action('woocommerce_single_product_summary'); ?>



</div>