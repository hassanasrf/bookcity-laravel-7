<?php
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
define( 'DB_NAME', 'bookcitylaravelwp_db' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

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
define( 'AUTH_KEY',         'LF(YCr{HY~H>FMDY8p&C{kgHn?~b.z7f*lQ-C=p0Jv4+EV~7{~UIsD?M:9(eAB9]' );
define( 'SECURE_AUTH_KEY',  ':&>9OI/7A}e2=LXaDTs.2[EW7FzIZU)^v^=jI@-M9.Ve]^6#S#/xuS|bs>R!Z;t ' );
define( 'LOGGED_IN_KEY',    'Dr86ud0pygfZB~$j.L6?WsuPukN;t ja<_qsp]:].%! [,qdGTI_se; &1MYL(dh' );
define( 'NONCE_KEY',        ' Ts{d>ypr$Yr12F}IV~(0];!dYQQ@CFr;r_3T{.43Mou).`j>,pMRrv -wk93:{|' );
define( 'AUTH_SALT',        'Z3<fS:Yc1QTsjQp62GpCp40Tt~FU>`Wnp3D2EGH+`gIKIP$gwQ9nO_1L;e?xJmsY' );
define( 'SECURE_AUTH_SALT', 'PT~6_0;%w,-4N*Q6L.YKjH%eBg}R50z^8IC[bu01Q(@YagNqGv)V{0Ow1!/j3)Xr' );
define( 'LOGGED_IN_SALT',   'X>]bI,/&;&@csY/Kvg^(G~ ~<AfN@J|S[J43C;GVh*#[h)XNU9eN:hyis+!#Aqy=' );
define( 'NONCE_SALT',       '?F@E qp`BdMBpVF<s [c.BX^Nc~ >l`IJ{8gmX9$R{HIB.GR3=h1eE,PH`+j-/_#' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'book_L02_';

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
