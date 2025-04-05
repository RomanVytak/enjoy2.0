<?php

// Check value exists.
if (have_rows('blocks')): ?>
  <section class="products">
    <div class="container">
      <div class="product-item text">
        <div class="text-content">
          <h2 class="roboto-38">Безкаркасні меблі</h2>
          <div class="promo-icon flex">
            <img src="<?php assets('img/promo.svg')  ?>" alt="">
          </div>
          <p>Один з лідерів продажів – крісло-м’яч стане чудовим подарунком для чоловіків будь-якого віку, від малого до великого.</p>
        </div>
      </div>

      <?php // Loop through rows.
      while (have_rows('blocks')) : the_row();

        // Case: Paragraph layout.
        if (get_row_layout() == 'product'):

          renderComponent("grid-product");

        // Case: Download layout.
        elseif (get_row_layout() == 'category'):

          renderComponent("grid-category");

        // Case: Download layout.
        elseif (get_row_layout() == 'text'):

          renderComponent("grid-text");

        // Case: Download layout.
        elseif (get_row_layout() == 'media'):

          renderComponent("grid-media");

        endif;

      // End loop.
      endwhile; ?>
    </div>
  </section>
<?php endif; ?>