
var undoTattoo = function(){
	console.log('undo clicked')
	$(".undo-display").css('display','none');

	$(".inkBox-message").remove();
	// perform the undo operation
	// update internal data
	tattoo_type[undo_data.ID] = undo_data.type;
	tattoo_generation[undo_data.ID] = undo_data.gen;
	images_in_inkbox.splice(undo_data.pos_in_inkbox,0,undo_data.ID);
	var img = createImageWithContainer(undo_data.ID,undo_data.src,false);
	$(img).addClass('in-inkbox');
	$(img).children().each(function(){ $(this).addClass('in-inkbox')})
	if (undo_data.pos_in_inkbox === images_in_inkbox.length - 1) { // if it's the last element
		$(img).appendTo($("#inkBox-image"))
	} else {
		$(img).insertBefore($("#"+images_in_inkbox[undo_data.pos_in_inkbox + 1]+".tattoo-image-container"));
	}
	$("#"+undo_data.ID+'.tattoo-image-container').attr("draggable","true").attr("ondragstart","drag(event)");
	numImgInInkbox++;
	fixInkBoxSize();
	if(undo_data.added){ // new image was added, need to remove that
		$('#'+undo_data.ID).remove();
		// set the status of the image
		current_images_status[current_images.indexOf(undo_data.ID)] = true;
	}

	//update the modal screen, if needed
	if($("#sliding").css('display')!=="none"){
		constructSlideShow(undo_data.ID,undo_data.src);
	}
	// ajax call to update server-side database
	$.ajax({
			url: "/images/like",
			type: "GET",
			headers: {
				'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
			},
			dataType:'json',
			data:{
				'image_id': undo_data.ID
			}
		});
}

var fixInkBoxSize = function(){
	var fix = numImgInInkbox > 8;
	if(fix){
		$("#inkBox-image").css('height',$("#inkBox-image").height());
		$("#inkBox-image").css('overflow-y','scroll');
	} else {
		$("#inkBox-image").css('height','auto');
		$("#inkBox-image").css('overflow-y','auto');
	}

}