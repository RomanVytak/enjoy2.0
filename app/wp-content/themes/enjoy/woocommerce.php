<?php if (!defined('ABSPATH')) exit;

global $tpl_assets;

if(is_singular()){
    $tpl_assets = 'page-product';
    renderPage('product');
}
else{
    $tpl_assets = 'page-catalog';
    renderPage('catalog');
}