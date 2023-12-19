<?php

$domain_name = $_SERVER['HTTP_HOST'];
$environment = '';

switch( $domain_name )
{	
	case "online-invitation.com":
		$environment = 'production';
	break;

	case "staging.online-invitation.com":
		$environment = 'staging';
	break;

	default:
		$environment = 'development';
	break;
}

$DB_NAME	=	[
	"production"	=>	"",
	"staging"		=>	"",
	"development"	=>	"wedding",
	// "development"	=>	"online_invitation",
];

$DB_USER	=	[
	"production"	=>	"",
	"staging"		=>	"",
	"development"	=>	"root",
];

$DB_PASSWORD	=	[
	"production"	=>	"",
	"staging"		=>	"",
	"development"	=>	"w36@b12!",
];

$DB_HOST	=	[
	"production"	=>	"",
	"staging"		=>	"",
	"development"	=>	"localhost",
];

$DOMAIN_CURRENT_SITE  =  [
	"production"   =>  "https://online-invitation.com",
	"staging"      =>  "http://staging.online-invitation.com",
	"development"  =>  "http://dev.wedding.local",
	// "development"  =>  "http://192.168.90.144/pisal-wedding",
];


define( 'DB_NAME', $DB_NAME[$environment] );

/** MySQL database username */
define( 'DB_USER', $DB_USER[$environment] );

/** MySQL database password */
define( 'DB_PASSWORD', $DB_PASSWORD[$environment] );

/** MySQL hostname */
define( 'DB_HOST', $DB_HOST[$environment] );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
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
define( 'AUTH_KEY',         'lBy[Thpg@E#l^[s<:fB?>b$jO-.G?rYKT$%`vt-.lTTmM%NGc.=ok3/yoZ9*1B#K' );
define( 'SECURE_AUTH_KEY',  'g)SbPIx0CDR=sB7ME&ORh,Aki8F*zA1&IkO}@L2vA&wl0Me^vtw-~TFXJ3Ao9(/*' );
define( 'LOGGED_IN_KEY',    'GLHVq~0~+4)QUaK^QBH1|9I:|~@gJ-I>cyEtctb)13*P3r 6%Y$9H`KyzV-[cnIY' );
define( 'NONCE_KEY',        'U(fYyG0oYww{LJ6Pvh#ncR yk,)Ra]QE+ZOg{P6IQ5R>wE{!Q&TCBvVc9zB{` rV' );
define( 'AUTH_SALT',        'RjkNGuaz+=tL}FgYFTU^CY?5b1bqj-]i&*+(56l9Zj|UT4|+?#c.#:t*A*]rghf_' );
define( 'SECURE_AUTH_SALT', 'U:rUL@l?pDR,6_@k7x/x}:G_t9Ldt<>yTz2+QzqHfR*Tl|>4x7$]N^H3:cY/dZKz' );
define( 'LOGGED_IN_SALT',   'aK~`0G[S%>acOci*YHwDk^Rwtb+DtC4pqkic9.,+b2r-,.NXjg|X2rb6GH$hp?cD' );
define( 'NONCE_SALT',       '1Gu.!GFng$+`wt=l&S)-OOs;o~EE8pz|Fmz6j^+XK)NXNGB]{6^Bq=TLtiu-Yd*v' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'oi_';

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );


/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

//Rename wp-content folder
define ('WP_CONTENT_FOLDERNAME', 'c');

//Define new directory path
define ('WP_CONTENT_DIR', ABSPATH . WP_CONTENT_FOLDERNAME);
 
//Define new directory URL
define('WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST'] . '/');
// define('WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST'] . '/pisal-wedding/');
define('WP_CONTENT_URL', WP_SITEURL . WP_CONTENT_FOLDERNAME);

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
