<?php
$sale = $args['sale'];
$title = $args['title'];
$price = $args['price'];
$img = $args['img'];
$link = $args['link'];
$type = $args['type'];
?>

<a href="<?php echo $link ?>" class="product-item <?php echo $type ?>">
  <?php if ($sale) { ?>
    <div class="product-item-sale flex-c roboto-18-sb">
      <div class="icon icon_sale"></div>
      <div><?php echo $sale ?></div>
    </div>
  <?php } ?>
  <div class="product-item-icon flex obj-contain">
    <img src="<?php echo assets($img)  ?>" alt="">
  </div>
  <div class="product-item-info info flex h-between w-full">
    <p><?php echo $title ?></p>
    <div class="price">
      <p>
        <?php echo $price ?>
        <span>грн</span>
      </p>

    </div>
  </div>
</a>