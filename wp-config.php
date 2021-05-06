<?php

// Configuration common to all environments
include_once __DIR__ . '/wp-config.common.php';

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'testwp' );

/** MySQL database username */
define( 'DB_USER', 'Aaron' );

/** MySQL database password */
define( 'DB_PASSWORD', 'Lavidaesbella.22' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'koxh5i3cfev2iki3lhmnjgxmo8tguy9e54jxvrwcev6plrbplttzd6yjibe5oexu' );
define( 'SECURE_AUTH_KEY',  'qlnvr7lrheeapshlonsyx73o9rvjsiuwbh7m8grxenrdgeiuob1suf1y3wsfbwvz' );
define( 'LOGGED_IN_KEY',    's8t5ypu8sdmafwo0rqf1geffh5pidfasiwvmmcoabuaovltv8dheiimirc2xozvk' );
define( 'NONCE_KEY',        'towg5xk1mm122gwh7o7c0fmnhvht7blgjnw9aqatcupa6rtdqssbcwqyacim7qyx' );
define( 'AUTH_SALT',        'dsxqwmbv3dgx3nftpmiwad3o3t1cdtbfk9g8vibikgubrofnlzec7vnyij1k3x2u' );
define( 'SECURE_AUTH_SALT', 'ysl965px3ammhipn6vaotid5qojqm16r5m3h9izzgfkmfvwcmyitsfokrnit8to1' );
define( 'LOGGED_IN_SALT',   '7zbfyci90yvnhz0bqbb3nwl5kts67qut5qviscc85a87bspgwkh2acvpphkesh1c' );
define( 'NONCE_SALT',       'fmz3vgptqd2c1syylzvzroa001c7l8qgqt1uhoisl7xkwxybftubih1yz0exbzft' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wpso_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
