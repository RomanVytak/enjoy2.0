<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// Include local configuration
if (file_exists(dirname(__FILE__) . '/local-config.php')) {
	include(dirname(__FILE__) . '/local-config.php');
}

define('WP_HOME','http://enjoy.loc/');
define('WP_SITEURL','http://enjoy.loc/');

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '=?F0$<3?~}YwrAbf_v1]Tw`Z!|qUPYt`G.2Og&@Ma;}:6BgI.C2%0J0P6gZ:cuSU' );
define( 'SECURE_AUTH_KEY',   'pN[>pBi,DwqO,BVTx2ylc&n(xU-bv(=@<Ua5z:hQkUD5v[gnD#^+vArt}iM5?Iy&' );
define( 'LOGGED_IN_KEY',     'a]k-sJp8V0}*y8Oi8tg*]AB+0XhAfN%;dJ/Nf k;0P-`N9g]m.#G_##nl6i@8h^E' );
define( 'NONCE_KEY',         'mCIe_BC~&4k.C+&!5P^bklrXbA,gra@3G+K2}M)BRECP8$:cLy(B+:dAa)hS*6Bz' );
define( 'AUTH_SALT',         'Jxo`&}VQ<aA5z{PuouB*H{9Prb))qd$Rr6@!~D*MbAQYhSdEGtN_>>frz8mt}:GV' );
define( 'SECURE_AUTH_SALT',  '20*%3xb2#-KKL,/1v}|ZNQ31KqWIx3*b+!Gx:0*m88oa4i1DUd]>4o|yc(=KV<5O' );
define( 'LOGGED_IN_SALT',    'Ydqi4e>iy4kQB41R0v1Djdt@n,WEAfB)/;V9.Y`6It%NT>>E}.9XXG}UPKL~pHp_' );
define( 'NONCE_SALT',        'axErj}So@soMv&E7k=w[-uAU{v nt.3dF$6[*$wa;F9vosmvaD0U-;2vxxbD#&_D' );
define( 'WP_CACHE_KEY_SALT', 'K$]qgS4$oXwws)ClRcpxp?F@Y+_m^~NplMDkg/Ckr|!s$vt8 ^o5aFAGcNPW*/:V' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'bb_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define('ALLOW_UNFILTERED_UPLOADS', true);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
