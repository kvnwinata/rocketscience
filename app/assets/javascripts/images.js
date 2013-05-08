// Resizing images
// Applied <div id="centered" align="center"> </div>

var resizeMediumImages = function(){
	$(".medium").css('height',"100px");
	$(".medium").css('width',"100px");
	$(".medium").css('visibility',"visible");
};

/* should not need these functions anymore
var attach_listeners_for_add_buttons = function(){
		// mouse enter
		$(".tattoo-image-container").mouseenter(function(){
			$("#"+$(this).attr('id')+".addbutton").css('visibility', "visible");
		});
		
		// mouse leave
		$(".tattoo-image-container").mouseleave(function(){
			var id = $(this).attr('id');
			$("#"+$(this).attr('id')+".addbutton").css('visibility', "hidden");
		});

		$(".addbutton").click(function(){
			// code for add.
			// don't forget to remove the add button
			var source = $("#"+this.id+'.medium').attr('src');
			$("#"+this.id+'.tattoo-image-container').remove();
			var img = createImageWithContainer(this.id,source,false);
			$(img).appendTo($("#inkBox-image"))
			resizeMediumImages();
			$(".inkBox-message").remove();
			$("#"+this.id+'.tattoo-image-container').attr("draggable","true").attr("ondragstart","drag(event)");
			numImgInInkbox++;
			console.log('inkbox height: ' + $("#inkBox-image").height());
		});
	}

	var attach_listener_to_images = function(){
		$(".selectable-img").click(function(e){
			e.preventDefault();
			if ($("#sliding").css('display')==="none"){
				$("#sliding").show(500,function(){$("#closeAnalysis").show();});
				$("#modal-screen").css('visibility','visible');
				$("#closeAnalysis").css('visibility','visible');
				// clear content
				$('#sliding').html('');
				var thisTattoo = document.createElement('img');
				$(thisTattoo).attr('src',$(this).attr('src'));
				$(thisTattoo).css('width',0.9*$(window).height()*0.9);
				$(thisTattoo).css('position','absolute');
				$(thisTattoo).css('top','5%');
				$(thisTattoo).css('left','5%');
				$(thisTattoo).appendTo($('#sliding'))

			}
		}
		);
	}
*/

	var createImageWithContainer = function(id,src,withAddButton){
		var im_container= document.createElement('span');
		$(im_container).addClass("tattoo-image-container")
		$(im_container).attr('id',id);
		$(im_container).css('position','relative')
		
		var img = document.createElement('img');
		$(img).attr('src',src).addClass("medium selectable-img").attr('id',id);
		$(img).css('visibility','hidden').css('z-index',0);
		$(img).appendTo($(im_container));
		if (withAddButton){
			var addButton = document.createElement('div');
			$(addButton).addClass('addbutton').attr('id',id);
			$(addButton).appendTo($(im_container));
			// add listener for the buttons
			// mouse enter
			$(im_container).mouseenter(function(){
				$("#"+$(this).attr('id')+".addbutton").css('visibility', "visible");
			});
		
			// mouse leave
			$(im_container).mouseleave(function(){
				var id = $(this).attr('id');
				$("#"+$(this).attr('id')+".addbutton").css('visibility', "hidden");
			});

			$(addButton).click(function(){
				// code for add.
				// don't forget to remove the add button
			$(".undo-display").css('display','none');
				var source = $("#"+this.id+'.medium').attr('src');
				$("#"+this.id+'.tattoo-image-container').remove();
				addImageToInkBox(this.id,source);
				$(".inkBox-message").remove();
				console.log('inkbox height: ' + $("#inkBox-image").height());
			});

		}
		// resize medium image
		$(img).css('height',"100px");
		$(img).css('width',"100px");
		$(img).css('visibility',"visible");
		// add listener to image
		$(img).click(function(e){
			e.preventDefault();
			$(".undo-display").css('display','none');
			modal_screen_mode = false;
			resizeModalScreen();
			if ($("#sliding").css('display')==="none"){
				$("#sliding").show(500,function(){$("#closeAnalysis").show();});
				$("#modal-screen").css('visibility','visible');
				$("#closeAnalysis").css('visibility','visible');
				// clear content & set up content for the slinding pane
				$('#sliding').html('');
				var theWidth = 400;
				var thisTattoo = document.createElement('img');
				$(thisTattoo).attr('src',$(this).attr('src'));
				var frac = 0.9;
				$(thisTattoo).css('width',frac*theWidth);
				$(thisTattoo).css('position','absolute');
				$(thisTattoo).css('top',(1.0-frac)/2.0*theWidth);
				$(thisTattoo).css('left',(1.0-frac)/2.0*theWidth);
				$(thisTattoo).css('z-index',100)
				$(thisTattoo).appendTo($('#sliding'))
				var control = document.createElement('div');
				$(control).appendTo($('#sliding'));
				$(control).css('position','absolute');
				$(control).css('bottom',0.05* theWidth)
				$(control).css('z-index',100)
				$(control).css('color','black')
				var button = document.createElement('span')
				$(button).attr('id','add').appendTo($(control))
				var progress = document.createElement('span')
				$(progress).attr('id','prog').appendTo($(control))
				var next = document.createElement('span')
				$(next).attr('id','next').appendTo($(control)).click(nextSlideshow).html(' next ');
				var prev = document.createElement('span')
				$(prev).attr('id','next').appendTo($(control)).click(nextSlideshow).html(' prev ');
				inkBox_slideshow = $('#'+img.attr('id')+'.medium').hasClass('in-inkbox');
				console.log(inkBox_slideshow)
				if(inkBox_slideshow){
					current_slideshow = images_in_inkbox.indexOf(this.id);
					$(progress).html((current_slideshow + 1)+' of '+images_in_inkbox.length)
					$(button).html('remove')
				} else {
					current_slideshow = current_images.indexOf(this.id);
					$(progress).html((current_slideshow + 1)+' of '+current_images.length)
					$(button).html('add')
				}

			}
		}
		);

		return im_container;
	}
	var nextSlideshow = function(){

	}
	var prevSlideshow = function(){

	}
	var addImageToInkBox = function(id,source,type,gen){
		// the last two parameters are not required if the image has been added by the user
			type = (typeof type !== 'undefined' )? type : current_images_type[current_images.indexOf(id)];
			gen = (typeof gen !== 'undefined' )? gen : browsing_number;
			var img = createImageWithContainer(id,source,false);
			$(img).addClass('in-inkbox');
			$(img).appendTo($("#inkBox-image"))
			$("#"+id+'.tattoo-image-container').attr("draggable","true").attr("ondragstart","drag(event)");
			numImgInInkbox++;
			fixInkBoxSize();
			images_in_inkbox.push(id);
			tattoo_type[id] = type;
			tattoo_generation[id] = gen;
			// set the status of the image
			current_images_status[current_images.indexOf(id)] = true;
			// ajax call to update server-side database
			$.ajax({
			url: "/images/like",
			type: "GET",
			headers: {
				'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
			},
			dataType:'json',
			data:{
				'image_id': id
			}
		});
	}
	var render_images = function(data, status){
		// data = {id: path}
		// clear content
		current_images = [];
		current_images_type = [];
		current_images_status = [];
		$(".artwork-container").html("");
		for(var id in data){
			if (data.hasOwnProperty(id)){
				if (images_in_inkbox.indexOf(id) < 0) {// if the image isn't already in the inkBox
					
					var img = createImageWithContainer(id,data[id].path,true);

					$(img).appendTo($('.artwork-container'))
					current_images.push(id);
					current_images_status.push(false);
					current_images_type.push(data[id].category_name);
				}
			}
		}
		
		$(".selectable-img").attr("draggable","false");
	};
	var populate_inkBox_backend = function(data,status){
		images_in_inkbox = [];
		tattoo_generation = {};
		tattoo_type = {};
		numImgInInkbox = 0;
		for(var id in data){
			addImageToInkBox(id,data[id].path,data[id].category_name,-1);
			console.log(id);
		}
		if(images_in_inkbox.length === 0){
			$("#inkBox-image").html('<p class="inkBox-message">No images yet.</p> ')
		}
	}
	// need to do another ajax call for images in inkbox
	var populate_inkBox = function(){
		$("#inkBox-image").html('');
		numImgInInkbox = 0;
		fixInkBoxSize();
		// ajax call to get the images
		$.ajax({
			url: "/images/get_inkbox",
			type: "GET",
			headers: {
				'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
			},
			dataType:'json',
			
			success: populate_inkBox_backend
		});

	};

	var pull_images = function(category){

		$.ajax({
			url: "/images/get_category",
			type: "GET",
			headers: {
				'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
			},
			dataType:'json',
			data:{
				'category': category
			},
			success: render_images
		});
		current_tattoo_type = category;
		browsing_number++;
	};
