<?php
$title = get_sub_field('title');
$subtitle = get_sub_field('subtitle');
$size = get_sub_field('size');
$type = get_row_layout();
?>

<div class="product-item <?php echo $type ?> <?php echo $size ?>">
  <div class="text-content">
    <h2 class="roboto-38"><?php echo $title ?></h2>
    <p><?php echo $subtitle ?></p>
  </div>
</div>