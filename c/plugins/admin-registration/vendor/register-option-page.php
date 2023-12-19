<?php

/**
 * Registration Option Page
 * 
 * @return void
 */

function all_option_page()
{
    acf_add_options_page(array(
        'page_title' 	=> 'Splash Screen', 
        'menu_title'	=> 'Splash Screen', 
        'menu_slug' 	=> 'splash-screen', 
        'capability'	=> 'edit_posts',
        'icon_url'      => 'dashicons', 
        'position'      => 81,
        'redirect'		=> false
    ));

    acf_add_options_page(array(
        'page_title' 	=> 'Content', 
        'menu_title'	=> 'Content', 
        'menu_slug' 	=> 'content', 
        'capability'	=> 'edit_posts',
        'icon_url'      => 'dashicons', 
        'position'      => 81,
        'redirect'		=> false
    ));

    acf_add_options_page(array(
        'page_title' 	=> 'SEO', 
        'menu_title'	=> 'SEO', 
        'menu_slug' 	=> 'conseotent', 
        'capability'	=> 'edit_posts',
        'icon_url'      => 'dashicons', 
        'position'      => 81,
        'redirect'		=> false
    ));

}
add_action( 'init', 'all_option_page' );

