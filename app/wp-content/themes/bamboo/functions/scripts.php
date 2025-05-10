<?php if (!defined('ABSPATH')) exit;

global $preloaded;
global $cache;

$preloaded = [];

// Cache busting of scripts & styles in dev mode
$timestamp_file = get_template_directory() . '/.timestamp';
if (file_exists($timestamp_file)) {
  ob_start();
  require_once $timestamp_file;
  $cache = ob_get_clean();
} else {
  $cache = wp_get_environment_type() != 'production' ? time() : null;
}

function loadAssets($tpl, $load_js_after, $cache, $in_footer = true)
{
  global $preloaded;
  $preloaded[] = $tpl;

  wp_enqueue_style('index', getAssets("css/index.css"), [], $cache);
  wp_enqueue_style($tpl, getAssets("css/$tpl.css"), [], $cache);

  wp_enqueue_script('index', getAssets("js/index.js"), $load_js_after, $cache, $in_footer);
  wp_enqueue_script($tpl, getAssets("js/$tpl.js"), [...$load_js_after, 'index'], $cache, $in_footer);

  // Set local js vars
  wp_localize_script('index', 'BAMBOO', [
    'baseUrl' => home_url(),
    'ajaxUrl' => admin_url('admin-ajax.php'),
    'assets'  => getAssets()
  ]);
}

// Register & enqueue css/js to frontend
add_action('wp_enqueue_scripts', 'enqueueAssets');
function enqueueAssets()
{
  global $tpl_assets;
  global $cache;

  $load_js_after = [];

  if (!is_admin()) {

    // Change Jquery version
    wp_deregister_script('jquery');
    wp_enqueue_script('jquery', '//code.jquery.com/jquery-3.7.0.min.js', [], null, true);
  }

  // Check if jQuery is registered
  if (wp_script_is('jquery', 'registered')) {
    $load_js_after = ['jquery'];
  }

  // Register assets
  if ($tpl_assets) {
    loadAssets($tpl_assets, $load_js_after, $cache);
  }
}

// Add custom dashboard css/js
add_action('admin_enqueue_scripts', function () {
  $stylesheet_url = get_stylesheet_directory_uri() . '/admin.css';
  $script_url = get_stylesheet_directory_uri() . '/admin.js';

  wp_enqueue_style('admin-styles', $stylesheet_url);
  wp_enqueue_script('admin-scripts', $script_url, ['jquery'], null, true);
});

// Disable CF7 default styles & scripts
add_filter('wpcf7_load_css', '__return_false');
// add_filter( 'wpcf7_load_js', '__return_false' );

//remove <br> and <p> CF7
add_filter('wpcf7_autop_or_not', '__return_false');

/// Remove unused WP СSS
add_action('wp_enqueue_scripts', 'bamboo_remove_needless_css', 100);
function bamboo_remove_needless_css()
{
  // Remove Gutenberg Block Library CSS
  wp_dequeue_style('wp-block-library');
  wp_dequeue_style('wp-block-library-theme');
  // Remove WooCommerce block CSS
  wp_dequeue_style('wc-block-style');
  // Remove theme.json
  wp_dequeue_style('global-styles');
  wp_dequeue_style('classic-theme-styles');

  // Remove WooCommerce block CSS WOOOOOOOOOOO
  wp_dequeue_style('wc-block-style');
  wp_dequeue_style('woocommerce-general');
  wp_dequeue_style('woocommerce-layout');
  wp_dequeue_style('woo-variation-swatches');

  if ( is_page(472) ) {
      wp_enqueue_style(
          'wc-checkout-css',
          plugins_url( 'woocommerce/assets/client/blocks/checkout.css' ),
          array(),
          '1.0.0'
      );
  }
}

// Remove WP FSE Scripts & styles
// add_action('after_setup_theme', function () {

//     // remove SVG and global styles
//     remove_action('wp_enqueue_scripts', 'wp_enqueue_global_styles');

//     // remove wp_footer actions which add's global inline styles
//     remove_action('wp_footer', 'wp_enqueue_global_styles', 1);

//     // remove render_block filters which adding unnecessary stuff
//     remove_filter('render_block', 'wp_render_duotone_support');
//     remove_filter('render_block', 'wp_restore_group_inner_container');
//     remove_filter('render_block', 'wp_render_layout_support_flag');
// });

// // CSS preload
// add_filter('style_loader_tag', 'preload_filter', 10, 2);
// function preload_filter($html, $handle)
// {
//     if (strcmp($handle, 'styles') == 0) {
//         $html = str_replace("rel='stylesheet'", "rel='preload' as='style' onload='this.rel=\"stylesheet\"'", $html);
//     }
//     return $html;
// }


// // Scripts preload
// add_action('wp_head', function () {
//     global $wp_scripts;

//     foreach ($wp_scripts->queue as $handle) {
//         $script = $wp_scripts->registered[$handle];

//         if (isset($script->extra['group']) && $script->extra['group'] === 1) {
//             $source = $script->src;
//             echo "<link rel='preload' href='{$source}' as='script'/>\n";
//         }
//     }
// }, 1);
