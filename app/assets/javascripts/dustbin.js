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
	$(document.getElementById(data)).remove().appendTo($(".artwork-container")).attr("draggable",'false').removeAttr("ondragstart");
	// need to do some update to the database
	numImgInInkbox--;
	if(!numImgInInkbox){
		$("#inkBox-image").html('<p class="inkBox-message">No images yet.</p> ')
	}
}

