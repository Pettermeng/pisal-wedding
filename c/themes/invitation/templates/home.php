<?php
/**
 * Template Name: Home
 * Template Post Type: page, post
 */   

    get_header();
    $local_img  = get_template_directory_uri() . '/assets/images/';
    $local_icon  = get_template_directory_uri() . '/assets/icons/';
?>

<!DOCTYPE html>
<html lang="en">

<body>
    <main class="invitation">
        <div class="main-background" style="background-image: url(<?php echo $local_img . 'main-bg.webp' ?>);">

            <!-- Flower Animations -->
            <div class="flower-left">
                <img src="<?php echo $local_img . 'flower-animation-left.png' ?>" alt="">
            </div>
            <div class="flower-right">
                <img src="<?php echo $local_img . 'flower-animation-right.png' ?>" alt="">
            </div>

            <!-- Loading screen -->
            <div class="container">
                <section class="loading-screen">
                    <div class="lodingDuration d-none">3700</div>
                    <div>
                        <img src="<?php echo $local_img . 'spouse-animation.gif' ?>" alt="">
                    </div>
                    <!-- <div class="row">
                        <div class="col-12">
                        </div>
                    </div> -->
                </section>
            </div>

            <div class="container">

                <!-- SplashScreen -->
                <section class="splash-screen" style="background-image: url(<?php echo $local_img . 'ticket.webp' ?>);">
                    <div class="row">
                        <div class="col-12">
                            <div class="block-item">
                                <div class="top">
                                    <h2 class="title" mb-0>សិរីមង្គលអាពាហ៏ពិពាហ៏</h2>
                                </div>
                                <div class="center">
                                    <img src="<?php echo $local_img . 'spouse-name.webp' ?>" alt="">
                                </div>
                                <div class="center-1">
                                    <button class="open-invite" style="background-image: url(<?php echo $local_img . 'open-ticket.png' ?>);">
                                        បើកសំបុត្រ
                                    </button>
                                </div>
                                <div class="bottom">
                                    <p>ថ្ងៃព្រហស្បតិ៍ ទី២៥ ខែមករា ឆ្នាំ២០២៤</p>
                                    <p>វេលាម៉ោង ០៥:០០ល្ងាច</p>
                                    <p>នៅ មជ្ឈមណ្ឌលសន្និបាត និងពិព័រណ៍អន្តរជាតិជ្រោយចង្វារ ( OCIC អគារ A )</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </section>

                <!-- Welcome -->
                <section id="welcome" class="welcome second-load">
                    <div class="row">
                        <div class="top">
                            <div class="bg" style="background-image: url(<?php echo $local_img . 'spouse-name.webp' ?>);"></div>
                        </div>
                        <div class="center">
                            <h2 class="title">សេចក្តីថ្លែងអំណរគុណ</h2>
                            <p>
                            ខ្ញុំបាទ នាងខ្ញុំ ជាមាតាបិតា កូនប្រុស កូនស្រី សូមគោរពថ្លែងអំណរគុណយ៉ាងជ្រាលជ្រៅចំពោះវត្តមានដ៏ឧត្តុង្គឧត្តម របស់ សម្តេច ឯកឧត្តម លោកជំទាវ អ្នកឧកញ៉ា ឧកញ៉ា លោក លោកស្រី អ្នកនាង កញ្ញា ក្នុងពិធីសិរីមង្គលអាពាហ៍ពិពាហ៍ កូនប្រុស កូនស្រីរបស់យើងខ្ញុំ សូមមេត្តាទទួលនូវសេចក្តីគោរពដ៌ខ្ពង់ខ្ពស់ពីយើងខ្ញុំ។
                            </p>
                        </div>
                        <div class="center-1">
                            <img src="<?php echo $local_img . 'border-line.png' ?>" alt="">
                        </div>
                        <div class="bottom">
                            <h2 class="title">សេចក្តីសូមអភ័យទោស</h2>
                            <p>
                            ខ្ញុំបាទ នាងខ្ញុំ ជាមាតាបិតា កូនប្រុស កូនស្រី
                            សូមមេត្តាខន្តី អភ័យទោស ពីសំណាក់ 
                            សម្តេច ឯកឧត្តម លោកជំទាវ អ្នកឧកញ៉ា ​ឧកញ៉ា 
                            លោក លោកស្រី អ្នកនាង កញ្ញា និងភ្ញៀវកិត្តិយសទាំងអស់ ដោយយើងខ្ញុំពុំបានជូនលិខិតអញ្ជើញដោយផ្ទាល់ដៃ ឬចំពោះកំហុសអក្ខរាវិរុទ្ធ  ក្នុងការសរសេរឈ្មោះ។ សូមមេត្តាយោគយល់ និងសូមគោរពអរគុណទុកជាមុន។
                            </p>
                        </div>
                    </div>
                </section>

                <!-- Home -->
                <section id="home" class="home second-load">
                    <div class="row">
                        <div class="col-12">
                            <div class="top">
                                <h2 class="title">សិរីមង្គលអាពាហ៍ពិពាហ៍</h2>
                                <div class="block-parent">
                                    <div class="left">
                                        <h5 class="name">លោក សុខ សុីហៀត</h5>
                                        <h5 class="name">លោកស្រី ដាន ដារី</h5>
                                    </div>
                                    <div class="right">
                                        <h5 class="name">ឯកឧត្តម ហ៊ត សីហា</h5>
                                        <h5 class="name">លោកជំទាវ តាំង ប៊ុនណា</h5>
                                    </div>
                                </div>
                                <div class="block-1">
                                    <h3>មានកិត្តិយសសូមគោរពអញ្ជើញ</h3>
                                    <p>
                                    សម្តេច ឯកឧត្តម លោកជំទាវ ​អ្នកឧកញ៉ា ​ឧកញ៉ា លោក លោក​ស្រី អ្នកនាង កញ្ញា អញ្ជើញចូលរួមជាអធិបតី និងជាភ្ញៀវកិតិ្តយស ចម្រើនជោគជ័យ សិរីសួស្ដី ក្នុង ពិធីរៀបអាពាហ៍ពិពាហ៍ កូនប្រុស-កូនស្រី របស់យើងខ្ញុំ
                                    </p>
                                </div>
                                <div class="block-2">
                                    <div class="top">
                                        <img src="https://placehold.co/120x200" alt="">
                                        <img src="https://placehold.co/120x200" alt="">
                                    </div>
                                    <div class="bottom">
                                        <div class="left">
                                            <p>កូនប្រុសនាម</p>
                                            <span>ងួន សុខពិសាល</span>
                                        </div>
                                        <div class="center">
                                            <p>ជាគូនឹង</p>
                                        </div>
                                        <div class="right">
                                            <p>កូនស្រីនាម</p>
                                            <span>តាំង លីគាង</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="block-3">
                                    <h2 class="title">THE WEDDING</h2>
                                    <div class="block-parent">
                                        <div class="left">
                                            <h5 class="name">MR. SOK SYHEATH</h5>
                                            <h5 class="name">MRS. DAN DARY</h5>
                                        </div>
                                        <div class="right">
                                            <h5 class="name">H.E. HORT SEYHA</h5>
                                            <h5 class="name">L.C.T. TAING BUNNA</h5>
                                        </div>
                                    </div>
                                    <p class="description">
                                        CORDIALLY REQUEST THE HONOR OF YOUR PRESENCE
                                        ON THE AUSPICIOUS OCCASION OF 
                                        THE WEDDING RECEPTION OF OUR CHILDREN
                                    </p>
                                    <div class="spouse-name-eng">
                                        <img src="<?php echo $local_img . 'spouse-name-eng.png' ?>" alt="">
                                    </div>
                                    <div class="event-date">
                                        <div class="label mb-2">
                                            <div class="ellipse"></div> 
                                            <p>DATE</p> 
                                        </div>
                                        <div class="date mb-2">
                                            <p>JANUARY</p> 
                                            <div class="ellipse"></div> 
                                            <p>25th</p>
                                            <div class="ellipse"></div> 
                                            <p>2024</p>
                                        </div>
                                        <p class="time mb-2">05:00 PM.</p>
                                    </div>
                                    <div class="event-location">
                                        <div class="label mb-2">
                                            <div class="ellipse"></div> 
                                            <p>LOCATION</p> 
                                        </div>
                                        <p class="description">
                                            at Chroy Changva International 
                                            Convention and Exhibition 
                                            Center ( OCIC Building A)
                                        </p>
                                        <p class="follow">Reception to follow</p>
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
                            <h2 class="title">សិរីមង្គលអាពាហ៍ពិពាហ៍</h2>
                            <div class="description">
                                <?php echo get_field('event_description', 'option') ?>
                            </div>
                            <h2 class="title-en">WEDDING PROGRAM</h2>
                            <div class="description">
                                <?php echo get_field('event_description_en', 'option') ?>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Map -->
                <section id="map" class="map second-load">
                    <div class="row">
                        <div class="col-12">
                            <div class="block">
                                <h2 class="title">ទីតាំងអាពាហ៍ពិពាហ៍</h2>
                                <img src="<?php echo $local_img . 'map.png' ?>" alt="">
                                <a href="" target="_blank" class="location-map">Google Map</a>
                                <div class="description">
                                ថ្ងៃព្រហស្បតិ៍ ទី២៥ ខែមករា ឆ្នាំ២០២៤ វេលាម៉ោង ០៥:០០ល្ងាច នៅ មជ្ឈមណ្ឌលសន្និបាត និងពិព័រណ៍អន្តរជាតិជ្រោយចង្វារ
                                ( OCIC អគារ A )
                                </div>
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
                                <h1 class="title">កាដូរអាពាហ៍ពិពាហ៍</h1>
                                <div class="description">
                                ប្រសិនបើអ្នកមានបំណងចង់ផ្ញើពរជ័យរបស់អ្នកសម្រាប់អាពាហ៍ពិពាហ៍របស់យើង អ្នកអាចផ្ញើតាមរយៈការផ្ទេរប្រាក់​តាមធនាគារទៅកាន់គណនីខាងក្រោម៖
                                </div>
                                <div class="qr">
                                    <button class="btn-collapse">Request for ABA</button>
                                    <div class="content-qr">
                                        <div class="block-qr">
                                            <div class="d-none copyme">123456789</div>
                                            <p>ABA BANK</p>
                                            <p class="number">OOO XXX XXX <button class="btn-copy"><img src="<?php echo $local_img . 'copy.png' ?>" alt=""></button></p>
                                            <p>NGOUN SOKPISAL & TANG LIKEANG</p>
                                            <img class="qr-img" src="https://placehold.co/140" alt="">
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
                            <h1 class="title">រូបភាពអាពាហ៍ពិពាហ៍</h1>
                            <div class="block-gallery">
                                <figure>
                                    <img src="https://placehold.co/1000" alt="">
                                </figure>
                                <figure>
                                    <img src="https://placehold.co/300" alt="">
                                </figure>
                            </div>
                            <h3 class="title mt-5 mb-5">សូមអរគុណ</h3>
                            <div class="spouse-img mb-4">
                                <img src="<?php echo $local_img . 'spouse-name-footer.png' ?>" alt="">
                            </div>
                            <div class="date mb-5">
                                25 . 01 . 2023
                            </div>
                            <div class="created-by">
                                <p>Created by</p>
                                <img src="<?php echo $local_img . 'biz-logo.png' ?>" alt="">
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