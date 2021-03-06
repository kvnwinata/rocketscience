
function getWindowHeight() {
	var windowHeight = 0;
	if (typeof(window.innerHeight) == 'number') {
		windowHeight = window.innerHeight;
	}
	else {
		if (document.documentElement && document.documentElement.clientHeight) {
			windowHeight = document.documentElement.clientHeight;
		}
		else {
			if (document.body && document.body.clientHeight) {
				windowHeight = document.body.clientHeight;
			}
		}
	}
	return windowHeight;
}


function setContent() {
	if (document.getElementById) {
		var windowHeight = getWindowHeight();
		if (windowHeight > 0) {
			var contentElement = document.getElementById('contz');
            if (contentElement){
                var contentHeight = contentElement.offsetHeight;
                if (windowHeight - contentHeight > 0) {
                    contentElement.style.minHeight = ((windowHeight) - 100) + 'px';
                }
            }
			
		}
	}
}






function setMiddle() {
	if (document.getElementById) {
		var windowHeight = getWindowHeight();
		if (windowHeight > 0) {
			var contentElement = document.getElementById('centered');
			var contentHeight = contentElement.offsetHeight;
			if (windowHeight - contentHeight > 0) {
				contentElement.style.position = 'relative';
				contentElement.style.top = ((windowHeight / 2) - (contentHeight / 2)) + 'px';
			}
			else {
				contentElement.style.position = 'static';
			}
		}
	}
}



function setBottom() {
	if (document.getElementById) {
		var windowHeight = getWindowHeight();
		var windowWidth = document.documentElement.clientWidth;
		if (windowHeight > 0) {
			var contentElement = document.getElementById('bottoms');
			var contentHeight = contentElement.offsetHeight;
			var contentWidth = contentElement.offsetWidth;
			if (windowHeight - contentHeight > 0) {
				contentElement.style.position = 'absolute';
				contentElement.style.top = ((windowHeight) - (contentHeight) ) + 'px';
				contentElement.style.left = ((windowWidth/2) - (contentWidth/2)) + 'px';
			}
			else {
				contentElement.style.position = 'static';
			}
		}
	}
}