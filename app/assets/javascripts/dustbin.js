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
	var data=ev.dataTransfer.getData("Text");
	$(document.getElementById(data)).remove();
	// need to do some update to the database
}

