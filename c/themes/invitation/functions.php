<?php
/*
 * Function Name: Enqueue style and scripts
 * Description: Enqueue style and scripts for font-end.
 * Version: 1.1
 * Author: 
 * Author URI: 
 */
$local_img  = get_template_directory_uri() . '/assets/images/';

function enqueue_style_and_script() {
    
    $dir = get_template_directory_uri();

    // style    
    wp_enqueue_style('aos', $dir . '/assets/css/aos.css', '0.0.1', 'all');
    wp_enqueue_style('theme', $dir . '/assets/css/theme.css', '0.0.1', 'all');
    wp_enqueue_style('boostrap', $dir . '/assets/css/bootstrap.min.css', '5.0.0', 'all');

    // Other JS
    wp_enqueue_script( 'jquery-theme', $dir . '/assets/js/jquery.min.js', array(), '3.6.0', true );
    wp_enqueue_script( 'jquery-cookie', $dir . '/assets/js/jquery-cookie.js', array(), '1.4.1', true );
    wp_enqueue_script( 'aos', $dir . '/assets/js/aos.js', array(), '3.6.0', true );
    wp_enqueue_script( 'theme', $dir . '/assets/js/theme.js', array(), '0.0.1', true );
    wp_enqueue_script( 'bootstrap', $dir . '/assets/js/bootstrap.min.js', array(), '5.0.0', true );

}
add_action( 'wp_enqueue_scripts', 'enqueue_style_and_script' );

// Init Admin Style
add_action( 'admin_enqueue_scripts', 'load_admin_styles' );
add_action('login_head', 'load_admin_styles'); 
function load_admin_styles() {
    $dir = get_template_directory_uri();
    wp_enqueue_style( 'admin_css', $dir . '/assets/css/backend.css', false, '1.0.0' );
}


// @Date Format
function dateFormat($field, $format) {
    $date        = get_field($field);
    $dateCreate  = date_create($date);
    $dateFormat  =  date_format($dateCreate, $format);
    return $dateFormat;
}

add_filter('admin_title', 'my_admin_title', 10, 2);
function my_admin_title($admin_title, $title) {
    return 'Admin | '.$title;
}