<?php

$class  = $args['class'] ?? "";
$title  = $args['title'] ?? "";
$link   = $args['url'] ?? '';
$type   = $args['type'] ?? 'button';
$attr   = $args['attr'] ?? '';
$target = $args['target'] ?? "_self";
$icon = $args['icon'] ?? 'arrow-up-right';

// Determine the element type based on the presence of $link
$elType = $link ? 'a' : 'button';

// Prepare specific attributes based on the element type
$specificAttrs = $link ? "href=\"{$link}\" target=\"{$target}\"" : "type=\"{$type}\"";
?>

<<?php echo $elType; ?> class="<?php echo $class; ?>" <?php echo $specificAttrs; ?><?php echo ($attr) ? " {$attr}" : ''; ?>>
  <span class="button-text"><?php echo $title; ?></span>
  <span class="button-icon"></span>
</<?php echo $elType; ?>>