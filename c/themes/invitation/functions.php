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

// Wishing Actions
function wishing_actions() {
    if(isset($_POST['btn-wish'])) {
        if ( wp_verify_nonce( $_POST['_wpnonce'], 'wishing_action' ) ) {

            $name       = $_POST['username'];
            $message    = $_POST['message'];
            $bad_words  = ['hello', 'world', 'love', 'shit'];

            if(!contains($message, $bad_words) && !contains($name, $bad_words)) { 
                wp_insert_post( array(
                    'post_status'  => 'publish',
                    'post_type'    => 'wishing',
                    'post_title'   => $name,
                    'post_content' => $message
                ) );
            }  
        } 
    }
}
add_action('init', 'wishing_actions');

// Find bad wishing word
function contains($string, $array, $caseSensitive = false) {
    $stripedString = $caseSensitive ? str_replace($array, '', $string) : str_ireplace($array, '', $string);
    return strlen($stripedString) !== strlen($string);
}

// Guest wish list
function get_wish_list() {
    // date_default_timezone_set("Asia/Phnom_Penh");
    $current_date = date('Y-m-d H:i:s', strtotime('+7 hours'));
    $comment_duration = '';

    $query = new WP_Query(array(
        'post_type'   => 'wishing',
        'post_status' => 'publish',
        'order_by'    => 'id',
        'order'       => 'DESC'
    ));
    
    if($query->have_posts()) {
        while ($query->have_posts()) {
            $query->the_post();

            $post_date = get_the_date('Y-m-d H:i:s');
            $d1 = new DateTime($post_date);
            $d2 = new DateTime($current_date);
            $interval = $d2->diff($d1);

            if($interval->format('%d') > 0) {
                $comment_duration = $interval->format('%d day ago');
            }
            elseif($interval->format('%H') > 0) {
                $comment_duration = $interval->format('%H h ago');
            }
            elseif($interval->format('%I') > 0 ) {
                $comment_duration = $interval->format('%I minute ago');
            }
            elseif($interval->format('%d') == 00 || $interval->format('%H') == 00 && $interval->format('%I') > 0) {
                $comment_duration = '1 minute ago';
            }

            echo '
                <figure>
                    <div class="name">'.get_the_title().'</div>
                    <div class="duration">'.$comment_duration.'</div>
                    <div class="message">'.get_the_content().' </div>
                </figure>
            ';
        }    
    }
}