<?php
$args = array(
  'post_type'      => 'banner',  // Custom post type 'banner'
  'post_status'    => 'publish', // Only fetch posts with the status 'publish' (public)
  'posts_per_page' => 5,         // Limit the number of posts to 5
  'orderby'        => 'date',    // Order by post date
  'order'          => 'DESC',    // Descending order (most recent first)
);
$banner_posts = new WP_Query($args);

if ($banner_posts->have_posts()) : ?>
<section class="intro">
        <?php
        while ($banner_posts->have_posts()) : $banner_posts->the_post();

          $title = get_the_title();
          $content = get_the_content();
          $button_title = get_field('button_text');
          $button_url = get_field("url");
          $image_id = get_field("photo");

        ?>
  <div class="container">
    <div class="container-text flex-v">
      <h1 class="roboto-48"><?php echo $title;?></h1>
      <p><?php echo $content;?></p>
      <?php if(!empty($button_title)){?>
      <a href="<?php echo $button_url;?>" title="<?php echo $button_title;?>" class="flex-c link roboto-16-sb"><?php echo $button_title;?></a>
      <?php }?>
      <?php if(get_field("smile")==true){?>
      <div class="smile flex"></div>
      <?php }?>
    </div>
    <div class="container-key flex obj-cover">
      <?php if(!empty($image_id)){?>
        <?php echo wp_get_attachment_image($image_id, 'full');  ?>
      <?php }?>
    </div>
  </div>

        <?php
        endwhile;
        wp_reset_postdata(); // Reset the global post object
        ?>
</section>
<?php
endif;
?>