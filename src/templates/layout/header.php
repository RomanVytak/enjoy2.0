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
      <div class="header-cart flex">
        <button class="icon large icon_cart" data-toggle-cart title="Кошик"></button>
      </div>
    </div>
  </div>
</header>
<?php renderComponent("cart") ?>