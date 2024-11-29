<?php

$categories = [
  [
    'name' => 'Всі',
    'link' => '/'
  ],
  [
    'name' => 'Акційні пропозиції',
    'link' => '/',
    'icon' => 'img/temp/cat_1.svg'
  ],
  [
    'name' => 'Груші та м’ячі',
    'link' => '/',
    'icon' => 'img/temp/cat_2.svg'
  ],
  [
    'name' => 'Безкаркасні крісла',
    'link' => '/',
    'icon' => 'img/temp/cat_3.svg'
  ],
  [
    'name' => 'Аксесуари',
    'link' => '/',
    'icon' => 'img/temp/cat_4.svg'
  ],
];

$products = [
  [
    "title" => "Крісло М’яч Classic",
    "category" => "Для вулиці / балкону / тераси",
    "price" => "2275",
    "img" => "img/temp/product_1.png",
    'sale' => false,
    'link' => '/',
    'type' => 'product',
    'color' => '#95ae99'

  ],
  [
    "title" => "Груша Home",
    "category" => "Тканини для дому",
    "price" => "2275",
    "img" => "img/temp/product_1.png",
    'sale' => false,
    'link' => '/',
    'type' => 'product',
    'color' => '#0c4f79'

  ],
  [
    "title" => "Груша Compact",
    "category" => "Бюджетна модель",
    "price" => "2275",
    "img" => "img/temp/product_1.png",
    'sale' => false,
    'link' => '/',
    'type' => 'product',
    'color' => '#ec7f54'

  ],
];

?>


<section class="categories">
  <div class="container flex-v">
    <div class="tabs">
      <?php foreach ($categories as $category) :
        $icon = $category['icon'] ?? null;
      ?>
        <a href="<?= $category['link'] ?>" class="tab">
          <?php if ($icon) :  ?>
            <div class="icon flex large" style="mask-image: url(<?= assets($icon)  ?>);">
            </div>
          <?php endif ?>
          <div class="tab-name"><?= $category['name'] ?></div>
        </a>
      <?php endforeach; ?>
    </div>
  </div>
</section>

<section class="products">
  <div class="container">

    <div class="grid w-full">

      <?php foreach ($products as $product) :
        $color = $product['color'] ?? false;
      ?>


        <div class="product-item">
          <div class="product-item-slider flex w-full">
            <div class="product-item-slider-navs flex w-full h-between">
              <button class="nav prev flex-c">
                <div class="icon icon_arrow_s left"></div>
              </button>
              <button class="nav next flex-c">
                <div class="icon icon_arrow_s right"></div>
              </button>

            </div>
            <a href="<?= $product['link'] ?>" class="swiper" data-product-images>
              <div class="swiper-wrapper">
                <div class="swiper-slide product-item-icon obj-contain">
                  <img src="<?= assets($product['img']) ?>" alt="">
                  <?php if ($color) { ?>
                    <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
                  <?php } ?>
                </div>
                <div class="swiper-slide product-item-icon obj-contain">
                  <img src="<?= assets($product['img']) ?>" alt="">
                  <?php if ($color) { ?>
                    <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
                  <?php } ?>
                </div>
                <div class="swiper-slide product-item-icon obj-contain">
                  <img src="<?= assets($product['img']) ?>" alt="">
                  <?php if ($color) { ?>
                    <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
                  <?php } ?>
                </div>
              </div>
            </a>
          </div>
          <a href="<?= $product['link'] ?>" class="product-item-info flex-v">
            <p class="name roboto-38"><?= $product['title'] ?></p>
            <p class="category roboto-18-sb"><?= $product['category'] ?></p>
          </a>
          <div class="product-item-price flex-v">
            <div class="flex w-full h-between">
              <p class="price roboto-38">
                <?php echo $product['price'] ?>
                <span>грн</span>
              </p>
            </div>

            <div class="payment-icons flex v-center">
              <div class="group flex v-center">
                <div class="itt pr"> <img src="https://enjoy.ua/wp-content/themes/enjoy/img/payment/pr.svg" alt=""></div>
                <div class="itt mon"> <img src="https://enjoy.ua/wp-content/themes/enjoy/img/payment/mon.svg" alt=""></div>
              </div>
              <a href="<?= $product['link'] ?>" class="link roboto-18-b flex-c" title="Обрати дизайн">
                Обрати дизайн
              </a>
            </div>

          </div>

        </div>

      <?php
      endforeach; ?>

    </div>
  </div>
</section>