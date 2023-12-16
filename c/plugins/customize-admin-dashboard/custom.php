<?php 

function custom_admin_dashboard()
{
    wp_register_style( 'admin-style', plugins_url('customize-admin-dashboard/assets/style.css'), false, '1.0.1' );
    wp_enqueue_style( 'admin-style' );
}
add_action( 'admin_enqueue_scripts', 'custom_admin_dashboard' );