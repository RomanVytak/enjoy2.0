<?php
$title = $args['title'];
$img = $args['img'];
$link = $args['link'];
$type = $args['type'];
$size = $args['size'] ?? "";
?>

<a href="<?php echo $link ?>" class="product-item <?php echo $type," ", $size ?>">
  <div class="product-item-info info flex h-between w-full v-center">
    <h2 class="roboto-38"><?php echo $title ?></h2>
    <div class="icon icon_arrow"></div>
  </div>
  <div class="product-item-icon flex obj-contain">
    <img src="<?php echo assets($img)  ?>" alt="">
  </div>

</a>