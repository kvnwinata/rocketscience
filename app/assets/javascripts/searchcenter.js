

function setsearch() {
	if (document.getElementById) {
		var windowHeight = getWindowHeight();
		var windowWidth = document.documentElement.clientWidth;
		if (windowHeight > 0) {
			var contentElement = document.getElementById('infoPanel');
			var contentHeight = contentElement.offsetHeight;
			var contentWidth = contentElement.offsetWidth;
            contentElement.style.height= windowHeight +"px";
            
		
		}
	}
}