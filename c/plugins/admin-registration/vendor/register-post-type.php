<?php

/**
 * Theme Support
 */
function theme_setup() {
	add_theme_support( 'post-thumbnails' );
}
add_action( 'after_setup_theme', 'theme_setup');


// function news_pt()
// {
// 	$labels = array(
// 		'name' => _x('News', 'News'), // Page Title
// 		'singular_name' => _x('News', 'news'),
// 		'add_new' => _x('Add New', 'News'), // Button 'Add New' Name
// 		'add_new_item' => __('Create News'), // Page Create Title
// 		'edit_item' => __('Edit News'), // Page Edit Title
// 		'new_item' => __('Create News'), 
// 		'all_items' => __('All News'), // Menu
// 		'view_item' => __('View News'),
// 		'search_items' => __('Search'), // Button Search
// 		'not_found' =>  __('No Data found'), // Label Not Found Data in publish
// 		'not_found_in_trash' => __('No Data found in Trash'),  // Label Not Found Data in trush
// 		'parent_item_colon' => '',
// 		'menu_name' => __('News') // Menu Name
// 	);
	
// 	$args = array(
// 		'labels' => $labels,
// 		'public' => true,
// 		'publicly_queryable' => true,
// 		'show_ui' => true, 
// 		'show_in_menu' => true, 
// 		'query_var' => true,
// 		'rewrite' => true,
// 		'capability_type' => 'post',
// 		'has_archive' => true, 
// 		'hierarchical' => false,
// 		'menu_position' => 80,
// 		'menu_icon' => 'dashicons-wordpress-alt',
// 		'supports' => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments', )
// 	); 
// 	register_post_type('news', $args);
// }
// add_action( 'init', 'news_pt' );

