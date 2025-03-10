<header class="header">
  <div class="container flex v-center">

    <div class="header-left flex v-center">
      <div class="header-logo flex">
        <a href="<?php echo home_url(); ?>"><?php renderLogo() ?></a>
      </div>

      <label class="header-burger burger flex-c flex-v icon">
        <input type="checkbox" name="burger">
        <span></span>
        <span></span>
        <span></span>
      </label>
    </div>

    <?php
    wp_nav_menu(array(
      'theme_location' => 'header_menu',
      'container_class'      => 'header-menu',
    ));
    ?>

    <div class="header-right flex-c">
      <?php $phone = get_field('phone', 'option'); ?>
      <?php if (!empty($phone)) { ?><a href="<?php echo phoneToLink($phone) ?>" class="header-tell flex">
          <div class="icon icon_tell"></div>
          <span class="txt"><?php echo $phone; ?></span>
        </a><?php } ?>
      <div class="header-bag flex">

        <button class="flex-c flex-v" data-toggle-cart>
          <div class="relative flex">
            <div class="icon large icon_cart" title="Кошик"></div>

            <?php if (!is_cart()) {
              $cart_items = WC()->cart->get_cart();
              $total_items = count($cart_items);
            ?>
              <div class="header-count flex-c <?php echo $total_items > 0 ? "" : "flex-n" ?>" data-psd="<?php echo $total_items ?>">
                <?php echo $total_items ?>
              </div>

            <?php } ?>
          </div>
        </button>

      </div>
    </div>
  </div>
</header>
<?php renderComponent("cart") ?>