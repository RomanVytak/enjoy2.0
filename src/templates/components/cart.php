<?php if (!is_cart()) { ?>
  <div class="custom_mini_cart">
    <div class="bg-close" data-toggle-cart></div>

    <div class="wrapper">
      <button class="wrapper--close icon-close" data-toggle-cart></button>
      <h2 class="font_title-l">Твій кошик</h2>
      <div class="widget_shopping_cart_content">
        <?php
        if (function_exists('woocommerce_mini_cart')) {
          woocommerce_mini_cart();
        }
        ?>
      </div>
    </div>
  </div>
<?php } ?>