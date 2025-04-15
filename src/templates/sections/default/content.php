<?php if (have_posts()) :

  // if ( WC()->cart && ! WC()->cart->is_empty() ) {
  //   echo 'У кошику є продукти.';
  // } else {
  //   echo 'Кошик порожній.';
  // }

  while (have_posts()) : the_post(); ?>
    <section class="single-page <?php echo (is_checkout() || is_cart()) ? 'page-custom' : ''  ?>" data-page>
      <div class="container">

        <!-- <h1 class="roboto-48">?php the_title(); ?></h1> -->

        <div class="content"><?php the_content(); ?></div>

      </div>
    </section>
<?php endwhile;
else :
  renderSection('404');
endif; ?>