$(document).ready(function(){
	$(window).scroll(function(){
		var wScroll = $(this).scrollTop();

		var x = wScroll/2;
		
		
			$("#boat").css({
				'transform' : 'rotate('+x+'deg)'
			});
			console.log(wScroll/2);
	
	});
});