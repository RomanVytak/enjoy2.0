<?php
$img = wp_get_attachment_image_url(get_sub_field('img'), 'full') ?? false;
$video = wp_get_attachment_url(get_sub_field('video')) ?? false;
$size = get_sub_field('size');
$type = get_row_layout();
?>

<div class="product-item <?php echo $type ?> ">
  <?php if ($img) {  ?>
    <div class="product-item-icon flex obj-cover <?php echo $size ?>">
      <img src="<?php echo $img;  ?>" alt="">
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