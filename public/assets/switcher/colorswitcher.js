window.console = window.console || (function() {
    var c = {};
    c.log = c.warn = c.debug = c.info = c.error = c.time = c.dir = c.profile = c.clear = c.exception = c.trace = c.assert = function() {};
    return c;
})();
jQuery(document).ready(function() {
    var styleswitcherstr = ' \
	<div class="switcher-inner"> \
	<h2>Color Schemes <a href="#"></a></h2> \
    <div class="content"> \
    <div class="switcher-box"> \
	<ul class="color_schemes"> \
	<li><a id="color-1" class="styleswitch color-1"> color-1</a></li> \
	<li><a id="color-2" class="styleswitch color-2"> color-2</a></li> \
	<li><a id="color-3" class="styleswitch color-3"> color-3</a></li> \
    </ul> </div><!-- End switcher-box --> \
    </div><!-- End content --> \
	';
    jQuery(".switcher").prepend(styleswitcherstr);
});
jQuery(document).ready(function() {
    var startClass = jQuery.cookie('mycookie');
    jQuery("body").addClass("color-1");
    jQuery("#color-1").click(function() {
        jQuery("body").removeClass('color-2');
        jQuery("body").removeClass('color-3');
        jQuery.cookie('mycookie', 'color-1');
        // $('#logo img').remove();
        // $("<img src='images/inner-logo.png' alt='Logo' />").prependTo('#logo a');
    });
    jQuery("#color-1").click(function() {
        jQuery("body").removeClass('color-2');
        jQuery("body").removeClass('color-3');
        jQuery.cookie('mycookie', 'color-1');
    });
    jQuery("#color-2").click(function() {
        jQuery("body").removeClass('color-2');
        jQuery("body").removeClass('color-3');
        jQuery.cookie('mycookie', 'color-2');
    });
    jQuery("#color-3").click(function() {
        jQuery("body").removeClass('color-2');
        jQuery("body").removeClass('color-3');
        jQuery.cookie('mycookie', 'color-3');
    });
    if (jQuery.cookie('mycookie')) {
        jQuery('body').addClass(jQuery.cookie('mycookie'));
    }
});
jQuery(document).ready(function() {
    var cookieName = 'color-1';

    function changeLayout(layout) {
        jQuery.cookie(cookieName, layout);
        jQuery('head link[id=skins]').attr('href', 'css/' + layout + '.css');
    }
    if (jQuery.cookie(cookieName)) {
        changeLayout(jQuery.cookie(cookieName));
    }
    jQuery("#color-1").click(function() {
        jQuery
        changeLayout('color-1');
    });
    jQuery("#color-2").click(function() {
		$('.circlePercent').each(function() {
			$(this).find('div').first().remove();
			$(this).percentcircle({			animate : true,			diameter : 240,			guage: 15,			coverBg: '#fff',			bgColor: '#efefef',			fillColor: '#6a4a3d',			percentSize: '15px',			percentWeight: 'normal'			});
		});
        jQuery
        changeLayout('color-2');
    });
    jQuery("#color-3").click(function() {
        jQuery
        changeLayout('color-3');
    });
    jQuery("#color-4").click(function() {
        jQuery
        changeLayout('color-4');
    });
    jQuery("#color-5").click(function() {
        jQuery
        changeLayout('color-5');
    });
});
jQuery(document).ready(function() {
    jQuery('.switcher').animate({
        right: '-200px'
    });
    jQuery('.switcher h2 a').click(function(e) {
        e.preventDefault();
        var div = jQuery('.switcher');
        if (div.css('right') === '-200px') {
            jQuery('.switcher').animate({
                right: '0px'
            });
        } else {
            jQuery('.switcher').animate({
                right: '-200px'
            });
        }
    })
});