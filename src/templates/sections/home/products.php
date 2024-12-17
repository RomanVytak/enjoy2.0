<?php

$products = [
  
  [
    "title" => "Безкаркасні крісла",
    "img" => "img/temp/product_1.png",
    'link' => '/',
    'type' => 'category',
    'color' => '#ec7f54'

  ],
  [
    "title" => "Крісло М’яч Classic",
    "price" => "2275",
    "img" => "img/temp/product_1.png",
    'sale' => "-20% на готовий виріб",
    'link' => '/',
    'type' => 'product',
    'color' => '#0c4f79'
  ],

  [
    "title" => "Груші та м’ячі",
    "img" => "img/temp/product_1.png",
    'link' => '/',
    'type' => 'category',
    'color' => '#0c4f79'

  ],
  [
    "title" => "Аксесуари",
    "img" => "img/temp/category.jpg",
    'link' => '/',
    'type' => 'category',
    'size' => 'large',
  ],

  [
    "title" => "Крісло груша - як сідати?",
    "subtitle" => "Груша - найбільш універсальна модель серед безкаркасних меблів. Усі варіанти використання можна переглянути у відео",
    'type' => 'text',
  ],
  [
    "img" => "img/temp/media_1.jpg",
    'video' => "https://enjoy.ua/wp-content/uploads/2024/04/how-to-sit.mp4",
    'type' => 'media',
  ],
];

?>


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

        endif;

    // End loop.
    endwhile;?>
  </div>
</section>
<?php endif;?>
