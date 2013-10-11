$(document).on('pageinit',function() { 
	
	


	// photo to add 
	$('.choose_from_album').click(function(){
		$('.choose_from_album').removeClass("photo-selected");
		$(this).addClass("photo-selected"); 
		$('#thumb-selected').html('<img src="'+$(this).attr("src")+'" alt="" class="center-thumb thumb-selected" id="'+$(this).attr("id")+'"/>');
		var photo_selected = $('#thumb-selected img').attr("id");
	    $('#photo-selected-to-register').val(photo_selected);
	});
});

