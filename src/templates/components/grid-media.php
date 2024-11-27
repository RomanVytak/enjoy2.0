<?php
$img = $args['img'] ?? false;
$type = $args['type'];
$video = $args['video'] ?? false;
?>

<div class="product-item <?php echo $type ?>">
  <?php if ($img) {  ?>
    <div class="product-item-icon flex obj-cover">
      <img src="<?php echo assets($img)  ?>" alt="">
    </div>
  <?php } ?>
  <?php if ($video) {  ?>
    <button class="product-item-play flex-c" data-play-video>
      <div class="icon icon_play"></div>
    </button>
    <div class="product-item-video flex obj-cover">
      <video muted loop playsinline>
        <source src="<?php echo $video ?>" type="video/mp4">
      </video>
    </div>
  <?php } ?>
</div>