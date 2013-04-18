// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

    window.onload = function() {
    	
        if (gon.page_type === "login"){
            setMiddle();
            setBottom();
        }

        if (gon.page_type === "search"){
            tab_setup();
        }
        
        if (gon.page_type === "index"){
            slidingThing();
            attach_listener_to_images();
        }
        
    
        resizeMediumImages();

        $("#dustbin").attr("ondrop","drop(event)");
		$("#dustbin").attr("ondragover","allowDrop(event)");

		// run when new elements added to inkbox
		$(".selectable-img").attr("draggable","true");
		$(".selectable-img").attr("ondragstart","drag(event)");
    }
    
    window.onresize = function() {
        if (gon.page_type === "login"){
            setMiddle();
            setBottom();
        }
    }
