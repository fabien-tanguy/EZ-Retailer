$('.choose_from_album').click(function(){
	$('.choose_from_album').removeClass("photo-selected");
	$(this).addClass("photo-selected");
	$('#thumb-selected').html('<img src="'+$(this).attr("src")+'" alt="" class="center-thumb thumb-selected"/>');
});



