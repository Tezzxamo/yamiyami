
function eye(e){
    var element = $(e),
        Input = element.parents(".formText").find(".password_eye");
    
    element.toggleClass('eye');
    if (Input.attr("type") == "password"){
        Input.attr("type", "text");
    } else {
        Input.attr("type", "password");
    }
}
function tab(v){
	var main = $("#tab .tabmain");
    var num = $("#tabnav .tabtitle");
    num.eq(v).addClass("tabcur");
    main.not(main.eq(v)).hide();
    num.click(function() {
        var index = $(this).index();
        $(this).addClass("tabcur").siblings().removeClass("tabcur");
        main.eq(index).show().siblings().hide();
    });
}
function InputClear(){
	$('.input_clear').click(function(){
		$(this).siblings('.ui-ipt').val('');
	});
	$('.ui-ipt').focus(function(){
		var $this = $(this);
		if ($this.val() != '') {
            $this.siblings('.input_clear').show();
        }
        $this.bind('input propertychange', function() {
            if ($this.val() != '') {
                $this.siblings('.input_clear').show();
            }else{
                $this.siblings('.input_clear').show();
            }
        });
	});
	$('.ui-ipt').blur(function(){
		var $this = $(this);
		setTimeout(function(){
			$this.siblings('.input_clear').hide();
		},150);
		
	});
}
function scroll(){
    var scroll_area = $(".ui-scroll");
    var timespan = 4000;
    var timeID;
    var scroll_size = $(".ui-scroll li").size();
    if (scroll_size > 2) {
        scroll_area.hover(function() {
            clearInterval(timeID);
        }, function() {
            timeID = setInterval(function() {
                var moveline = scroll_area.find('li:first');
                var lineheight = moveline.height();
                moveline.animate({
                    marginTop: -lineheight + 'px'
                }, 1000, function() {
                    moveline.css('marginTop', 0).appendTo(scroll_area);
                });
            }, timespan);
        }).trigger('mouseleave');
    };
    console.log('scroll')
}
function doFilter(value) {
    var temp = [];
    temp[0] = value.slice(0, 3);
    temp[1] = value.slice(3, 7);
    temp[2] = value.slice(7);
    return temp.join(" ");
}
function load(){
    $("#loading").fadeOut("slow");
}

define(['jquery'],function($){
$('.ui-ipt').focus(function(){
	$(this).parents('.formText').css({'border-color':'#3da2f4','transition':'all .5s'});
});
$('.ui-ipt').blur(function(){
	$(this).parents('.formText').css({'border-color':''});	
});
$('.menu-left').addClass('base');

})
// 获取Cookie
function getCookie(name) {
	if (name != null) {
		var value = new RegExp("(?:^|; )" + encodeURIComponent(String(name)) + "=([^;]*)").exec(document.cookie);
		return value ? decodeURIComponent(value[1]) : null;
	}
}

// 移除Cookie
function removeCookie(name, options) {
	addCookie(name, null, options);
}
//添加Cookie
function addCookie(name, value, options) {
	if (arguments.length > 1 && name != null) {
		if (options == null) {
			options = {};
		}
		if (value == null) {
			options.expires = -1;
		}
		if (typeof options.expires == "number") {
			var time = options.expires;
			var expires = options.expires = new Date();
			expires.setTime(expires.getTime() + time * 1000);
		}
		document.cookie = encodeURIComponent(String(name)) + "=" + encodeURIComponent(String(value)) + (options.expires ? "; expires=" + options.expires.toUTCString() : "") + (options.path ? "; path=" + options.path : "") + (options.domain ? "; domain=" + options.domain : ""), (options.secure ? "; secure" : "");
	}
}