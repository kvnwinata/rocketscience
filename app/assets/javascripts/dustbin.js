// http://www.w3schools.com/html/html5_draganddrop.asp
function drag(ev)
{	
			$(".undo-display").css('display','none');
	ev.dataTransfer.setData("Text",ev.target.id);
}
function allowDrop(ev)
{
	ev.preventDefault();
}
function drop(ev)
{
	ev.preventDefault();
	var data = ev.dataTransfer.getData("Text");
	// add the image back to the search area
	removeImageFromInkBox(data)
}

var removeImageFromInkBox = function(data){
	var source  = $("#"+data+".medium").attr('src')
	var img = createImageWithContainer(data,source,true);
	$(document.getElementById(data)).remove();
	undo_data.added = false;
	if (tattoo_type[data] === current_tattoo_type){
		if(tattoo_generation[data] === browsing_number){ // from the same generation, need to insert
			
			for(var ind = current_images.indexOf(data); ind < current_images.length; ind++)
				if (!current_images_status[ind]) break; // found the one that hasn't been added
			if (ind === current_images.length){ // this is the last image, should just append
				$(img).appendTo($(".artwork-container")).attr("draggable",'false').removeAttr("ondragstart");
			} else {

				$(img).insertBefore($("#"+current_images[ind]+".tattoo-image-container"));
			}
			current_images_status[current_images.indexOf(data)] = false;
		} else { // else, just append it there
			$(img).appendTo($(".artwork-container")).attr("draggable",'false').removeAttr("ondragstart");
			current_images.push(data);
			current_images_status.push(false);
		}
		undo_data.added = true;
	}

	// undo data
	undo_data.ID = data;
	undo_data.src = source;
	undo_data.pos_in_inkbox = images_in_inkbox.indexOf(data);
	undo_data.gen = tattoo_generation[data];
	undo_data.type = tattoo_type[data];

	// need to do some update to the database
	numImgInInkbox--;
	fixInkBoxSize();
	delete tattoo_type[data];
	delete tattoo_generation[data];
	images_in_inkbox.splice(images_in_inkbox.indexOf(data),1)
	if(!numImgInInkbox){
		$("#inkBox-image").html('<p class="inkBox-message">No images yet.</p> ')
	}
	$(".undo-display").fadeIn(500);
	// ajax call to update info on the server side
	var img_id = data;
	$.ajax({
			url: "/images/unlike",
			type: "GET",
			headers: {
				'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
			},
			dataType:'json',
			data:{
				'image_id': img_id
			}
		});
}
