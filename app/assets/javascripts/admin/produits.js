$(document).on('pageinit',function() { 
	
	// photo to add or not 
	$('#add-photo-produit').on('change', function() {
	  	if($(this).val() == 'off') 
		{

			$('.photo-actived').hide();
			// desactivate the photo in the hidden field of the form 

		}
		else 
		{
			$('.photo-actived').show();
			// activate the photo in the hidden field photo_attachment of the form  
			var photo_selected = $('#thumb-selected img').attr("id");
		    $('#photo-selected-to-register').val(photo_selected);
			// activate the photo in the hidden field photo_active of the form
			$('#photo-active').val(true);
			 
			
		}
	});

	// photo to add 
	$('.choose_from_album').click(function(){
		$('.choose_from_album').removeClass("photo-selected");
		$(this).addClass("photo-selected"); 
		$('#thumb-selected').html('<img src="'+$(this).attr("src")+'" alt="" class="center-thumb thumb-selected" id="'+$(this).attr("id")+'"/>');
		var photo_selected = $('#thumb-selected img').attr("id");
	    $('#photo-selected-to-register').val(photo_selected);
		$('#photo-active').val(true);
	});
});






