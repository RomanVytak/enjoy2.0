<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <?php wp_head(); ?>
  <!-- fontsPreload:woff2 -->
  <!-- endfontsPreload -->
</head>

<body <?php body_class(); ?>>
  <?php renderLayout('header'); ?>
  <main>