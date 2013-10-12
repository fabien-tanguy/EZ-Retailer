$(document).on('pageinit',function() { 
	
	
	// photo to add or not 
	$('#add-photo-focus').on('change', function() {

		$(this).slider({ disabled: true });
	  	if($(this).val() == 'off') 
		{

			// ajax call to desactivate the photo 
			var datas = {'focus_id': $(this).attr('data-focus') }; 
			$.post( "/admin/focus-activate-photo", datas,function(){
				$('#add-photo-focus').slider({ disabled: false });
				$('.photo-actived').hide();
			});
		}
		else 
		{

			// ajax call to activate the photo 
			var datas = {'photo_active': true, 'focus_id': $(this).attr('data-focus') }; 
			$.post( "/admin/focus-activate-photo", datas,function(){
				$('#add-photo-focus').slider({ disabled: false });
				$('.photo-actived').show();
			});		
		}
	});

	// photo to add 
	$('.choose_from_album').click(function(){
		$('.choose_from_album').removeClass("photo-selected");
		$(this).addClass("photo-selected"); 
		$('#thumb-selected').html('<img src="'+$(this).attr("src")+'" alt="" class="center-thumb thumb-selected" id="'+$(this).attr("id")+'"/>');
		var photo_selected = $('#thumb-selected img').attr("id");
	    $('#photo-selected-to-register').val(photo_selected);
	});
});
