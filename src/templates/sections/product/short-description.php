<div class="summary entry-summary">

  <div class="custom-woo-data flex-v" data-product-ajax>

    <div class="wrapper">
      <div class="wrapper_material">
        <div class="top">
          <p class="roboto-16-sb wrapper-name">Матеріал <span data-material-name></span> </p>

          <div class="params flex-v">
            <p class="roboto-16-sb params-title wrapper-name">Переваги Матеріалу</p>
            <div class="params-params flex-h hidden" data-material-params></div>
          </div>
        </div>
        <div class="materials" data-materials>
        </div>
      </div>
      <div class="wrapper_color">
        <div class="top">
          <p class="roboto-16-sb wrapper-name">Колір <span data-color-name></span> </p>
        </div>
        <div class="colors" data-colors></div>
      </div>
    </div>
    <div class="wrapper">
      <div class="wrapper_sizes">
        <div class="top">
          <p class="roboto-16-sb wrapper-name">Розмір </p>
          <div class="params flex-h" data-size-params></div>
        </div>
        <div class="sizes" data-sizes></div>

      </div>
    </div>
  </div>
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