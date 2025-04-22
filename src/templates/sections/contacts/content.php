<section class="feedback">
  <div class="container flex h-between">

    <div class="text-content">
      <h1 class="roboto-48"><?php the_title(); ?></h1>

      <div class="content">
        <?php the_content();?>
      </div>

    </div>


    <div class="feedback-form">
      <?php
      echo do_shortcode('[contact-form-7 id="39c16fe"]');
      ?>
    </div>
  </div>
</section>