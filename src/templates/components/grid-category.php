<?php
$sale = get_sub_field('sale');
$title = get_sub_field('title');
$price = get_sub_field('price');
$img = wp_get_attachment_image_url(get_sub_field('img'), 'full');
$link = get_sub_field('link');
$type = get_row_layout();
$color = get_sub_field('color') ?? false;
$size = get_sub_field('size') ?? "";
?>

<a href="<?php echo $link ?>" class="product-item <?php echo $type, " ", $size ?><?php echo $color ? ' on-hover' : '' ?>">
  <div class="product-item-info info flex h-between w-full v-center">
    <h2 class="roboto-38"><?php echo $title ?></h2>
    <div class="icon icon_arrow"></div>
  </div>

  <div class="product-item-icon flex-c obj-contain">
    <img src="<?php echo $img;  ?>" alt="">

    <?php if ($color) { ?>
      <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
    <?php } ?>
  </div>

</a>