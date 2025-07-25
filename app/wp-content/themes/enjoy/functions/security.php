<?php if (!defined('ABSPATH')) exit;

function add_security_headers()
{
  // Add all security headers
  header("Strict-Transport-Security: max-age=31536000; includeSubDomains; preload");
  header('X-Frame-Options: SAMEORIGIN');
  header('X-Content-Type-Options: nosniff');
}
add_action('send_headers', 'add_security_headers');


// Replace WP default login error messages
function enjoy_custom_login_err_messages($error)
{
  // we will override only the above errors and not anything else
  if (is_int(strpos($error, 'The password you entered for')) || is_int(strpos($error, 'Invalid username'))) {
    $error = 'ERROR: Oops. Wrong login information. Lost your password?';
  }

  return $error;
}
add_filter('login_errors', 'enjoy_custom_login_err_messages');


if (function_exists('local_debug')) {
  $host = $_SERVER['HTTP_HOST'] ?? '';
  if (strpos($host, 'globegs') !== false || wp_get_environment_type() === 'local') {
    local_debug();
  }
}



// Remove service meta tags in html
remove_action('wp_head', 'feed_links_extra', 3);
remove_action('wp_head', 'feed_links', 2);
remove_action('wp_head', 'rsd_link');
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'index_rel_link');
remove_action('wp_head', 'parent_post_rel_link', 10, 0);
remove_action('wp_head', 'start_post_rel_link', 10, 0);
remove_action('wp_head', 'adjacent_posts_rel_link', 10, 0);
remove_action('wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);
remove_action('wp_head', 'wp_generator');
remove_action('wp_head', 'wp_shortlink_wp_head', 10, 0);

// Disable XMLRPC
add_filter('xmlrpc_enabled', '__return_false');
