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

// Action that hides undo:
//  dragging in dustbin.js -> drag
//  adding new image in image.js -> addButton click fxn
//  zooming on an image
// need global variable to keep track of states of the system, such as how many images is selected
var numImgInInkbox = 0;
var tattoo_type = {}; // dictionary from ID to tattoo type
var tattoo_generation = {}; // generation of image query
var current_images = []; // array of current images displayed to the left of the screen
var current_images_status = []; // array tracking current images if they had been added to the inkbox
var current_images_type = [];
var images_in_inkbox = []; // array of images added to inkBox
var current_tattoo_type = "random";
var browsing_number = 0; // a number indicating which iteration of image query the page is on
var undo_data = {};
var modal_screen_mode = true; // true means showing analysis page, false means showing image
// support for IE8
// http://stackoverflow.com/questions/1181575/javascript-determine-whether-an-array-contains-a-value
if(!Array.prototype.indexOf) {
    Array.prototype.indexOf = function(needle) {
        for(var i = 0; i < this.length; i++) {
            if(this[i] === needle) {
                return i;
            }
        }
        return -1;
    };
}
    window.onload = function() {
    	
        if (gon.page_type === "login"){
            setMiddle();
            setBottom();
            
                $("a#single_image").fancybox();

                $("a#inline").fancybox({
                  'hideOnContentClick': true
                });

                $("a.group").fancybox({
                  'transitionIn'	:	'elastic',
                  'transitionOut'	:	'elastic',
                  'speedIn'		:	600, 
                  'speedOut'		:	200, 
                  'overlayShow'	:	false
                });
            
            
        }

        if (gon.page_type === "search"){
            tab_setup();
        }
        
        if (gon.page_type === "index"){
            slidingThing();
            numImgInInkbox = 0;
            tattoo_type = {}; // dictionary from ID to tattoo type
            tattoo_generation = {};
            current_images = []; // array of current images on display (on the left)
            current_images_status = [];
            current_images_type = [];
            images_in_inkbox = []; // array of images added to inkBox
            current_tattoo_type = "random";
            browsing_number = -1;
            undo_data = {};
            populate_inkBox();
            // NEED TO POPULATE INKBOX BEFORE PULLING IMAGES
            pull_images('random');
            fixInkBoxSize();

        }
        
    
        $("#dustbin").attr("ondrop","drop(event)");
		$("#dustbin").attr("ondragover","allowDrop(event)");

		// run when new elements added to inkbox
		$(".selectable-img").attr("draggable","false");
		//$(".selectable-img").attr("ondragstart","drag(event)");
        $("#sliding").css('position','fixed');
        $("#closeAnalysis").css('position','fixed');
        // take care of the modal-screen
        $("#modal-screen").css('width',$(window).width());
        $("#modal-screen").css('height', $(document).height());
        $("#sliding").css('width',$(window).width()*0.9)
        $("#sliding").css('height',$(window).height()*0.9)
        $("#sliding").css('left',$(window).width()*0.05)
        $("#sliding").css('top',$(window).height()*0.05)
        $("#closeAnalysis").css('left',$(window).width()*0.05)
        $("#closeAnalysis").css('top',$(window).height()*0.05)

        $(".undo-display").css('width',$(window).width()*0.7)
        $(".undo-display").css('left',$(window).width()*0.15)
        $(".undo-button").click(undoTattoo);
    }
    
    window.onresize = function() {
        if (gon.page_type === "login"){
            setMiddle();
            setBottom();
        }
        if (gon.page_type === "search"){
            setsearch();
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

        $(".undo-display").css('width',$(window).width()*0.7)
        $(".undo-display").css('left',$(window).width()*0.15)
    }
var resizeModalScreen = function(){
    $("#modal-screen").css('width',$(window).width());
    $("#modal-screen").css('height', $(document).height());
    $("#modal-screen").css('width',$(window).width());
    $("#modal-screen").css('height', $(document).height());
    var theWidth, theHeight;
    if (modal_screen_mode){
        theWidth = Math.max($(window).width(),700)
        theHeight = Math.max($(window).height(),500)
    } else {
        theWidth = Math.max($(window).width(),400)
        theHeight = theWidth*1.1;
    }
    $("#sliding").css('width',theWidth*0.9)
    $("#sliding").css('height',theHeight*0.9)
    $("#sliding").css('left',theWidth*0.05)
    $("#sliding").css('top',theHeight*0.05)
    $("#closeAnalysis").css('left',theWidth*0.05)
    $("#closeAnalysis").css('top',theHeight*0.05)
    
    $(".undo-display").css('width',theWidth*0.7)
    $(".undo-display").css('left',theWidth*0.15)
}
