<?php

// Customize theme
add_action('after_setup_theme', 'customizeTheme');
function customizeTheme()
{
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_theme_support('custom-logo');
    add_theme_support('html5', [
        'script',
        'style'
    ]);

    // Register menu(s)
    register_nav_menus([
        'header_menu' => 'Header menu',
        'footer_menu_1' => 'Footer menu 1',
        'footer_menu_2' => 'Footer menu 2',
    ]);

    // Load textdomain
    // load_theme_textdomain('bamboo', get_template_directory() . '/languages');
}

// Custom admin logo
add_action('login_head', function () {

    $logo = get_bloginfo('template_directory') . '/assets/img/logo.svg';

    if (file_exists($logo)) {
        echo '<style>h1 a { background-image:url(' . $logo . ')!important; background-size: contain !important;}</style>';
    }
});

// Add custom css to dashboard
add_action('admin_enqueue_scripts', 'addDashboardStyles');
function addDashboardStyles()
{
    wp_enqueue_style('admin-styles', get_stylesheet_directory_uri() . '/admin.css');
}

// Remove category & tag text before title
// add_filter('get_the_archive_title', function ($title) {
//   return preg_replace('~^[^:]+: ~', '', $title);
// });

// Add contact info to admin
/*if (function_exists('acf_add_options_page')) {
    acf_add_options_page(array(
        'page_title' => 'Our contacts',
        'menu_title' => 'Our contacts',
        'menu_slug'  => 'contacts-settings',
        'icon_url'   => 'dashicons-email-alt2',
        'position'   => 60,
        'redirect'   => false,
        'autoload'   => true
    ));
}*/
