
$(document).ready(function(){
  $('.color').each(function () {
		var rgb = $(this).css('backgroundColor');
		var colors = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
	
		var r = colors[1];
		var g = colors[2];
		var b = colors[3];
	
		var o = Math.round(((parseInt(r) * 299) + (parseInt(g) * 587) + (parseInt(b) * 114)) /1000);
	
		if(o > 240) {
				$(this).css('color', 'black');
		}else{
				$(this).css('color', 'white');
		}
	});
})
