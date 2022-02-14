$(document).on('turbolinks:load', function(){

	// moving menu
	$(window).scroll(function() {

		if($(window).scrollTop() >= 1) {
	   		
			$('.navbar2').addClass('Top0');

		}else if($(window).scrollTop() < 1){

			$('.navbar2').removeClass('Top0');

		}

	});

	// slider
	$('.navbar2').mouseover(function () {
		$('.slide_buttons').addClass('show');
	});
	$('.slider_main_container').mouseover(function () {
		$('.slide_buttons').addClass('show');
	});
	$('.slider_main_container').mouseleave(function () {
		$('.slide_buttons').removeClass('show');
	});

	doSlider();
	var interval;
	var timer = function(){
	 	interval = setInterval(function(){
	 		doSlider();
		},10000);
	};
	timer();

	$('#next_slide').click(function(event){

		clearInterval(interval);
		timer();
		event.preventDefault();
		doSlider('next');

	});

	$('#previous_slide').click(function(event){

		clearInterval(interval);
		timer();
		event.preventDefault();
		doSlider('previous');

	});

	function doSlider(type = 'next'){

		// first try to see if any slide has allready loaded
		var first_try = $('.slider_container.active').length;
		if(first_try == 0){

			changeSlide('0','1');

		}else{

			// assign vars
			var nr_of_slides = $('.slider_container').length;
			var current_slide = $('.slider_container.active').attr('id');
			var current_slide_number = current_slide.replace('slide','');

			// set next_slide var
			if(type == 'next'){
				if(current_slide_number == nr_of_slides)
					next_slide = 1;
				else
					next_slide = parseInt(current_slide_number) + 1;
			}else{
				if(current_slide_number == 1)
					next_slide = nr_of_slides;
				else
					next_slide = parseInt(current_slide_number) - 1;
			}

			// console.log('nr of slides' + nr_of_slides);
			// console.log('current slide' + current_slide);
			// console.log('next slide nr' + next_slide);

			changeSlide(current_slide_number,next_slide);

		}

	}

	function changeSlide(last_id,id){

		// add/remove classes from slide
		if(last_id){
			$('#slide'+last_id).removeClass('front');
			window.setTimeout(
				function(){
					$('#slide'+last_id).removeClass('active');
					$('#slide'+last_id+' .show').removeClass('show');
				}, 1000
			);
		}
		$('#slide'+id).addClass('active front');
		$('#slide'+id+' .compass').addClass('show');

		// add classes to inner elements
		window.setTimeout(
			function(){
				$('#slide'+id+' .text_top').addClass('show');
			}, 1000
		);
		window.setTimeout(
			function(){
				$('#slide'+id+' .circle').addClass('show');
			}, 1500
		);
		window.setTimeout(
			function(){
				$('#slide'+id+' .bar').addClass('show');
			}, 2000
		);
		window.setTimeout(
			function(){
				$('#slide'+id+' .text_bottom').addClass('show');
			}, 2500
		);
		
	};


})