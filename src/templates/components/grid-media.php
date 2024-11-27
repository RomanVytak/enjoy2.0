<?php
$img = $args['img'] ?? false;
$type = $args['type'];
?>

<div class="product-item <?php echo $type ?>">
  <?php if ($img) {  ?>
    <div class="product-item-icon flex obj-cover">
      <img src="<?php echo assets($img)  ?>" alt="">
    </div>
  <?php } ?>
</div>