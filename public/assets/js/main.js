jQuery( document ).ready(function( $ ) {
"use strict"

    // ---------- Preloader ---------- //
    jQuery("#status").delay(1000).fadeOut();
    jQuery("#preloader").delay(1000).fadeOut("slow");
    // ---------- Preloader ---------- //

    // Responsive Slider menu
    if (jQuery(".menu-link").length != '') {
        jQuery('.menu-link').bigSlide();
    }

    // Timeliner
    if (jQuery("#timeline").length != '') {
        jQuery().timelinr({
            arrowKeys: 'true'
        })
    }

    // Banner
    if (jQuery("#main-slider").length != '') {
        jQuery('#main-slider').owlCarousel({
            items:1,
            loop: true,
            smartSpeed:450,
            dots: false,
            nav:true
        });
    }

    // Courses slider
    if (jQuery(".banner-inner").length != '') {
        jQuery('.banner-inner').owlCarousel({
            loop:false,
            margin:30,
            nav:false,
            dots: false,
            smartSpeed:600,
            responsiveClass:true,
            responsive:{
                0:{ items:1},
                320:{ items:1},
                480:{ items:1},
                640:{ items:2},
                768:{ items:2},
                800:{ items:2},
                960:{ items:3},
                991:{ items:3},
                1024:{ items:3},
                1199:{ items:3},
                1200:{ items:3}
            }
        })
    }

    // Product Thumnbnail
    if (jQuery(".product-slider").length != '') {
        jQuery('.product-slider').bxSlider({
            pagerCustom: '#product-thumbs'
        });
    }

    // Upcoming Release 
    if (jQuery(".init").length != '') {
        Books.init();
    }

    // Best Seller
    if (jQuery(".recomend-slider").length != '') {
        jQuery('.recomend-slider').owlCarousel({
            loop:true,
            margin:30,
            nav:true,
            dots: false,
            smartSpeed:600,
            responsiveClass:true,
            responsive:{
                0:{ items:1},
                320:{ items:1},
                480:{ items:2, nav:false, loop:false},
                640:{ items:2},
                768:{ items:4},
                800:{ items:4},
                960:{ items:4},
                991:{ items:4},
                1024:{ items:5},
                1199:{ items:5},
                1200:{ items:5}
            }
        })
    }

    // Best Seller Slider
    if (jQuery(".best-seller-slider").length != '') {
        jQuery('.best-seller-slider').owlCarousel({
            loop:true,
            margin:30,
            nav:true,
            dots: false,
            smartSpeed:600,
            responsiveClass:true,
            responsive:{
                0:{ items:1},
                320:{ items:1},
                480:{ items:2},
                640:{ items:2},
                768:{ items:2},
                800:{ items:2},
                960:{ items:3},
                991:{ items:2},
                1024:{ items:3},
                1199:{ items:3},
                1200:{ items:4}
            }
        })
    }

    // Related Produst Slider
    if (jQuery(".related-produst-slider").length != '') {
        jQuery('.related-produst-slider').owlCarousel({
            loop:false,
            margin:30,
            nav:false,
            dots: false,
            smartSpeed:600,
            responsiveClass:true,
            responsive:{
                0:{ items:1},
                320:{ items:1},
                480:{ items:2},
                640:{ items:2},
                768:{ items:2},
                800:{ items:2},
                960:{ items:3},
                991:{ items:2},
                1024:{ items:3},
                1199:{ items:3},
                1200:{ items:3}
            }
        })
    }


    // Related Events Slider
    if (jQuery(".related-events-slider").length != '') {
        jQuery('.related-events-slider').owlCarousel({
            loop:false,
            margin:30,
            nav:false,
            dots: false,
            smartSpeed:600,
            responsiveClass:true,
            responsive:{
                0:{ items:1},
                320:{ items:1},
                480:{ items:2},
                640:{ items:2},
                768:{ items:2},
                800:{ items:2},
                960:{ items:3},
                991:{ items:2},
                1024:{ items:3},
                1199:{ items:3},
                1200:{ items:3}
            }
        })
    }

    // Team Slider
    if (jQuery(".team-slider").length != '') {
        jQuery('.team-slider').owlCarousel({
            loop:false,
            margin:30,
            nav:false,
            dots: false,
            smartSpeed:600,
            responsiveClass:true,
            responsive:{
                0:{ items:1},
                320:{ items:1},
                480:{ items:2},
                640:{ items:2},
                768:{ items:2},
                800:{ items:2},
                960:{ items:3},
                991:{ items:3},
                1024:{ items:3},
                1199:{ items:4},
                1200:{ items:4}
            }
        })
    }

    // Brands Isons
    if (jQuery(".logos-slider").length != '') {
        jQuery('.logos-slider').owlCarousel({
            loop:false,
            margin:30,
            nav:false,
            dots: false,
            smartSpeed:600,
            responsiveClass:true,
            responsive:{
                0:{ items:1},
                320:{ items:1},
                480:{ items:2},
                640:{ items:3},
                768:{ items:3},
                800:{ items:3},
                960:{ items:3},
                991:{ items:3},
                1024:{ items:3},
                1199:{ items:4},
                1200:{ items:4}
            }
        })
    }

    // Event Slider
    if (jQuery("#tweet-slider").length != '') {
        jQuery('#tweet-slider').owlCarousel({
            loop:true,
            items : 1,
            nav:true,
            dots: false,
            smartSpeed:600
        })
    }

    // Best Seller Tabs
    if (jQuery("#best-sellers-tabs").length != '') {
        jQuery( "#best-sellers-tabs" ).tabs();
    }

    // Book Collections Tabs
    if (jQuery("#book-collections-tabs").length != '') {
        jQuery( "#book-collections-tabs" ).tabs();
    }

    // Blog Slider
    if (jQuery("#blog-slider").length != '') {
        jQuery('#blog-slider').owlCarousel({
            loop:true,
            items : 1,
            nav:false,
            dots: true,
            smartSpeed:600
        })
    }

    // Thumbnail Post Slider
    if (jQuery(".post-thumbnail").length != '') {
        jQuery('.post-thumbnail').bxSlider({
            pagerCustom: '#thumbnail'
        });
    }

    // Event Map
    if (jQuery("#event-map").length != '') {  
        jQuery("#event-map").gmap3({
            marker: {
                address: "Haltern am See, Weseler Str. 151"
            },
            map: {
                options: {
                    zoom: 16,
                    scrollwheel: false,
                }
            },
        });
    }

    // Contant Map
    if (jQuery("#contant-map").length != '') {
        jQuery("#contant-map").gmap3({
            marker: {
                address: "Haltern am See, Weseler Str. 151"
            },
            map: {
                options: {
                    zoom: 16,
                    scrollwheel: false,
                }
            },
        });
    }

    // Custom Scroll 
    if (jQuery(".scroll-x").length != '') {
        jQuery(".scroll-x").mCustomScrollbar({
            axis:"x",
            advanced:{autoExpandHorizontalScroll:true},
            mouseWheel:false
        });
    }

    // Mesonary With Filter
    if (jQuery(".gallery-masonry").length != '') {
        var $container = jQuery('.gallery-masonry');
        var $optionSets = jQuery('.option-set');
        var $optionLinks = $optionSets.find('a');

        function doIsotopeFilter() {
            if (jQuery().isotope) {
                var isotopeFilter = '';
                $optionLinks.each(function() {
                    var selector = jQuery(this).attr('data-filter');
                    var link = window.location.href;
                    var firstIndex = link.indexOf('filter=');
                    if (firstIndex > 0) {
                        var id = link.substring(firstIndex + 7, link.length);
                        if ('.' + id == selector) {
                            isotopeFilter = '.' + id;
                        }
                    }
                });
                $container.isotope({
                    itemSelector: '.masonry-grid',
                    filter: isotopeFilter
                });
                $optionLinks.each(function() {
                    var $this = jQuery(this);
                    var selector = $this.attr('data-filter');
                    if (selector == isotopeFilter) {
                        if (!$this.hasClass('selected')) {
                            var $optionSet = $this.parents('.option-set');
                            $optionSet.find('.selected').removeClass('selected');
                            $this.addClass('selected');
                        }
                    }
                });
                $optionLinks.on("click", function() {
                    var $this = jQuery(this);
                    var selector = $this.attr('data-filter');
                    $container.isotope({
                        itemSelector: '.masonry-grid',
                        filter: selector
                    });
                    if (!$this.hasClass('selected')) {
                        var $optionSet = $this.parents('.option-set');
                        $optionSet.find('.selected').removeClass('selected');
                        $this.addClass('selected');
                    }
                    return false;
                });
            }
        }
        var isotopeTimer = window.setTimeout(function() {
            window.clearTimeout(isotopeTimer);
            doIsotopeFilter();
        }, 1000);
    }

    // Simple Masonry
    if (jQuery("").length != '') {
        jQuery('.simple-masonry').isotope({
            itemSelector: '.simple-masonry-grid'
        });
    }

    // Counters
    if (jQuery("#tc-counters").length != '') {
        try {
            jQuery('#tc-counters').appear(function () {
                jQuery('.tc-timer').countTo()
            });
        } catch (err) {}  
    }

    // Wow Animation
    if (jQuery("").length != '') {
        var wow = new WOW({
            boxClass:     'animate',  
            animateClass: 'animated', 
            offset:       100,          
            mobile:       false        
            });
        wow.init();
    }

    // Auto height function
    if (jQuery(".fullscreen").length != '') {
        var setElementHeight = function () {
            var width = jQuery(window).width();
            /*if (jQuery('.tc-hero-slider li img') >= height) {*/
            var height = jQuery(window).height();
            jQuery('.fullscreen').css('height', (height));
            }
        //       else {
        //            jQuery('.autoheight').css('min-height', (800));
        //        }
        //};
        jQuery(window).on("resize", function () {
            setElementHeight();
        }).resize();
    }

    // Release Book Slider
    if (jQuery("").length != '') {
        if (jQuery(".release-book-slider").length != '') {
            jQuery('.release-book-slider').bxSlider({
                pagerCustom: '#release-thumb'
            });
        }      
    }

    // Release Book Slider
    if (jQuery(".release-book-slider").length != '') {
        if (jQuery(".release-book-slider").length != '') {
            jQuery('.release-book-slider').bxSlider({
                pagerCustom: '#release-thumb'
            });
        } 
    }

    // Prety Photo
    jQuery("a[data-rel]").each(function () {
        jQuery(this).attr("rel", jQuery(this).data("rel"));
    });
    jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({
        animation_speed: 'normal',
        theme: 'dark_square',
        slideshow: 3000,
        autoplay_slideshow: false,
        social_tools: false
    });

    // PrettyPhoto Video Popup
    jQuery("a[rel^='prettyPhoto']").prettyPhoto();
    
    // Book View
    if (jQuery("#magazine").length != '') {
        jQuery('#magazine').turn({
            display: 'double',
            acceleration: true,
            gradients: !$.isTouch,
            elevation:1000,
            when: {
                turned: function(e, page) {
                    /*console.log('Current view: ', jQuery(this).turn('view'));*/
                }
            }
        });
        jQuery(window).bind('keydown', function(e){
            if (e.keyCode==37)
                jQuery('#magazine').turn('previous');
            else if (e.keyCode==39)
                jQuery('#magazine').turn('next'); 
        });
    }

    // Quanity Box
    $(".ddd").on("click", function () {
        var $button = $(this);
        var $input = $button.closest('.sp-quantity').find("input.quntity-input");
        
        $input.val(function(i, value) {
            return +value + (1 * +$button.data('multi'));
        });
    });

    // Range slider
    if (jQuery("#slider-range").length != '') {
        jQuery( "#slider-range" ).slider({
        range: true,
        min: 0,
        max: 500,
        values: [ 75, 300 ],
        slide: function( event, ui ) {
        jQuery( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
        }
        });
        jQuery( "#amount" ).val( "$" + jQuery( "#slider-range" ).slider( "values", 0 ) +
        " - $" + jQuery( "#slider-range" ).slider( "values", 1 ) );
    }

    // Scroll to Top
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-top').fadeIn();
        } else {
            $('.back-top').fadeOut();
        }
    });
    $('.back-top').on("click", function () {
        $("html, body").animate({
            scrollTop: 0
        }, 1000);
        return false;
    });

})