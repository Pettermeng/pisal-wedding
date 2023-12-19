<?php
/**
 * Template Name: Home
 * Template Post Type: page, post
 */   

    get_header();
    global $q_config;
    $local_img  = get_template_directory_uri() . '/assets/images/';
    $local_icon  = get_template_directory_uri() . '/assets/icons/';
?>

<!DOCTYPE html>
<html lang="en">

<body>
    <main class="invitation">
        <div class="main-background" style="background-image: url(<?php echo $local_img . 'main-bg.webp'; ?>);">

            <!-- Flower Animations -->
            <div class="flower-left">
                <img src="<?php echo $local_img . 'flower-animation-left.png'; ?>">
            </div>
            <div class="flower-right">
                <img src="<?php echo $local_img . 'flower-animation-right.png'; ?>">
            </div>

            <!-- Loading screen -->
            <div class="container">
                <section class="loading-screen">
                    <div class="lodingDuration d-none">3700</div>
                    <div>
                        <img src="<?php echo $local_img . 'spouse-animation.gif'; ?>">
                    </div>
                    <!-- <div class="row">
                        <div class="col-12">
                        </div>
                    </div> -->
                </section>
            </div>

            <!-- SplashScreen -->
            <div class="container">
                <section class="splash-screen" style="background-image: url(<?php echo $local_img . 'ticket.webp'; ?>)">
                    <div class="row">
                        <div class="col-12">
                            <div class="block-item">
                                <div class="top">
                                    <h2 class="title" mb-0><?php echo get_field('splash_screen_title', 'option'); ?></h2>
                                </div>
                                <div class="center">
                                    <img src="<?php echo get_field('splash_screen_logo', 'option'); ?>">
                                </div>
                                <div class="center-1">
                                    <button class="open-invite" style="background-image: url(<?php echo $local_img . 'open-ticket.png' ?>);">
                                        <?php echo get_field('splash_screen_ticket_label', 'option'); ?>
                                    </button>
                                </div>
                                <div class="bottom">
                                    <?php echo get_field('splash_screen_description', 'option'); ?>
                                </div>
                            </div>
                        </div>
                    </div>

                </section>

                <!-- Welcome -->
                <section id="welcome" class="welcome second-load">
                    <div class="row">
                        <div class="top">
                            <div class="bg" style="background-image: url(<?php echo get_field('splash_screen_logo', 'option'); ?>)"></div>
                        </div>
                        <div class="center">
                            <h2 class="title"><?php echo get_field('thanks_title', 'option'); ?></h2>
                            <p><?php echo get_field('thanks_description', 'option'); ?></p>
                        </div>
                        <div class="center-1">
                            <img src="<?php echo $local_img . 'border-line.png' ?>" alt="">
                        </div>
                        <div class="bottom">
                            <h2 class="title"><?php echo get_field('sorry_title', 'option'); ?></h2>
                            <p><?php echo get_field('sorry_description', 'option'); ?></p>
                        </div>
                    </div>
                </section>

                <!-- Home -->
                <section id="home" class="home second-load">
                    <div class="row">
                        <div class="col-12">
                            <div class="top">
                                <?php
                                    $w_program = get_field('g_wedding_program', 'option'); // Wedding Program
                                    $g_wedding = get_field('g_wedding', 'option'); // The Wedding

                                    if( have_rows('g_wedding', 'option') ):
                                        while( have_rows('g_wedding', 'option') ): the_row();

                                            // Khmer
                                            $parent_a = get_sub_field('wedding_parents_a');
                                            $parent_b = get_sub_field('wedding_parents_b');
                                            $w_invite_label = get_sub_field('wedding_invite_label');
                                            $w_description = get_sub_field('wedding_description');

                                            // English
                                            $parent_c = get_sub_field('wedding_parents_a_en');
                                            $parent_d = get_sub_field('wedding_parents_b_en');
                                            $w_invite_label_en = get_sub_field('wedding_invite_label_en');
                                            $w_description_en = get_sub_field('wedding_description_en');


                                            // Groom and Bride
                                            $g_bride = get_sub_field('g_wedding_bride');
                                            $g_groom = get_sub_field('g_wedding_groom');
                                            $bride_and_groom_logo = get_sub_field('wedding_bride_and_groom_logo', 'option');

                                            // Date
                                            $w_location = get_sub_field('wedding_location');
                                            $date = get_sub_field('wedding_date');
                                            $day = date('dS', strtotime($date));
                                            $month = date('F', strtotime($date));
                                            $year = date('Y', strtotime($date));
                                            $hour = date('h:i A', strtotime($date));
                                        endwhile;
                                    endif;
                                ?>

                                <h2 class="title"><?php echo $g_wedding['wedding_title']; ?></h2>
                                <div class="block-parent">
                                    <div class="left">
                                        <h5 class="name"><?php echo $parent_a['fathers_name']; ?></h5>
                                        <h5 class="name"><?php echo $parent_a['mother_name']; ?></h5>
                                    </div>
                                    <div class="right">
                                        <h5 class="name"><?php echo $parent_b['fathers_name']; ?></h5>
                                        <h5 class="name"><?php echo $parent_b['mother_name']; ?></h5>
                                    </div>
                                </div>
                                <div class="block-1">
                                    <h3><?php echo $w_invite_label; ?></h3>
                                    <p><?php echo $w_description; ?></p>
                                </div>
                                <div class="block-2">
                                    <div class="top">
                                        <img src="<?php echo $g_groom['photo']; ?>" alt="">
                                        <img src="<?php echo $g_bride['photo']; ?>" alt="">
                                    </div>
                                    <div class="bottom">
                                        <div class="left">
                                            <p>កូនប្រុសនាម</p>
                                            <span><?php echo $g_groom['name']; ?></span>
                                        </div>
                                        <div class="center">
                                            <p>ជាគូនឹង</p>
                                        </div>
                                        <div class="right">
                                            <p>កូនស្រីនាម</p>
                                            <span><?php echo $g_bride['name']; ?></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="block-3">
                                    <h2 class="title"><?php echo $g_wedding['wedding_title_en']; ?></h2>
                                    <div class="block-parent">
                                        <div class="left">
                                            <h5 class="name"><?php echo $parent_c['fathers_name']; ?></h5>
                                            <h5 class="name"><?php echo $parent_c['mother_name']; ?></h5>
                                        </div>
                                        <div class="right">
                                            <h5 class="name"><?php echo $parent_d['fathers_name']; ?></h5>
                                            <h5 class="name"><?php echo $parent_d['mother_name']; ?></h5>
                                        </div>
                                    </div>
                                    <p class="description"><?php echo $w_description_en; ?></p>
                                    <div class="spouse-name-eng">
                                        <img src="<?php echo $bride_and_groom_logo; ?>">
                                    </div>
                                    <div class="event-date">
                                        <div class="label mb-2">
                                            <div class="ellipse"></div> 
                                            <p>DATE</p> 
                                        </div>
                                        <div class="date mb-2">
                                            <p><?php echo $month; ?></p> 
                                            <div class="ellipse"></div> 
                                            <p><?php echo $day; ?></p>
                                            <div class="ellipse"></div> 
                                            <p><?php echo $year; ?></p>
                                        </div>
                                        <p class="time mb-2"><?php echo $hour; ?></p>
                                    </div>
                                    <div class="event-location">
                                        <div class="label mb-2">
                                            <div class="ellipse"></div> 
                                            <p>LOCATION</p> 
                                        </div>
                                        <div class="description"><?php echo $w_location; ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Event -->
                <section id="event" class="event second-load">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="title"><?php echo $w_program['program_title']; ?></h2>
                            <div class="description"><?php echo $w_program['program_description']; ?></div>
                            <h2 class="title-en"><?php echo $w_program['program_title_en']; ?></h2>
                            <div class="description"><?php echo $w_program['program_description_en']; ?></div>
                        </div>
                    </div>
                </section>

                <!-- Map -->
                <section id="map" class="map second-load">
                    <div class="row">
                        <div class="col-12">
                            <div class="block">
                                <h2 class="title"><?php echo get_field('map_title', 'option'); ?></h2>
                                <img src="<?php echo get_field('map_photo', 'option'); ?>">
                                <a href="<?php echo get_field('map_google', 'option'); ?>" target="_blank" class="location-map">Google Map</a>
                                <div class="description"><?php echo get_field('map_description', 'option'); ?></div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Wish -->
                <section id="wish" class="wish second-load">
                    <div class="row">
                        <div class="col-12">
                            <h1 class="title">សារជូនពរ</h1>
                            <form action="" method="post">
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">ពីខ្ញុំ</span>
                                    <input type="text" class="form-control text-box" placeholder="ឈ្មោះ" name="username">
                                </div>
                                <div class="block">
                                    <textarea name="" id="" cols="20" rows="5" class="form-control" placeholder="សរសេរសារជូនពររបស់អ្នកទៅកាន់កូនក្រមុំនិងកូនកំលោះ"></textarea>
                                    <input type="submit" class="button" name="btn-wish" value="ផ្ញើរ">
                                </div>
                            </form>
                            <div class="wishing-list">
                                <figure>
                                    <div class="name">Vanda</div>
                                    <div class="duration">1h ago</div>
                                    <div class="message">
                                        Dear Pisal & Likeang... congratulations on your wedding! Lots of love today and beyond....❤
                                    </div>
                                </figure>
                                <figure>
                                    <div class="name">G Devit</div>
                                    <div class="duration">1h ago</div>
                                    <div class="message">
                                        Dear Pisal & Likeang... congratulations on your wedding! Lots of love today and beyond....❤
                                    </div>
                                </figure>
                                <figure>
                                    <div class="name">Preab Sovath</div>
                                    <div class="duration">1h ago</div>
                                    <div class="message">
                                        Dear Pisal & Likeang... congratulations on your wedding! Lots of love today and beyond....❤
                                    </div>
                                </figure>
                            </div>

                            <div class="gift">
                                <h1 class="title"><?php echo get_field('gift_title', 'option'); ?></h1>
                                <div class="description"><?php echo get_field('gift_description', 'option'); ?></div>
                                <div class="qr">
                                    <button class="btn-collapse">Request for ABA</button>
                                    <div class="content-qr">
                                        <div class="block-qr">
                                            <?php $bank = get_field('g_bank', 'option'); ?>
                                            <div class="d-none copyme"><?php echo $bank['card_number']; ?></div>
                                            <p><?php echo $bank['bank_name']; ?></p>
                                            <p class="number"><?php echo $bank['card_number']; ?> <button class="btn-copy"><img src="<?php echo $local_img . 'copy.png' ?>" alt=""></button></p>
                                            <p><?php echo $bank['card_name']; ?></p>
                                            <img class="qr-img" width="140px" src="<?php echo $bank['qr_code']; ?>" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Gallery -->
                <section id="gallery" class="gallery second-load">
                    <div class="row">
                        <div class="col-12">
                            <h1 class="title"><?php echo get_field('gallery_title', 'option'); ?></h1>
                            <div class="block-gallery">
                                <?php 
                                    $gallery = get_field('gallery', 'option');
                                    foreach($gallery as $photo) {
                                        echo '
                                        <figure>
                                            <img src="'.$photo.'">
                                        </figure>';
                                    }
                                ?>
                            </div>
                            <h3 class="title mt-5 mb-5">សូមអរគុណ</h3>
                            <div class="spouse-img mb-4">
                                <img src="<?php echo get_field('logo_footer', 'option'); ?>">
                            </div>
                            <div class="date mb-5">
                                <?php echo date('d', strtotime($date)) .' . '. date('m', strtotime($date)) . ' . '. date('Y', strtotime($date)); ?>
                            </div>
                            <div class="created-by">
                                <p>Created by</p>
                                <img src="<?php echo $local_img . 'biz-logo.png' ?>">
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <div class="container second-load">
                <section class="component-menu">
                    <div class="row nav-menu">
                        <div class="col-12">
                            <nav id="navbar">
                                <ul class="menu">
                                    <li>
                                        <a class="scroll-to" href="#home">
                                            <div class="border"></div>
                                            <div class="icon">
                                                <img src="<?php echo $local_icon . 'home.png' ?>" alt="">
                                            </div>
                                            <label for="">Home</label>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="scroll-to" href="#event">
                                            <div class="border"></div>
                                            <div class="icon">
                                                <img src="<?php echo $local_icon . 'clipboard.png' ?>" alt="">
                                            </div>
                                            <label for="">Event</label>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="scroll-to" href="#map">
                                            <div class="border"></div>
                                            <div class="icon">
                                                <img src="<?php echo $local_icon . 'location.png' ?>" alt="">
                                            </div>
                                            <label for="">Map</label>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="scroll-to" href="#wish">
                                            <div class="border"></div>
                                            <div class="icon">
                                                <img src="<?php echo $local_icon . 'message.png' ?>" alt="">
                                            </div>
                                            <label for="">Wish</label>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="scroll-to" href="#gallery">
                                            <div class="border"></div>
                                            <div class="icon">
                                                <img src="<?php echo $local_icon . 'gallery.png' ?>" alt="">
                                            </div>
                                            <label for="">Gallery</label>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>
</body>

</html>
<?php
    get_footer();
?>