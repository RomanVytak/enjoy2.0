<footer class="footer">
  <div class="container flex h-center">
    <div class="footer-navs flex-v">
      <a href="">Гарантія</a>
      <a href="">Користувацька угода</a>
    </div>
    <div class="footer-navs flex-v">
      <a href="">Пуфи для шкіл</a>
      <a href="">AR</a>
    </div>
    <div class="footer-navs flex-v">
      <a href="">Контакти</a>
      <div class="tells flex-v">
        <a href="<?php echo phoneToLink("+38 (096) 540 29 92") ?>">+38 (096) 540 29 92</a>
        <a href="<?php echo phoneToLink("+38 (095) 540 29 92") ?>">+38 (095) 540 29 92</a>
      </div>
    </div>

    <div class="socials">
      <?php renderComponent("socials")  ?>
    </div>
  </div>
</footer>