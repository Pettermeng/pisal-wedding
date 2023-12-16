<!DOCTYPE html>
<html lang="en">
<head>
    <title><?php echo get_the_title(); ?></title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php
        wp_head();
        $local_icon = get_template_directory_uri() . '/assets/icons/';
        $local_img  = get_template_directory_uri() . '/assets/images/';
    ?>
</head>
<body class="preload">


    