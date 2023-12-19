<!DOCTYPE html>
<html lang="en">
<head>
    <title><?php echo get_the_title(); ?></title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO  -->
    <meta property="og:title" content="<?php echo get_field('seo_title', 'option') ?>">
    <meta property="og:description" content="<?php echo get_field('seo_description', 'option') ?>">
    <meta property="og:url" content="<?php echo site_url() ?>">
    <meta property="og:image" content="<?php echo get_field('seo_thumbnail', 'option') ?>">
    <meta property="og:image:width" content="1280">
    <meta property="og:image:height" content="630">

    <?php
        wp_head();
        $local_icon = get_template_directory_uri() . '/assets/icons/';
        $local_img  = get_template_directory_uri() . '/assets/images/';
    ?>
</head>
<body class="preload">


    