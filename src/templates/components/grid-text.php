<?php
$title = $args['title'];
$subtitle = $args['subtitle'] ?? false;
$img = $args['img'] ?? false;
$type = $args['type'];
?>

<div class="product-item <?php echo $type ?>">
  <h2 class="roboto-38"><?php echo $title ?></h2>
  <?php if ($img) {  ?>
    <div class="product-item-icon flex obj-contain">
      <img src="<?php echo assets($img)  ?>" alt="">
    </div>
  <?php } ?>
  <p><?php echo $subtitle ?></p>
</div>