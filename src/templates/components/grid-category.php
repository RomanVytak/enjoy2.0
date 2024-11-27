<?php
$title = $args['title'];
$img = $args['img'];
$link = $args['link'];
$type = $args['type'];
$size = $args['size'] ?? "";
$color = $args['color'] ?? false;
?>

<a href="<?php echo $link ?>" class="product-item <?php echo $type, " ", $size ?><?php echo $color ? ' on-hover' : '' ?>">
  <div class="product-item-info info flex h-between w-full v-center">
    <h2 class="roboto-38"><?php echo $title ?></h2>
    <div class="icon icon_arrow"></div>
  </div>

  <div class="product-item-icon flex-c obj-contain">
    <img src="<?php echo assets($img)  ?>" alt="">

    <?php if ($color) { ?>
      <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
    <?php } ?>
  </div>

</a>