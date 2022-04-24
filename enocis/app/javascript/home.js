
$(document).ready(function(){
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
	function readURL(input, rm_image, image, poza, checkbox) {
		if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function (e) {
						$(image).attr('src', e.target.result);
						$(poza).show();
						$(checkbox).show();
						$(image).show();
						$(rm_image).attr('value', 0);
				}
				
				reader.readAsDataURL(input.files[0]);
		}
	}
	
	function readmultifiles(files) {
		console.log("sssss")
		$(".to_delete").remove();
		for (file of files) {
			const reader = new FileReader();
			reader.readAsDataURL(file);
			reader.fileName = file.name;
			reader.onload = (event) => {
				const fileName = event.target.fileName;
				const content = event.currentTarget.result;
				console.log({ fileName, content });
			
				$("#uploaded").append("<div class='col-3 to_delete'><img src='"+event.target.result+"'></div>");
			};
		}
	}
	$("#project_images").change(function(){
		readmultifiles(this.files);
	});
	$("#social_project_images").change(function(){
		readmultifiles(this.files);
	});
	$("#service_images").change(function(){
		readmultifiles(this.files);
	});

	// function readfile(input) {
		
	// 	if (input.files && input.files[0]) {
	// 			var reader = new FileReader();
	// 			reader.readAsDataURL(input.files[0]);
	// 			reader.onload = function (e) {
	// 				console.log('aaaaaa')
	// 					$("#image").attr('src', e.target.result);
	// 					$("#image_div").show();
	// 					$("#delete_checkbox").show();
	// 					$("#checkbox").attr('value', 0);	
	// 			}	
	// 	}
	// }
	// $("#upload").change(function(){
	// 	readfile(this);
	// });
	$("#testimonial_image").change(function(){
		readURL(this, '#testimonial_remove_image', '#image', '#poza', '#checkbox');
	});
	$("#product_image").change(function(){
		readURL(this, '#product_remove_image', '#image', '#poza', '#checkbox');
	});
	$("#social_project_main_image").change(function(){
		readURL(this, '#social_project_main_remove_image', '#image', '#poza', '#checkbox');
	});
	$("#frezarimdf_image_svg").change(function(){
		readURL(this, '#frezarimdf_remove_image_svg', '#image', '#poza', '#checkbox');
	});
	$("#product_category_cover_image").change(function(){
		readURL(this, '#product_category_remove_cover_image', '#image1', '#poza1', '#checkbox1');
	});
	$("#product_category_front_image").change(function(){
		readURL(this, '#product_category_remove_front_image', '#image2', '#poza2', '#checkbox2');
	});
	$("#company_frezari_mdf_cover_image").change(function(){
		readURL(this, '#company_frezari_mdf_remove_cover_image', '#image_frezari_mdf_cover_image', '#poza_frezari_mdf_cover_image', '#checkbox_frezari_mdf_cover_image');
	});
	$("#company_frezari_mdf_front_image").change(function(){
		readURL(this, '#company_frezari_mdf_remove_front_image', '#image_frezari_mdf_front_image', '#poza_frezari_mdf_front_image', '#checkbox_frezari_mdf_front_image');
	});
	$("#company_projects_cover_image").change(function(){
		readURL(this, '#company_projects_remove_cover_image', '#image_projects_cover_image', '#poza_projects_cover_image', '#checkbox_projects_cover_image');
	});
	$("#company_projects_front_image").change(function(){
		readURL(this, '#company_projects_remove_front_image', '#image_projects_front_image', '#poza_projects_front_image', '#checkbox_projects_front_image');
	});
	$("#company_social_projects_cover_image").change(function(){
		readURL(this, '#company_social_projects_remove_cover_image', '#image_social_projects_cover_image', '#poza_social_projects_cover_image', '#checkbox_social_projects_cover_image');
	});
	$("#company_social_projects_front_image").change(function(){
		readURL(this, '#company_social_projects_remove_front_image', '#image_social_projects_front_image', '#poza_social_projects_front_image', '#checkbox_social_projects_front_image');
	});
	$("#company_services_cover_image").change(function(){
		readURL(this, '#company_services_remove_cover_image', '#image_services_cover_image', '#poza_services_cover_image', '#checkbox_services_cover_image');
	});
	$("#company_services_front_image").change(function(){
		readURL(this, '#company_services_remove_front_image', '#image_services_front_image', '#poza_services_front_image', '#checkbox_services_front_image');
	});
	$("#company_contact_cover_image").change(function(){
		readURL(this, '#company_contact_remove_cover_image', '#image_contact_cover_image', '#poza_contact_cover_image', '#checkbox_contact_cover_image');
	});
	$("#company_politica_de_confidentialitate_cover_image").change(function(){
		readURL(this, '#company_politica_de_confidentialitate_remove_cover_image', '#image_politica_de_confidentialitate_cover_image', '#poza_politica_de_confidentialitate_cover_image', '#checkbox_politica_de_confidentialitate_cover_image');
	});
	$("#company_politica_cookies_cover_image").change(function(){
		readURL(this, '#company_politica_cookies_remove_cover_image', '#image_politica_cookies_cover_image', '#poza_politica_cookies_cover_image', '#checkbox_politica_cookies_cover_image');
	});
})

