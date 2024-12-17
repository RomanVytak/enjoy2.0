<?php
$socialNetworks = [
  ['link' => 'https://www.facebook.com', 'title' => 'Facebook'],
  ['link' => 'https://www.instagram.com', 'title' => 'Instagram'],
];
?>

<?php $facebook = get_field('facebook', 'option');?>
<?php $instagram = get_field('instagram', 'option');?>
<?php if(!empty($facebook)){?>
<a href="<?php echo $facebook;?>" class="icon icon_facebook" target="_blank" title="Facebook"></a>
<?php }?>
<?php if(!empty($instagram)){?>
<a href="<?php echo $instagram;?>" class="icon icon_instagram" target="_blank" title="Instagram"></a>
<?php }?>