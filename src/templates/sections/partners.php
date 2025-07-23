<?php
$title = 'Нам довіряють';
$list = [
  [
    'icon' => 'antochka.png',
  ],
  [
    'icon' => 'bevette-smart-water.png',
  ],
  [
    'icon' => 'chilp-planet.png',
  ],
  [
    'icon' => 'chumak.png',
  ],
  [
    'icon' => 'fly-kids.png',
  ],
  [
    'icon' => 'galka.png',
  ],
  [
    'icon' => 'galnaftogas.png',
  ],
  [
    'icon' => 'gyvchyk.png',
  ],
  [
    'icon' => 'home-toys.png',
  ],
  [
    'icon' => 'ihub-lviv.png',
  ],
  [
    'icon' => 'international-org.png',
  ],
  [
    'icon' => 'it-arena.png',
  ],
  [
    'icon' => 'kraina-rozvag.png',
  ],
  [
    'icon' => 'kyivstar.png',
  ],
  [
    'icon' => 'leopark.png',
  ],
  [
    'icon' => 'lohika.png',
  ],
  [
    'icon' => 'malibu.png',
  ],
  [
    'icon' => 'nestle.png',
  ],
  [
    'icon' => 'philip-morris.png',
  ],
  [
    'icon' => 'reikartz.png',
  ],
  [
    'icon' => 'softserve.png',
  ],
  [
    'icon' => 'solutions.png',
  ],
  [
    'icon' => 'try-syny-ta-donka.png',
  ],
  [
    'icon' => 'vodafone.png',
  ],
  [
    'icon' => 'alfa.png',
  ],
  [
    'icon' => 'pumb.png',
  ],
  [
    'icon' => 'ciklum.png',
  ],
  [
    'icon' => 'gorenie.png',
  ],
  [
    'icon' => 'kormo.png',
  ],
  [
    'icon' => 'perfect.png',
  ],
  [
    'icon' => 'tesla.png',
  ],
]
?>

<section class="partners">
  <div class="container flex-v">
    <div class="container-title">
      <h2 class="roboto-38"><?php echo $title; ?></h2>
    </div>
    <div class="grid">
      <?php foreach ($list as $item): ?>
        <div class="item">
          <img src="<?php assets('img/partners/' . $item['icon']); ?>" alt="">
        </div>
      <?php endforeach; ?>
    </div>
  </div>
</section>