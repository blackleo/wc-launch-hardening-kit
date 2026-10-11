<?php
// Add ABOVE the line "That's all, stop editing!" in wp-config.php

define( 'DISALLOW_FILE_EDIT', true );   // no theme/plugin editor in admin
define( 'FORCE_SSL_ADMIN', true );      // HTTPS for login + admin
define( 'WP_AUTO_UPDATE_CORE', 'minor' );
define( 'WP_DEBUG', false );
define( 'WP_DEBUG_DISPLAY', false );
define( 'WP_POST_REVISIONS', 10 );
define( 'EMPTY_TRASH_DAYS', 14 );
@ini_set( 'display_errors', '0' );

// If a proxy/CDN terminates TLS:
if ( isset( $_SERVER['HTTP_X_FORWARDED_PROTO'] ) && 'https' === $_SERVER['HTTP_X_FORWARDED_PROTO'] ) {
	$_SERVER['HTTPS'] = 'on';
}
// Generate unique keys/salts: https://api.wordpress.org/secret-key/1.1/salt/
