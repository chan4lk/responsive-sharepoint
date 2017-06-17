﻿jQuery(document).ready(function($) {
	BindBrowserStyles($);
	BindTopNav($);
	BindBodySpans($);
});

/*
specific browsers may require specific fixes
*/
function BindBrowserStyles($) {
	/*IE 10 mobile issue with -ms-viewport (Thanks to starnell (https://www.codeplex.com/site/users/view/starnell) for the fix)*/
	if (("-ms-user-select" in document.documentElement.style) && (navigator.userAgent.match(/IEMobile\/10\.0/))) {
		var msViewportStyle = document.createElement("style");
		msViewportStyle.appendChild(document.createTextNode("@-ms-viewport{width:auto!important}"));
		document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
	}
}

/*
Make top navigation responsive / touch friendly
Replaces the hover event for element that have dynamic children
*/
function BindTopNav($) {
	/*grab top nav SP generated list*/
	var u = $('#topnavbar ul.root');
	if (u.length > 0) {
		/*loop through every nav item that has dynamic children*/
		u.find('li.dynamic-children').each(function() {
			/*get li's menu item, either a or span*/
			var a = $(this).children('.menu-item');
			var s = a.children('span').eq(0);
			var t = s.children('span.menu-item-text').eq(0);
			/*override parent li hover event to show dropdown*/
			$(this).hover(
				function () {HoverTopNav($, $(this),'');},
				function () {HoverTopNav($, $(this),'o');}
			);
			if (a.is('span')) {
				a.bind('click',function(e) {
					DropTopNav($, $(this));
					return false;
				});
				s.bind('click',function(e) {
					DropTopNav($, $(this).parent());
					return false;
				});
			}
			else {
				a.bind('click',function(e) {
					//if click occured inside of a text span, then redirect
					if (((e.pageX >= t.offset().left) && (e.pageX <= (t.offset().left + t.outerWidth(true)))) && 
						((e.pageY >= t.offset().top) && (e.pageY <= (t.offset().top + t.outerHeight(true))))) {
						return true;
					}
					else
						DropTopNav($, $(this).eq(0));
					return false;
				});
				/*need to trap link span too for some browsers*/
				s.bind('click',function(e) {
					//if click occured inside of a text span, then redirect
					if (((e.pageX >= t.offset().left) && (e.pageX <= (t.offset().left + t.outerWidth(true)))) && 
						((e.pageY >= t.offset().top) && (e.pageY <= (t.offset().top + t.outerHeight(true))))) {
						window.location.href = $(this).parent('a').eq(0).attr('href');						
					}
					else
						DropTopNav($, $(this).parent('a').eq(0));
					return false;
				});

			}
		});
	}
}

/*triggered when a nav link is hovered*/
/*l = the li that has been hovered*/
function HoverTopNav($, l, a) {
   if (l.length > 0) {
      var m = $('.navbar-toggle');
      if (m.length > 0) {
         /*only down dropdown on hover if not mobile nav view*/
         if (m.css('display') == 'none')
            DropTopNav($, l.children('.menu-item').eq(0), a);
      }
   }
} 

/*triggered when a nav link is clicked*/
/*l = the .menu-item, either an anchor or span(header)*/
function DropTopNav($, l, a) {
	if (l.length > 0) {
		var u = l.siblings('ul').eq(0);
		var p = l.parent();
		if (u.length > 0) {
			/*if the sub menu is hidden, then show or visa-versa*/
			if (p.hasClass('shown') || (a=='o')) {
				p.removeClass('shown');
			}
			else {
				p.addClass('shown');
			}
		}
	}
}/*end top nav*/

/*body spans*/
/*used to hide left nav bar if empty, or to ensure that primary content span set to span12 if not left nav*/
function BindBodySpans($) {
	var bHideLeftNav = false;
	if (($('#sideNavBox').length > 0) && ($('#mainbody').length > 0)) {
		if ($('#sideNavBox').css('display') == 'none') {
			bHideLeftNav = true;
		}
		if (!bHideLeftNav) {
			if ($('#sideNavBox .ms-core-navigation').length > 0) {
				if ($.trim($('#sideNavBox .ms-core-navigation').html()).length < 10)
					bHideLeftNav = true;
			}
		}
	}
	if (bHideLeftNav) {
		$('body').addClass('b3-fullscreenmode');
	}
}
/*end body spans*/