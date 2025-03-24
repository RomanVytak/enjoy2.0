<?php if (!is_cart()) { ?>
  <div class="custom_mini_cart">

    <div class="wrapper">
      <div class="wrapper-top flex v-center">
        <h2 class="roboto-32">Твої покупки</h2>
        <button class="wrapper--close icon_close" data-toggle-cart></button>
      </div>
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