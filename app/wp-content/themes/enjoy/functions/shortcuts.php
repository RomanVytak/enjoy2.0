<?php if (!defined('ABSPATH')) exit;

use BambooCore\Front\Front as Front;
use GuzzleHttp\Client;
use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Exception\RequestException;

Front::init();

// Shortcut to assets
function assets($path = '')
{
  echo get_template_directory_uri() . '/assets/' . $path;
}

function getAssets(string $path = '')
{
  return get_template_directory_uri() . '/assets/' . $path;
}

// Inline SVG from path
function renderSVG(string $filename = null)
{
  echo getSVG($filename);
}

// Save SVG content to variable
function getSVG(string $filename = null)
{
  if (!$filename) {
    return false;
  } else {
    $path = get_template_directory_uri() . '/assets/' . $filename . '.svg';
    return getFileFromUrl($path);
  }
}

function checkFileExists(string $url = null)
{
  if (!$url) {
    return false;
  }

  $options = [];

  $client = new Client([
    'verify'      => false,
    'timeout'     => 1,
    'http_errors' => false
  ]);

  if (wp_get_environment_type() == 'staging' && isset($_ENV["SSL_USER"]) && isset($_ENV["SSL_PASS"])) {
    $options['auth'] = [$_ENV["SSL_USER"], $_ENV["SSL_PASS"]];
  }

  try {
    $response = $client->head($url, $options);
    if ($response->getStatusCode() === 200) {
      return true;
    } else {
      return false;
    }
  } catch (\Exception $ex) {
    error_log("Failed to retrieve headers: " . $ex->getMessage());
    return false;
  }
}

// Inline SVG from url
function getFileFromUrl(string $url = null)
{
  if (!$url) {
    return null;
  }

  $cacheKey      = md5($url);
  $cacheContents = wp_cache_get($cacheKey, 'getFileFromUrl');

  if ($cacheContents !== false) {
    return $cacheContents;
  }

  if (!checkFileExists($url)) {
    return null;
  }

  $options = [];

  $client = new Client([
    'verify'          => false,
    'timeout'         => 5,
    'stream'          => true,
    'http_errors'     => false,
    'allow_redirects' => false
  ]);

  if (wp_get_environment_type() == 'staging' && isset($_ENV["SSL_USER"]) && isset($_ENV["SSL_PASS"])) {
    $options['auth'] = [$_ENV["SSL_USER"], $_ENV["SSL_PASS"]];
  }

  try {
    $response = $client->get($url, $options);

    if ($response->getStatusCode() === 200) {
      $contents = $response->getBody()->getContents();
      wp_cache_set($cacheKey, $contents, 'getFileFromUrl', 1800); // Cache for 1/2 hour
      return $contents;
    } else {
      return null;
    }
  } catch (RequestException | GuzzleException $ex) {
    error_log($ex->getMessage());
    return null;
  }
}

// Show custom logo (image with link/image only at homepage)
function renderLogo()
{
  if (is_front_page()) {
    echo '<div class="clip-logo"></div>';
  } else {
    echo '<a href="' . home_url() . '" class="clip-logo" title="' . get_bloginfo('title') . '"></a>';
  }
}

// Show short menu version (only a href tags)
function renderShortMenu($loc = null)
{
  if ($loc) {
    $menu = wp_nav_menu([
      'theme_location' => $loc,
      'echo'           => false,
      'fallback_cb'    => null,
      'depth'          => 0
    ]);
    echo strip_tags($menu, '<a>');
  } else {
    echo 'No menu location added';
  }
}

// Convert phone number to link
function phoneToLink($phone)
{
  return 'tel:' . preg_replace('/[^0-9]/', '', $phone);
}

// Convert email to link with antispam protection
function emailToLink($email)
{
  return 'mailto:' . antispambot($email, 1);
}


// Render templates
function renderPage(string $tpl_name, array $data = null)
{
  Front::__renderTemplate($tpl_name, 'pages', $data ?? get_field('page_content'));
}

function renderLayout(string $tpl_name, array $data = null)
{
  Front::__renderTemplate($tpl_name, 'layout', $data);
}

function renderSection(string $tpl_name, array $data = null)
{
  Front::__renderTemplate($tpl_name, 'sections', $data);
}

function renderComponent(string $tpl_name, array $data = null)
{
  Front::__renderTemplate($tpl_name, 'components', $data);
}

function renderBlock(string $tpl_name, array $data = null)
{
  Front::__renderTemplate($tpl_name, 'blocks', $data);
}

function renderPatternBlock($block_name)
{
  switch ($block_name) {
    case 'form-subscribe':
      $post_id = 559;
      break;
    case 'form-cta':
      $post_id = 331;
      break;
    case 'related-posts':
      $post_id = 582;
      break;
    case 'cases':
      $post_id = 1132;
      break;

    default:
      return '';
  }

  $post = get_post($post_id);
  if (empty($post)) return '';

  echo apply_filters('the_content', $post->post_content);
}


function loadComponent(string $tpl_name, array $data = null)
{
  ob_start();
  Front::__renderTemplate($tpl_name, 'components', $data);
  $var = ob_get_contents();
  ob_end_clean();
  return $var;
}

function debug_data($data, $exit = true)
{
  echo '<pre>';
  print_r($data);
  echo "</pre>";
  if ($exit) exit;
}
