<footer class="footer">
  <div class="container flex h-center">
    <div class="footer-navs flex-v">
      <?php renderShortMenu('footer_menu_1');?>
    </div>
    <div class="footer-navs flex-v">
    <?php renderShortMenu('footer_menu_2');?>
    </div>
    <div class="footer-navs flex-v">
      <a href="">Контакти</a>
      <div class="tells flex-v">
      <?php $phone = get_field('phone', 'option');
      $phone_2 = get_field('phone_2', 'option');?>
        <?php if(!empty($phone)){?><a href="<?php echo phoneToLink($phone) ?>"><?php echo $phone;?></a><?php }?>
        <?php if(!empty($phphone_2one)){?><a href="<?php echo phoneToLink($phone_2) ?>"><?php echo $phone_2;?></a><?php }?>
      </div>
    </div>

    <div class="socials">
      <?php renderComponent("socials")  ?>
    </div>
  </div>
</footer>