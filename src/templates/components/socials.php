<?php
$socialNetworks = [
  ['link' => 'https://www.facebook.com', 'title' => 'Facebook'],
  ['link' => 'https://www.instagram.com', 'title' => 'Instagram'],
];


foreach ($socialNetworks as $network) {
  $icon = strtolower($network['title']);
  echo "<a href='{$network['link']}' class='icon icon_{$icon}' target='_blank' title='{$network['title']}'></a>";
}
