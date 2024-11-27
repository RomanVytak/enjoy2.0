<?php

$products = [
  [
    "title" => "Крісло М’яч Classic",
    "price" => "2275",
    "img" => "img/temp/product_1.jpg",
    'sale' => false,
    'link' => '/',
    'type' => 'product'
  ],
  [
    "title" => "Крісло М’яч Classic",
    "price" => "2275",
    "img" => "img/temp/product_1.jpg",
    'sale' => "-20% на готовий виріб",
    'link' => '/',
    'type' => 'product'
  ],
  [
    "title" => "Груші та м’ячі",
    "img" => "img/temp/product_2.jpg",
    'link' => '/',
    'type' => 'category'
  ],
  [
    "title" => "Аксесуари",
    "img" => "img/temp/category.jpg",
    'link' => '/',
    'type' => 'category',
    'size' => 'large',
  ],
  [
    "title" => "Безкаркасні крісла",
    "img" => "img/temp/product_2.jpg",
    'link' => '/',
    'type' => 'category'
  ],
  [
    "title" => "Крісло груша - як сідати?",
    "subtitle" => "Груша - найбільш універсальна модель серед безкаркасних меблів. Усі варіанти використання можна переглянути у відео",
    'type' => 'text',
  ],
  [
    "img" => "img/temp/media_1.jpg",
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