<?php if (have_posts()) :

  $pageClass = '';
  if (is_wc_endpoint_url('order-received')) {
    $pageClass = 'page-order-received';
  } elseif (is_checkout() || is_cart()) {
    $pageClass = 'page-custom';
  };

  while (have_posts()) : the_post();
    $content = get_the_content();
    if (trim($content)) : ?>
      <section class="single-page <?php echo $pageClass  ?>" data-page>
        <div class="container">

          <div class="content"><?php the_content(); ?></div>

        </div>
      </section>
<?php endif;
  endwhile;
else :
  renderSection('404');
endif; ?>