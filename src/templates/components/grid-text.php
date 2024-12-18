<?php
$title = get_sub_field('title');
$subtitle = get_sub_field('subtitle');
$img = wp_get_attachment_image_url(get_sub_field('img'), 'full') ?? false;
$type = get_row_layout();
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