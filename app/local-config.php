<?php

require_once dirname(__FILE__) . DIRECTORY_SEPARATOR . 'vendor' . DIRECTORY_SEPARATOR . 'autoload.php';

use Dotenv\Dotenv as Dotenv;


function local_debug()
{
  // Auto login
  if (!is_user_logged_in()) {
    $user = get_user_by('login', 'enjoyDevAdmin');
    if (!is_wp_error($user)) {
      wp_set_current_user($user->ID, $user->data->user_login);
      wp_set_auth_cookie($user->ID);
      do_action('wp_login', $user->data->user_login, $user);
    }
  }
}

// Determine the environment
function getEnvironment(): string
{
  $host = $_SERVER['HTTP_HOST'] ?? '';
  $parts = explode('.', $host);

  if (end($parts) === 'loc') {
    return 'local';
  } elseif ($parts[0] === 'tests' || strpos($host, 'globegs') !== false) {
    return 'staging';
  }
  return 'production';
}

// Load environment variables
function loadEnv(string $environment): Dotenv
{
  $envDir  = ($environment === 'local') ? dirname(__DIR__) : __DIR__;
  $envFile = ($environment === 'local') ? ".env.local" : ".env";
  $filePath = $envDir . DIRECTORY_SEPARATOR . $envFile;

  if (!file_exists($filePath) || !is_readable($filePath)) {
    throw new RuntimeException("Environment file not found or not readable at path: {$filePath}");
  }

  $dotenv = Dotenv::createImmutable($envDir, $envFile);
  $dotenv->load();
  return $dotenv;
}

// Configure system based on environment
function setupConfig(string $environment): void
{
  switch ($environment) {
    case 'local':
      define('WP_ENVIRONMENT_TYPE', 'local');
      define('WP_DEBUG', false);
      define('WP_DEBUG_DISPLAY', false);
      define('WP_DEBUG_LOG', true);
      break;
    case 'staging':
      define('WP_ENVIRONMENT_TYPE', 'staging');
      define('WP_DEBUG', true);
      define('WP_DEBUG_DISPLAY', false);
      define('WP_DEBUG_LOG', true);
      break;
    default:
      define('WP_ENVIRONMENT_TYPE', 'production');
      define('WP_DEBUG', false);
      break;
  }

  // DB Configuration
  define('DB_NAME', $_ENV['DB_NAME']);
  define('DB_USER', $_ENV['DB_USER']);
  define('DB_PASSWORD', $_ENV['DB_PASSWORD']);
  define('DB_HOST', $_ENV['DB_HOST']);

  // More system configurations...
  define('WP_MEMORY_LIMIT', ini_get('memory_limit'));
  define('CONCATENATE_SCRIPTS', false);
  define('WP_DEFAULT_THEME', 'enjoy');
  define('CORE_UPGRADE_SKIP_NEW_BUNDLED', true);
  define('DISALLOW_FILE_EDIT', true);
  define('WP_POST_REVISIONS', false);
  define('ACF_PRO_LICENSE', 'b3JkZXJfaWQ9MTM3MTM4fHR5cGU9ZGV2ZWxvcGVyfGRhdGU9MjAxOC0wOC0xMyAxMjowNTo0Mw==');
}

// Main Execution
$environment = getEnvironment();
$dotenv = loadEnv($environment);
setupConfig($environment);
