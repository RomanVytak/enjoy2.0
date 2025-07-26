<?php

get_header();

global $post;
$page_id = $post->ID;

renderSection('default/content');
renderSection('home/builder');

if ($page_id === 174) { // show only on Cooperation page
  renderSection('partnership');
  renderSection('partners');
  renderSection('cooperate');
}

get_footer();
