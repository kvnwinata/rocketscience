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

// need global variable to keep track of states of the system, such as how many images is selected
var numImgInInkbox = 0;

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
        attach_listeners_for_add_buttons();

        $("#dustbin").attr("ondrop","drop(event)");
		$("#dustbin").attr("ondragover","allowDrop(event)");

		// run when new elements added to inkbox
		$(".selectable-img").attr("draggable","false");
		//$(".selectable-img").attr("ondragstart","drag(event)");

        // take care of the modal-screen
        $("#modal-screen").css('width',$(window).width());
        $("#modal-screen").css('height', $(document).height());
        console.log($(document).height())
        console.log($("#modal-screen").css('height'));
        $("#sliding").css('width',$(window).width()*0.9)
        $("#sliding").css('height',$(window).height()*0.9)
        $("#sliding").css('left',$(window).width()*0.05)
        $("#sliding").css('top',$(window).height()*0.05)
        $("#closeAnalysis").css('left',$(window).width()*0.05)
        $("#closeAnalysis").css('top',$(window).height()*0.05)
    }
    
    window.onresize = function() {
        if (gon.page_type === "login"){
            setMiddle();
            setBottom();
        }
        // take care of the modal-screen
        $("#modal-screen").css('width',$(window).width());
        $("#modal-screen").css('height', $(document).height());
        $("#modal-screen").css('width',$(window).width());
        $("#modal-screen").css('height', $(document).height());
        $("#sliding").css('width',$(window).width()*0.9)
        $("#sliding").css('height',$(window).height()*0.9)
        $("#sliding").css('left',$(window).width()*0.05)
        $("#sliding").css('top',$(window).height()*0.05)
        $("#closeAnalysis").css('left',$(window).width()*0.05)
        $("#closeAnalysis").css('top',$(window).height()*0.05)
    }
