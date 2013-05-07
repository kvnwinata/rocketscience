// http://www.w3schools.com/html/html5_draganddrop.asp
function drag(ev)
{
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
	var img = createImageWithContainer(data,$("#"+data+".medium").attr('src'),true);
	$(document.getElementById(data)).remove();
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
	}
	// need to do some update to the database
	numImgInInkbox--;
	delete tattoo_type[data];
	delete tattoo_generation[data];
	images_in_inkbox.splice(images_in_inkbox.indexOf(data),1)
	if(!numImgInInkbox){
		$("#inkBox-image").html('<p class="inkBox-message">No images yet.</p> ')
	}
}

