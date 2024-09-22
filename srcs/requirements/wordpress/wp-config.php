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

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('DB_NAME') );

/** Database username */
define( 'DB_USER', getenv('DB_USER') );

/** Database password */
define( 'DB_PASSWORD', getenv('DB_PASS'));

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define( 'AUTH_KEY',          '.v(T~s_FWD%AZ2}QHD@X1;Om&w%_h^D1A(<98L!p,3{vuNBMMAv47vgFR}{m.<+[' );
define( 'SECURE_AUTH_KEY',   '5~:t7n#~U[^do}uk=MLhTJLBc=(*I1_{dkTmHo3F[5q(34<vPzXh(,nME]44/(si' );
define( 'LOGGED_IN_KEY',     '}-RAAI~W_A3+O}A|91|^|&Vf2qx*ysb0Lg2Yzk1z>PTkp`=bg!2ICqQf0lX9Z^(5' );
define( 'NONCE_KEY',         'T(p`il2QEO0!tSg<f^X2cj;oPY1Fd{o3KNWyID z< qiq+A@dR*1RUd-;x+L|q5S' );
define( 'AUTH_SALT',         '+LVT>euBw!>It8dn3}{4~?sTYqh ie8zlz<zm,:;#5@0.qpi[rYiv?`RvtC?TBv_' );
define( 'SECURE_AUTH_SALT',  'g-D0ai~LM24 RROvq_JEn>J]`&m +5l<b:egCRK-ds/UK0XvU$tP{N_qeV#@w0e%' );
define( 'LOGGED_IN_SALT',    'c^aaHeF>g4MJ[rnAbbS2(^:j F;&w7>%Z4&EC9|+K}ZpjL)@Eo0NgN`Gk`Y(c?wI' );
define( 'NONCE_SALT',        '!48.3vY[{uD5x$nNhyqvnYkYSKC_eTJw$hyrg@j2G= |MwB^j S$e_4iPoL3V>E&' );
define( 'WP_CACHE_KEY_SALT', 'pk+zTV3sD DVk>hcop_1n5$r*z3jUa8EDh9fdVJ(`f)J/raK`vQ>i!j6_&G13BZa' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


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

define('WP_CACHE', true);
define('WP_REDIS_PORT', 6379);          // Default Redis port
define('WP_REDIS_DATABASE', 0);
define('WP_REDIS_HOST', 'redis');

if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
