$(document).on('pageinit',function() { 
	
	// photo to add or not 
	$('#add-photo-promo').on('change', function() {
		$(this).slider({ disabled: true });
	  	if($(this).val() == 'off') 
		{

			$('.photo-actived').hide();
			// ajax call to desactivate the photo 
			var datas = {'promo_id': $(this).attr('data-promo') }; 
			$.post( "/admin/promos-activate-photo", datas,function(){
				$('#add-photo-promo').slider({ disabled: false });
			});
		}
		else 
		{ 
			$('.photo-actived').show();
			// ajax call to activate the photo 
			var datas = {'photo_active': true, 'promo_id': $(this).attr('data-promo') }; 
			$.post( "/admin/promos-activate-photo", datas,function(){
				$('#add-photo-promo').slider({ disabled: false });
			});
			var photo_selected = $('#thumb-selected img').attr("id");
		    $('#photo-selected-to-register').val(photo_selected);		
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






