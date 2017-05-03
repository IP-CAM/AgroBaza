/*

  Template Name: Subas Ecommerce Responsive Bootstrap Template
  Description: This is html5 template
  Author: codecarnival
  Version: 1.0
  Design and Developed by: codecarnival
  NOTE: If you have any note put here.

*/
/*================================================
[  Table of contents  ]
================================================

    1. jQuery MeanMenu
    2. wow js active
    3. jQuery Nivo Slider (home-2)
    4. Slick Carousel
        4.1 Active Slider - 1 (home-1)
        4.2 Active By Brand
        4.3 Active Featured Product
        4.4 Active Blog
        4.5 Active Blog 2
        4.6 Active Related Product
        4.7 Active Team Member
    5. Countdown
    6. ScrollUp
    7. Tooltip
    8. Treeview active
    9. Price Slider
    10. Fancybox active
    11. Elevate Zoom active
    12. single-product-zoom-image carousel
    13. Cart Plus Minus Button
    14. bootstrap accordion one open at a time
    15. Cart tab menu active
    16. Blog page manu dropdown
    17. Background Toutube Video
    18. STICKY sticky-header

======================================
[ End table content ]
======================================*/

(function($) {
    "use strict";

    // var cont = $('#content').html();
    // $('#content').html('<div class="mh600">' + cont + '</div>');
    // $('body>.container-fluid>.row').addClass('wrapper');

    /* ********************************************
        1. jQuery MeanMenu
    ******************************************** */
    jQuery('nav#dropdown').meanmenu();

    /* ********************************************
        2. wow js active
    ******************************************** */
    new WOW().init();
    /* ********************************************
        3. jQuery Nivo Slider (home-2)
    ******************************************** */
    $('#nivoslider-2').nivoSlider({
        directionNav: true,
        animSpeed: 1000,
        effect: 'random',
        slices: 18,
        pauseTime: 8000,
        pauseOnHover: true,
        controlNav: true,
        prevText: '<i class="zmdi zmdi-long-arrow-up"></i>',
        nextText: '<i class="zmdi zmdi-long-arrow-down"></i>'
    });

    /* ********************************************
        4. Slick Carousel
    ******************************************** */

    /* -------------------------------------
            4.1 Active Slider - 1 (home-1)
    ------------------------------------- */
    $('.active-slider-1').slick({
        autoplay: true,
        autoplaySpeed: 8000,
        speed: 1000,
        dots: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        prevArrow: '<button type="button" class="arrow-prev"><i class="zmdi zmdi-long-arrow-left"></i></button>',
        nextArrow: '<button type="button" class="arrow-next"><i class="zmdi zmdi-long-arrow-right"></i></button>',
    });

    /*----------------------------
            4.2 Active By Brand
    ------------------------------ */
    $('.active-by-brand, .js_autofeatured').slick({
        speed: 700,
        arrows: true,
        dots: false,
        slidesToShow: 4,
        slidesToScroll: 1,
        prevArrow: '<button type="button" class="arrow-prev"><i class="zmdi zmdi-long-arrow-left"></i></button>',
        nextArrow: '<button type="button" class="arrow-next"><i class="zmdi zmdi-long-arrow-right"></i></button>',
        responsive: [
            { breakpoint: 1280, settings: { slidesToShow: 3 } },
            { breakpoint: 991, settings: { slidesToShow: 2 } },
            { breakpoint: 767, settings: { slidesToShow: 2 } },
            { breakpoint: 479, settings: { slidesToShow: 1 } }
        ]
    });

    $('.thumbnails').slick({
        // speed: 700,
        arrows: true,
        dots: false,
        slidesToShow: 7,
        centerMode: true,
        variableWidth: true,
        slidesToScroll: 1,
        prevArrow: '<button type="button" class="arrow-prev"><i class="zmdi zmdi-long-arrow-left"></i></button>',
        nextArrow: '<button type="button" class="arrow-next"><i class="zmdi zmdi-long-arrow-right"></i></button>',
        responsive: [
            { breakpoint: 991, settings: { slidesToShow: 3 } },
            { breakpoint: 767, settings: { slidesToShow: 1 } },
            { breakpoint: 479, settings: { slidesToShow: 1 } }
        ]
    });

    /*------------------------------------
            4.3 Active Featured Product
    ----------------------------------- */
    $('.active-featured-product').slick({
        speed: 700,
        arrows: true,
        dots: false,
        slidesToShow: 4,
        slidesToScroll: 1,
        prevArrow: '<button type="button" class="arrow-prev"><i class="zmdi zmdi-long-arrow-left"></i></button>',
        nextArrow: '<button type="button" class="arrow-next"><i class="zmdi zmdi-long-arrow-right"></i></button>',
        responsive: [
            { breakpoint: 991, settings: { slidesToShow: 3, } },
            { breakpoint: 767, settings: { slidesToShow: 1, } },
            { breakpoint: 479, settings: { slidesToShow: 1, } },
        ]
    });

    /*----------------------------
            4.4 Active Blog
    ------------------------------ */
    $('.active-blog').slick({
        speed: 700,
        arrows: false,
        dots: false,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
            { breakpoint: 991, settings: { slidesToShow: 2, } },
            { breakpoint: 767, settings: { slidesToShow: 1, } },
            { breakpoint: 479, settings: { slidesToShow: 1, } },
        ]
    });

    /*----------------------------
            4.5 Active Blog 2
    ------------------------------ */
    $('.active-blog-2').slick({
        speed: 700,
        arrows: false,
        dots: false,
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [
            { breakpoint: 991, settings: { slidesToShow: 2, } },
            { breakpoint: 767, settings: { slidesToShow: 1, } },
            { breakpoint: 479, settings: { slidesToShow: 1, } },
        ]
    });

    /*------------------------------------
            4.6 Active Related Product
    -------------------------------------- */
    $('.active-related-product').slick({
        speed: 700,
        arrows: false,
        dots: false,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
            { breakpoint: 991, settings: { slidesToShow: 2, } },
            { breakpoint: 767, settings: { slidesToShow: 1, } },
            { breakpoint: 479, settings: { slidesToShow: 1, } },
        ]
    });

    /*----------------------------
            4.7 Active Team Member
    ------------------------------ */
    $('.active-team-member').slick({
        speed: 700,
        arrows: false,
        dots: false,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            { breakpoint: 991, settings: { slidesToShow: 2, } },
            { breakpoint: 767, settings: { slidesToShow: 1, } },
            { breakpoint: 479, settings: { slidesToShow: 1, } },
        ]
    });

    /* ********************************************
        5. Countdown
    ******************************************** */
    $('[data-countdown]').each(function() {
        var $this = $(this),
            finalDate = $(this).data('countdown');
        $this.countdown(finalDate, function(event) {
            $this.html(event.strftime('<span class="cdown days"><span class="time-count">%-D</span> <p>Days</p></span> <span class="cdown hour"><span class="time-count">%-H</span> <p>Hour</p></span> <span class="cdown minutes"><span class="time-count">%M</span> <p>Mint</p></span> <span class="cdown second"> <span><span class="time-count">%S</span> <p>Sec</p></span>'));
        });
    });

    /* ********************************************
        6. ScrollUp
    ******************************************** */
    $.scrollUp({
        scrollText: '<i class="zmdi zmdi-chevron-up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });

    /* ********************************************
        7. Tooltip
    ******************************************** */
    $('[data-toggle="tooltip"]').tooltip();

    /* ********************************************
        8. Treeview active
    ******************************************** */
    $("#cat-treeview ul").treeview({
        animated: "normal",
        persist: "location",
        collapsed: true,
        unique: true,
    });
    $("#cat-treeview-1 ul").treeview({
        animated: "normal",
        persist: "location",
        collapsed: true,
        unique: true,
    });

    $("#cat-treeview-2 ul").treeview({
        animated: "normal",
        persist: "location",
        collapsed: true,
        unique: true,
    });

    /* ********************************************
        9. Price Slider
    ******************************************** */
    $("#slider-range").slider({
        range: true,
        min: 50,
        max: 2000,
        values: [50, 999],
        slide: function(event, ui) {
            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
        }
    });
    $("#amount").val("$" + $("#slider-range").slider("values", 0) +
        " - $" + $("#slider-range").slider("values", 1));

    /* ********************************************
        10. Fancybox active
    ******************************************** */
    // $(document).ready(function() {
    //     $('.fancybox').fancybox();
    // });

    /* ********************************************
        11. Elevate Zoom active
    ******************************************** */
    $("#zoom_03").elevateZoom({
        constrainType: "height",
        zoomType: "inner",
        containLensZoom: true,
        gallery: 'gallery_01',
        cursor: 'crosshair',
        galleryActiveClass: "active"
    });
    $('.p-c a').on('click', function(event) {
        event.preventDefault();

        $('a.thumbnail-pic').attr('href', $(this).attr('data-image'));

    });
    //pass the images to Fancybox
    // $("#zoom_03").on("click", function(e) {
    //     var ez = $('#zoom_03').data('elevateZoom');
    //      $("#zoom_03").fancybox();
    //     return false;
    // });

    /* ********************************************
        12. single-product-zoom-image carousel
    ******************************************** */
    $('.carousel-btn').slick({
        speed: 700,
        arrows: true,
        dots: false,
        slidesToShow: 4,
        slidesToScroll: 1,
        prevArrow: '<button type="button" class="arrow-prev"><i class="zmdi zmdi-long-arrow-left"></i></button>',
        nextArrow: '<button type="button" class="arrow-next"><i class="zmdi zmdi-long-arrow-right"></i></button>',
        responsive: [
            { breakpoint: 991, settings: { slidesToShow: 3 } },
            { breakpoint: 767, settings: { slidesToShow: 3 } },
            { breakpoint: 479, settings: { slidesToShow: 3 } }
        ]
    });

    /* ********************************************
        13. Cart Plus Minus Button
    ******************************************** */
    $(".cart-plus-minus").prepend('<div class="dec qtybutton">-</div>');
    $(".cart-plus-minus").append('<div class="inc qtybutton">+</div>');
    $(document).on("click", ".qtybutton", function() {
        var $button = $(this);
        var oldValue = $button.parent().find("input[name='quantity']").val();
        if ($button.text() == "+") {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        $button.parent().find("input[name='quantity']").val(newVal);
    });

    /* ********************************************
        14. bootstrap accordion one open at a time
    ******************************************** */
    $('.payment-title a').on('click', function(e) {
        if ($(this).parents('.panel').children('.panel-collapse').hasClass('in')) {
            e.stopPropagation();
        }
        // You can also add preventDefault to remove the anchor behavior that makes
        // the page jump
        e.preventDefault();
    });

    /* ********************************************
        15. Cart tab menu active
    ******************************************** */
    $('.cart-tab li a').on("click", function() {
        $(this).addClass("active");
        $(this).parent('li').prevAll('li').find('a').addClass("active");
        $(this).parent('li').nextAll('li').find('a').removeClass("active");
    });

    /* ********************************************
        16. Blog page manu dropdown
    ******************************************** */
    $('.dropdown .option-btn').on('click', function() {
        if ($(this).siblings('.dropdown-menu').hasClass('active')) {
            $(this).siblings('.dropdown-menu').removeClass('active').slideUp();
            $(this).removeClass('active');
        } else {
            $('.dropdown .dropdown-menu').removeClass('active').slideUp();
            $('.dropdown .option-btn').removeClass('active');
            $(this).addClass('active');
            $(this).siblings('.dropdown-menu').addClass('active').slideDown();
        }
    });

    /* ********************************************
        17. Background Toutube Video
    ******************************************** */
    $(".youtube-bg").YTPlayer({
        videoURL: "_OA2oggXehk",
        containment: '.youtube-bg',
        mute: true,
        loop: true,
    });



})(jQuery);




/* ********************************************
    18. STICKY sticky-header
******************************************** */
// $(window).scroll(function() {
//     if ($(this).scrollTop() > 1) {
//         $('#sticky-header').addClass("sticky");
//         $('#sticky-header');
//     } else {
//         $('#sticky-header').removeClass("sticky");
//         $('#sticky-header').addClass("pb30");
//     }
// });

if (window.innerWidth > 991) {
    $("#sticky-header").sticky({
            topSpacing: 0,
            zIndex: 999
        });
  $('#sticky-header').on('sticky-start', function() { $("#sticky-header").addClass('sticky').removeClass("pb30") });
  $('#sticky-header').on('sticky-end', function() { $("#sticky-header").removeClass('sticky').addClass("pb30") });
} else {
    $(".mobile-menu-area").sticky({
            topSpacing: 0,
            zIndex: 999
        });
}

/* ********************************************************* */
jQuery(document).ready(function($) {
    var isMobile = false; //initiate as false
    // device detection
    if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0, 4))) isMobile = true;


    jQuery('#content, #column-left').theiaStickySidebar({
        // Settings
        additionalMarginTop: 100
    });
    

    $('.readMore').readmore({
        speed: 200,
        collapsedHeight: 50,
        moreLink: '<a href="#">Читать больше</a>',
        lessLink: '<a href="#">Читать меньше</a>'
    });
    /* Search */
    $('#search input[name=\'search\']').parent().find('button').on('click', function() {
        var url = $('base').attr('href') + 'index.php?route=product/search';

        var value = $('header #search input[name=\'search\']').val();

        if (value) {
            url += '&search=' + encodeURIComponent(value);
        }

        location = url;
    });

    $('#search input[name=\'search\']').on('keydown', function(e) {
        if (e.keyCode == 13) {
        e.preventDefault();
            
            $('header #search input[name=\'search\']').parent().find('button').trigger('click');
        }
    });

    $('.by-brand-section .brand-title').css('height', '').equalHeights();
    if ($('.shop-tab li>a.active').attr('id') == 'list-view') {
        $('.product-item').addClass('shop-list');
        $('.product-info>p.description').css('display', 'block');
        $('.product-layout').removeClass('col-md-3');
    }
    $('.shop-tab li>a').on('click', function() {
        if ($('.shop-tab li>a.active').attr('id') == 'list-view') {
            $('.product-item').addClass('shop-list');
            $('.product-info>p.description').css('display', 'block');

        } else {
            $('.product-item').removeClass('shop-list');
            $('.product-info>p.description').css('display', 'none');

        }
        /* Act on the event */
    });

});

function aj_form() {
    var form = $('#cont, #to_dir');
    form.ajaxForm({
        beforeSubmit: function() {
            form.addClass("sendloading");
        },
        success: function(data) {
            form.delay(1000).queue(function() {
                $(this).removeClass("sendloading");
                $.each(data, function(i, e) {
                    if (e == "error") {
                        form.addClass("senderror").delay(2000).queue(function() { $(this).removeClass("senderror").dequeue() });
                        return false;
                    }
                    if (e == "good") {
                        form[0].reset();
                        form.addClass("sendgood").delay(2000).queue(function() { $(this).removeClass("sendgood").dequeue() });
                        return false;
                    }
                    form.find('input[name="' + e + '"], textarea[name="' + e + '"]').addClass("error").delay(2000).queue(function() { $(this).removeClass("error").dequeue() });
                });
                $(this).dequeue();
            });
        }
    });
}

var form_podbor = $('.js_podbor');
form_podbor.ajaxForm({
    beforeSubmit: function() {
        form_podbor.addClass("sendloading");
    },
    success: function(data) {
        form_podbor.delay(1000).queue(function() {
            $(this).removeClass("sendloading");
            $.each(data, function(i, e) {
                if (e == "error") {
                    form_podbor.addClass("senderror").delay(2000).queue(function() { $(this).removeClass("senderror").dequeue() });
                    return false;
                }
                if (e[0] == "/") {
                    form_podbor[0].reset();
                    window.location.replace(e);
                }
                form_podbor.find('input[name="' + e + '"], textarea[name="' + e + '"], select[name="' + e + '"]').addClass("error").delay(2000).queue(function() { $(this).removeClass("error").dequeue() });
            });
            $(this).dequeue();
        });
    }
});



$(document).delegate('#tmdqclogin', 'click', function() {
    $.ajax({
        url: 'index.php?route=tmdqc/login',
        dataType: 'html',
        beforeSend: function() {},
        complete: function() {},
        success: function(html) {
            $('.alert, .text-danger').remove();
            $('#tmdlogin').html(html);
            $("#myModal").modal("show");
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$(document).delegate('#tmdqcOpt', 'click', function() {
    $.ajax({
        url: 'index.php?route=tmdqc/opt',
        dataType: 'html',
        beforeSend: function() {},
        complete: function() {},
        success: function(html) {
            $('.alert, .text-danger').remove();
            $('#tmdOpt').html(html);
            $("#myModal_2").modal("show");
            aj_form();
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});


$(document).delegate('#tmdqcDir', 'click', function() {
    $.ajax({
        url: 'index.php?route=tmdqc/dir',
        dataType: 'html',
        beforeSend: function() {},
        complete: function() {},
        success: function(html) {
            $('.alert, .text-danger').remove();
            $('#tmdDir').html(html);
            $("#myModal_Dir").modal("show");
            aj_form();
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});



/**
 * SENDMAIL
 *
 */



// Login
$(document).delegate('#button-login', 'click', function() {
    $.ajax({
        url: 'index.php?route=tmdqc/login/save',
        type: 'post',
        data: $('#myModal :input'),
        dataType: 'json',
        beforeSend: function() {
            $('#button-login').button('loading');
        },
        complete: function() {
            $('#button-login').button('reset');
        },
        success: function(json) {
            $('.alert, .text-danger').remove();
            $('.form-group').removeClass('has-error');

            if (location.pathname != '/logout') {
                window.location.reload();

            } else {
                document.location.href = '/';
            }

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#tmdlogin .modal-body > .row').before().prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                // Highlight any found errors
                $('input[name=\'email\']').parent().addClass('has-error');
                $('input[name=\'password\']').parent().addClass('has-error');
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });


});

$(document).on('change', function() {

    setTimeout(function() {
        $('input').each(function(index, el) {
            $(el).parent().removeClass('active');
            $("input:checked").parent().addClass('active');
        })
    }, 100);


});
