<?php
$sale = get_sub_field('sale');
$title = get_sub_field('title');
$price = get_sub_field('price');
$img = wp_get_attachment_image_url(get_sub_field('img'), 'full');
$link = get_sub_field('link');
$type = get_row_layout();
$color = get_sub_field('color') ?? false;
?>

<a href="<?php echo $link ?>" class="product-item <?php echo $type ?> <?php echo $color ? 'on-hover' : '' ?>">
  <?php if ($sale) { ?>
    <div class="product-item-sale flex-c roboto-18-sb">
      <div class="icon icon_sale"></div>
      <div><?php echo $sale ?></div>
    </div>
  <?php } ?>

  <div class="product-item-icon flex-c obj-contain">
    <img src="<?php echo $img;  ?>" alt="">

    <?php if ($color) { ?>
      <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
    <?php } ?>
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