<?php if (have_posts()) :

// if ( WC()->cart && ! WC()->cart->is_empty() ) {
//   echo 'У кошику є продукти.';
// } else {
//   echo 'Кошик порожній.';
// }

  while (have_posts()) : the_post(); ?>
    <section class="default-page" data-page="<?php echo is_cart();  ?>">
      <div class="grid-container gap">
        <h1 class="grid-container-title font_h2"><?php the_title(); ?></h1>
        <div class="grid-container-content ">
          <?php the_content(); ?>
        </div>
      </div>
    </section>
<?php endwhile;
else :
  renderSection('404');
endif; ?>