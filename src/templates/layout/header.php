<header class="header">
  <div class="container flex v-center">

    <div class="header-left flex v-center">
      <div class="header-logo flex">
        <?php renderLogo() ?>
      </div>
      <label class="header-burger burger flex-c flex-v icon">
        <input type="checkbox" name="burger">
        <span></span>
        <span></span>
        <span></span>
      </label>
    </div>

    <div class="header-right flex-c">
      <a href="<?php echo phoneToLink("+38 (096) 540 29 92") ?>" class="header-tell flex">
        <div class="icon icon_tell"></div>
        <span class="txt">+38 (096) 540 29 92</span>
      </a>
      <div class="header-cart flex">
        <button class="icon icon_cart"></button>
      </div>
    </div>
  </div>
</header>