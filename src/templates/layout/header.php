<header class="header">
  <div class="container flex v-center">

    <div class="header-left flex v-center">
      <div class="header-logo flex">
        <a href="<?php echo home_url(); ?>"><?php renderLogo() ?></a>
      </div>
      <?php
      wp_nav_menu(array(
          'theme_location' => 'header_menu',
      ));
      ?>
      <label class="header-burger burger flex-c flex-v icon">
        <input type="checkbox" name="burger">
        <span></span>
        <span></span>
        <span></span>
      </label>
    </div>

    <div class="header-right flex-c">
      <?php $phone = get_field('phone', 'option');?>
      <?php if(!empty($phone)){?><a href="<?php echo phoneToLink($phone) ?>" class="header-tell flex">
        <div class="icon icon_tell"></div>
        <span class="txt"><?php echo $phone;?></span>
      </a><?php }?>
      <div class="header--bag flex">
        <?php if (!is_cart()) {
          $total = WC()->cart->get_cart_total();
          $cart_items = WC()->cart->get_cart();
          $total_items = count($cart_items);
        ?>
          <button class="flex-c flex-v" data-toggle-cart>
            <div class="relative flex">
              <div class="icon large icon_cart" data-toggle-cart title="Кошик"></div>
              <div class="header--bag-count flex-c font_body-s <?php echo $total_items > 0 ? "" : "flex-n" ?>" data-psd="<?php echo $total_items ?>">
                <?php echo $total_items ?>
              </div>
            </div>
            <p class="header--bag-price font_body-s <?php echo $total_items > 0 ? "" : "flex-n" ?>">
              <?php echo $total ?>
            </p>
          </button>
        <?php } ?>

      </div>
    </div>
  </div>
</header>
<?php renderComponent("cart") ?>