
$('document').ready(function() {

    //Open Ticket
    $('.open-invite').click(function() {

        var loadingScreen = $('.lodingDuration').text();
        $('.splash-screen').slideUp(1000);
        $('.loading-screen').slideDown(1000);

        $('.loading-screen').fadeOut(parseInt(loadingScreen));
        $('.block-item').fadeOut(350);
        $('.second-load').fadeIn(parseInt(loadingScreen));

        setTimeout(function(){
            $('.component-menu').addClass('show')
        }, parseInt(loadingScreen) + 1000);
        
    });


    // Copy text to clipboard
    $(".btn-copy").click(function (event) {
        var copiedtext = $(".copyme").text();
        event.preventDefault();
        CopyToClipboard(copiedtext, true, "Value copied");
    });

    //Collapse QR Code
    $('.btn-collapse').click(function () {
        $('.content-qr').slideToggle(700);
    })

    $('.menu a').click(function() {
        $('.menu a').removeClass('border-top');
        $(this).addClass('border-top');
        
        $('.menu a').removeClass('current');
        $(this).addClass('current');
    });


    /**
     * Easy selector helper function
     */
    const select = (el, all = false) => {
        el = el.trim()
        if (all) {
        return [...document.querySelectorAll(el)]
        } else {
        return document.querySelector(el)
        }
    }
    /**
     * Easy event listener function
    */
    const on = (type, el, listener, all = false) => {
        if (all) {
        select(el, all).forEach(e => e.addEventListener(type, listener))
        } else {
        select(el, all).addEventListener(type, listener)
        }
    }

    /**
    * Easy on scroll event listener 
    */
    const onscroll = (el, listener) => {
        el.addEventListener('scroll', listener)
    }

    /**
     * Navbar links active state on scroll
     */
    let navbarlinks = select('#navbar .scrollto', true)
    const navbarlinksActive = () => {
        let position = window.scrollY + 200
        navbarlinks.forEach(navbarlink => {
        if (!navbarlink.hash) return
        let section = select(navbarlink.hash)
        if (!section) return
        if (position >= section.offsetTop && position <= (section.offsetTop + section.offsetHeight)) {
            navbarlink.classList.add('active')
        } else {
            navbarlink.classList.remove('active')
        }
        })
    }
    window.addEventListener('load', navbarlinksActive)
    onscroll(document, navbarlinksActive)

    /**
   * Scrolls to an element with header offset
   */
    const scrollto = (el) => {
        let header = select('#header')
        let offset = header.offsetHeight

        if (!header.classList.contains('header-scrolled')) {
        offset -= 10
        }

        let elementPos = select(el).offsetTop
        window.scrollTo({
        top: elementPos - offset,
        behavior: 'smooth'
        })
    }


});


// Copy value to clipboard
function CopyToClipboard(value, showNotification, notificationText) {
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val(value).select();
    document.execCommand("copy");
    $temp.remove();

    if (typeof showNotification === 'undefined') {
        showNotification = true;
    }
    if (typeof notificationText === 'undefined') {
        notificationText = "Copied to clipboard";
    }

    var notificationTag = $("div.copy-notification");
    if (showNotification && notificationTag.length == 0) {
        notificationTag = $("<div/>", { "class": "copy-notification", text: notificationText });
        $("body").append(notificationTag);

        notificationTag.fadeIn("slow", function () {
            setTimeout(function () {
                notificationTag.fadeOut("slow", function () {
                    notificationTag.remove();
                });
            }, 1000);
        });
    }
}
