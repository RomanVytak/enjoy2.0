<?php

// Disable site indexing for development environments
function preventIndexingTestEnv()
{
    if ('production' !== wp_get_environment_type()) {

        // Using robots.txt method
        add_filter('robots_txt', function ($output, $public) {
            $output = "User-agent: *\n";
            $output .= "Disallow: /\n";
            return $output;
        }, 10, 2);

        // Using noindex meta tag
        add_action('wp_head', function () {
            echo '<meta name="robots" content="noindex, nofollow" />' . "\n";
        });

        // Using WordPress built-in feature
        update_option('blog_public', 0);

        // Using Yoast SEO plugin
        if (defined('WPSEO_VERSION') && class_exists('WPSEO_Options')) {
            WPSEO_Options::set('noindex-subpages-wpseo', true);
        }
    }
}
add_action('init', 'preventIndexingTestEnv');
