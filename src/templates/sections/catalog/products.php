<?php

$categories = [
  [
    'name' => 'Всі',
    'link' => '/vsi-typy/'
  ],
  [
    'name' => 'Акційні пропозиції',
    'link' => '/special_offer/',
    'icon' => 'img/temp/cat_1.svg'
  ],
  [
    'name' => 'Груші та м’ячі',
    'link' => '/vsi-typy/kreslo-hrusha/',
    'icon' => 'img/temp/cat_2.svg'
  ],
  [
    'name' => 'Безкаркасні крісла',
    'link' => '/vsi-typy/bezkarkasni-krisla/',
    'icon' => 'img/temp/cat_3.svg'
  ],
  [
    'name' => 'Аксесуари',
    'link' => '/vsi-typy/puf/',
    'icon' => 'img/temp/cat_4.svg'
  ],
];


?>


<section class="categories">
  <div class="container flex-v">
    <div class="tabs">
      <?php foreach ($categories as $category) :
        $icon = $category['icon'] ?? null;
      ?>
        <a href="<?= $category['link'] ?>" class="tab <?php if ($category['link'] === $_SERVER['REQUEST_URI']) {
    echo "active";}?>">
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

    
      <?php
      woocommerce_custom_content();
      ?>

  </div>
</section>