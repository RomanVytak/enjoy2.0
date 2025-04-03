<?php

// Check value exists.
if( have_rows('blocks') ):?>
<section class="products">
  <div class="container">
    <?php // Loop through rows.
    while ( have_rows('blocks') ) : the_row();

        // Case: Paragraph layout.
        if( get_row_layout() == 'product' ):

            renderComponent("grid-product");

        // Case: Download layout.
        elseif( get_row_layout() == 'category' ): 
            
            renderComponent("grid-category");

        // Case: Download layout.
        elseif( get_row_layout() == 'text' ): 
            
            renderComponent("grid-text");

        // Case: Download layout.
        elseif( get_row_layout() == 'media' ): 
            
            renderComponent("grid-media");

        endif;
        
    // End loop.
    endwhile;?>
  </div>
</section>
<?php endif;?>
