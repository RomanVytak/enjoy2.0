<footer class="footer">
  <div class="container flex h-center">
    <div class="footer-navs flex-v">
      <?php renderShortMenu('footer_menu_1'); ?>
    </div>
    <div class="footer-navs flex-v">
      <?php renderShortMenu('footer_menu_2'); ?>
    </div>
    <div class="footer-navs flex-v">
      <a href="<?php echo home_url(); ?>/kontakty">Контакти</a>
      <div class="tells flex-v">
        <?php $phone = get_field('phone', 'option');
        $phone_2 = get_field('phone_2', 'option'); ?>
        <?php if (!empty($phone)) { ?><a href="<?php echo phoneToLink($phone) ?>"><?php echo $phone; ?></a><?php } ?>
        <?php if (!empty($phphone_2one)) { ?><a href="<?php echo phoneToLink($phone_2) ?>"><?php echo $phone_2; ?></a><?php } ?>
      </div>
    </div>

    <div class="socials">
      <?php renderComponent("socials")  ?>
    </div>
  </div>
</footer>

<div class="handle-added-msg">
  <div class="wrapper flex-v">
  </div>
</div>

<?php if (have_posts()) {  ?>
  <div class="pop-up full-img" data-img-popup>
    <div class="back-close" data-popup-close></div>
    <div class="overflow" data-scroller>
      <div class="popup-content">
        <button class="close icon_close" data-popup-close></button>
        <div class="pop-up-img" data-img>
        </div>
      </div>
    </div>
  </div>
  <div class="pop-up full-video" data-video-popup>
    <div class="back-close" data-popup-close></div>
    <div class="overflow" data-scroller>
      <div class="popup-content">
        <button class="close icon_close" data-popup-close></button>
        <div class="pop-up-video" data-video>
          <video controls autoplay playsinline>
            <source src="http://enjoy.loc/wp-content/uploads/2025/04/314-1-1.jpg" type="video/mp4">
          </video>
        </div>
      </div>
    </div>
  </div>
<?php  }  ?>