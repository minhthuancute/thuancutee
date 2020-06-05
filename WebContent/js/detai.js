$(document).ready(function () {
    $('.advertisement .owl-carousel').owlCarousel({
        items: 1,
        autoplay:true,
        autoplayTimeout:1000,
        autoplayHoverPause:true,
        loop: true, //lap het tam hinh cuoi cung se ra tam hinh dau tien
        nav: true, //mui ten qua lai
        navText: ['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'], // no la cai mang. thay bang font awesome
        navSpeed: 300,
    });

    $('.dangnhap').click(function (e) { 
        e.preventDefault();
        $('.modal-login').fadeIn(200);
    });
    
    $('.register').click(function (e) { 
        e.preventDefault();
        $('.modal-login').fadeOut(0);
        $('.modal-register').fadeIn(200);
    });

    $('.fa-times-circle').click(function (e) { 
        e.preventDefault();
        $('.modal-login').fadeOut(0);
        $('.modal-register').fadeOut(0);        
    });

    let currentPos = 0;
    $(window).scroll(function () { 
        currentPos = $(this).scrollTop();        
        console.log("vi tri: ", currentPos);
        if(currentPos > 80) {
            $('header').addClass("fixed animation");
            if(currentPos > 100) {
                $('.up').addClass("appear animation");
            }
            else{
                $('.up').removeClass("appear animation");
            }
        }
        else{
            $('header').removeClass("fixed animation");
            $('.up').removeClass("appear animation");
        }
    });

    $('.up').click(function (e) { 
        e.preventDefault();
        $(window).scrollTop(0);
    });
    
    $('#checkBoxAll').click(function(e) {
		if($(this).is(":checked")) 
			$('.checkbox').prop('checked', true);
		else 
			$('.checkbox').prop('checked', false);
	});
    
//    let value = $('.D2').val();
//    $('.add').click(function (e) {
//        e.preventDefault();
//        if (value < 100) {
//            value++;
//            $('.D2').val(value);
//        }
//    });
//
//    $('.sub').click(function (e) {
//        e.preventDefault();
//        if (value > 1) {
//            value--;
//            $('.D2').val(value);
//        }
//    });
    
//  $('.add').click(function (e) {
//  e.preventDefault();
//});
//
//$('.sub').click(function (e) {
//  e.preventDefault();
//});
    
    $('.fa-eye').click(function (e) {
    	e.preventDefault();
            $('.passWord').prop('type', 'text');
    })
    
//    $('.fa-eye').mousedown(function (e) {
//        e.preventDefault();
//            $('.passWord').prop('type', 'text');
//    }).mouseup(function (e) {
//        e.preventDefault();
//        $('.passWord').prop('type', 'password');

});