// photo to add or not 
$('#add-photo').on('change', function() {
  	if($(this).val() == 'off') 
	{
		$('.photo-actived').hide();
		// ajax call to desactivate the photo 
		var datas = {'photo_active': false, 'focus_id': $(this).attr('data-focus') }; 
		$.post( "/admin/focus-activate-photo", datas);
	}
	else 
	{
		// ajax call to desactivate the photo 
		$('.photo-actived').show();
		// ajax call to desactivate the photo 
		var datas = {'photo_active': true, 'focus_id': $(this).attr('data-focus') }; 
		$.post( "/admin/focus-activate-photo", datas);		
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
