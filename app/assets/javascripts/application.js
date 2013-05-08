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
var inkBox_slideshow;
var current_slideshow;
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
        
        setContent();
    	
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
        resizeModalScreen();
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
        setContent();
        // take care of the modal-screen
        resizeModalScreen();
    }
var resizeModalScreen = function(){
    $("#modal-screen").css('width',$(window).width());
    $("#modal-screen").css('height', $(document).height());
    $("#modal-screen").css('width',$(window).width());
    $("#modal-screen").css('height', $(document).height());
    var theWidth, theHeight, screenW, screenH;
    if (modal_screen_mode){
        theWidth = Math.max($(window).width()*0.9,700)
        theHeight = Math.max($(window).height()*0.9,500)
        
    } else {
        theWidth = 400
        theHeight = theWidth*1.1;
    }
    screenW = Math.max(1.1*theWidth,$(window).width());
    screenH = Math.max(1.1*theHeight,$(window).height());
    $("#sliding").css('width',theWidth)
        $("#sliding").css('height',theHeight)
        $("#sliding").css('left',(screenW - theWidth)/2)
        $("#sliding").css('top',(screenH - theHeight)/2)
        $("#closeAnalysis").css('left',(screenW - theWidth)/2)
        $("#closeAnalysis").css('top',(screenH - theHeight)/2)
    $(".undo-display").css('width',theWidth*0.7)
    $(".undo-display").css('left',theWidth*0.15)
}
