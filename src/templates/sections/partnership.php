<?php
$title = 'Переваги партнерства';
$list = [
  [
    'icon' => getAssets('img/partnership/partnership-1.svg'),
    'text' => 'Преміум тканини,<br>наповнювач і фурнітура'
  ],
  [
    'icon' => getAssets('img/partnership/partnership-2.svg'),
    'text' => 'Дизайнерам - 3D-моделі<br>та якісні текстури'
  ],
  [
    'icon' => getAssets('img/partnership/partnership-3.svg'),
    'text' => 'Партнерам та оптовим клієнтам - гнучкі умови, чітке виконання термінів і легке спілкування'
  ],
  [
    'icon' => getAssets('img/partnership/partnership-4.svg'),
    'text' => 'Корпоративним клієнтам - брендування і дотримання фірмового стилю'
  ]
]
?>

<section class="partnership">
  <div class="container flex-v">
    <div class="container-title">
      <h2 class="roboto-38"><?php echo $title; ?></h2>
    </div>
    <div class="grid">
      <?php foreach ($list as $item): ?>
        <div class="item">
          <img src="<?php echo $item['icon']; ?>" alt="<?php echo str_replace('<br>', ' ', $item['text']); ?>">
          <p><?php echo $item['text']; ?></p>
        </div>
      <?php endforeach; ?>
    </div>
  </div>
</section>