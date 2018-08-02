jQuery(document).ready(function ($) {

	    var width = 1200;
	    var animationSpeed = 1000;
	    var currentSlide = 1;
	    var slideCount = 3;

	    var $slider = $('#slider');
	    var $slideContainer = $('.slides', $slider);
	    var $slides = $('.box_office', $slider);

	    var interval;

	    function moveRight() {
	    	if (currentSlide != slideCount) {
	    		$slideContainer.animate({'margin-left': '-='+width}, animationSpeed);
    			currentSlide++;
    		}
	    };
	    
	    function moveLeft() {
	    	if (currentSlide != 1) {
	    		$slideContainer.animate({'margin-left': '+='+width}, animationSpeed);
    			currentSlide--;
    		}
	    };
	    
	    $('a.control_prev').click(function () {
	        moveLeft();
	    });

	    $('a.control_next').click(function () {
	        moveRight();
	    });

});    
