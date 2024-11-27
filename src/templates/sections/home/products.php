<?php

$products = [
  [
    "title" => "Крісло М’яч Classic",
    "price" => "2275",
    "img" => "img/temp/product_1.png",
    'sale' => false,
    'link' => '/',
    'type' => 'product',
    'color' => '#95ae99'

  ],
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


<section class="products">
  <div class="container">


    <?php
    foreach ($products as $product) {
      $type = $product['type'] ?? false;

      if (!$type) continue;

      switch ($type) {
        case 'product':
          renderComponent("grid-product", $product);
          break;
        case 'category':
          renderComponent("grid-category", $product);
          break;
        case 'text':
          renderComponent("grid-text", $product);
          break;
        case 'media':
          renderComponent("grid-media", $product);
          break;
      }
    }  ?>
  </div>
</section>