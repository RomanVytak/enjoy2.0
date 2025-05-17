<?php

require_once get_template_directory() . '/BambooCore/autoload.php';

// Pathes & shortcuts
require_once get_template_directory() . '/functions/shortcuts.php';

// App security
require_once get_template_directory() . '/functions/security.php';

// Load WP tweaks
require_once get_template_directory() . '/functions/tweaks.php';

// Load scripts & css styles
require_once get_template_directory() . '/functions/scripts.php';

// Customize theme
require_once get_template_directory() . '/functions/customize.php';

// Custom post types
require_once get_template_directory() . '/functions/post-types.php';

// Custom images
require_once get_template_directory() . '/functions/images.php';

// SEO
require_once get_template_directory() . '/functions/seo.php';

// SMTP
// require_once get_template_directory() . '/functions/smtp.php';


function enjoy_add_woocommerce_support() {
	add_theme_support( 'woocommerce' );
}
add_action( 'after_setup_theme', 'enjoy_add_woocommerce_support' );

// Custom woocommerce
require_once get_template_directory() . '/functions/custom-woocommerce.php';

// Custom woocommerce
require_once get_template_directory() . '/functions/ajax-woocommerce.php';

// disable Gutenberg 
add_filter('use_block_editor_for_post', '__return_false');

remove_theme_support('core-block-patterns');

function disable_block_patterns() {
    wp_deregister_script('wp-block-library');
}
add_action('wp_enqueue_scripts', 'disable_block_patterns');