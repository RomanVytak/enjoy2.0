<?php
$cat_id = get_sub_field('category');
$type = get_row_layout();
$size = get_sub_field('size') ?? "";
$color = get_field('product_color', 'product_cat_'.$cat_id);
$img = get_field('photo', 'product_cat_'.$cat_id);

$term = get_term($cat_id, 'product_cat' );
$term_link = get_term_link( $term );
?>

<a href="<?php echo $term_link ?>" class="product-item <?php echo $type, " ", $size ?><?php echo $color ? ' on-hover' : '' ?>">
  <div class="product-item-info info flex h-between w-full v-center">
    <h2 class="roboto-38"><?php echo $term->name ?></h2>
    <div class="icon icon_arrow"></div>
  </div>

  <div class="product-item-icon flex-c obj-contain">
    <?php if($img){?><img src="<?php echo $img;  ?>" alt=""><?php }?>

    <?php if ($color) { ?>
      <div class="product-item-circle" style="--circle: <?php echo $color ?>;"></div>
    <?php } ?>
  </div>

</a>