// Resizing images
// Applied <div id="centered" align="center"> </div>

var resizeMediumImages = function(){
	$(".medium").css('height',"100px");
	$(".medium").css('width',"100px");
	$(".medium").css('visibility',"visible");
};


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
				constructSlideShow(this.id,$(this).attr('src'));
			}
		}
		);

return im_container;
}
var constructSlideShow = function(ID,SRC){
			$("#sliding").show(500,function(){$("#closeAnalysis").show();});
				$("#modal-screen").css('visibility','visible');
				$("#closeAnalysis").css('visibility','visible');
				// clear content & set up content for the slinding pane
				$('#sliding').html('');
                
                
                
                
                
				var theWidth = 400;
				var thisTattoo = document.createElement('img');
				$(thisTattoo).attr('src',SRC);
				var frac = 0.9;
				$(thisTattoo).attr('id','slideshow-image')
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
                $(control).css('left','55px')
                $(control).css('top','391px')
                
                
                
				var button = document.createElement('button')
				$(button).attr('id','add').appendTo($(control)).click(slideshowButton)
                $(button).attr('class','smbutton');
				var progress = document.createElement('span')
                $(progress).attr('class','smlabel')
				$(progress).attr('id','prog').appendTo($(control))
				var prev = document.createElement('button')
				$(prev).attr('id','prev').appendTo($(control)).click(prevSlideshow).html(' < prev ');
                $(prev).attr('class','smbutton');
				var next = document.createElement('button')
				$(next).attr('id','next').appendTo($(control)).click(nextSlideshow).html(' next > ');
                $(next).attr('class','smbutton');
				
				inkBox_slideshow = $('#'+ID+'.medium').hasClass('in-inkbox');
				if(inkBox_slideshow){
					current_slideshow = images_in_inkbox.indexOf(ID);
					$(progress).html((current_slideshow + 1)+' of '+images_in_inkbox.length)
					$(button).html('remove ')
				} else {
					current_slideshow = current_images.indexOf(ID);
					$(progress).html(indexForSlideShow(current_slideshow)+' of ' + numImgOnDisplay())
					$(button).html('+ add ')
				}
                
                
                

}
var slideshowButton = function(){
	if(inkBox_slideshow){
		// need to remove image
		removeImageFromInkBox(images_in_inkbox[current_slideshow]);
		// need to update the image
		if(images_in_inkbox.length === 0){
			$('#sliding').html('<div style="color:black">There is no image in inkbox</div>')
		} else {
			var id = images_in_inkbox[current_slideshow]
			$("#slideshow-image").attr('src',$('#'+id+'.selectable-img').attr('src'));
			$('#prog').html((current_slideshow + 1)+' of '+images_in_inkbox.length)
		}
	} else {
		var id = current_images[current_slideshow]
		var source = $("#"+id+'.medium').attr('src');
		console.log(id)
		console.log(source)
		$("#"+id+'.tattoo-image-container').remove();
		addImageToInkBox(id,source);
		// undo data
		undo_data = {};
		undo_data.remove_mode = false;
		undo_data.ID = id;
		undo_data.SRC = source;
		$(".undo-display").html('The tattoo has been added to your InkBox.&nbsp;<span class="undo-button" style="cursor: hand; cursor: pointer;text-decoration:underline" onclick="undoTattoo()">Undo</span>');
		$(".undo-display").fadeOut(0,function(){$(this).fadeIn(500)});
	
		$(".inkBox-message").remove();
		if (numImgOnDisplay() === 0){
			$('#sliding').html('<div style="color:black">There is no more tattoo to display. Please choose a different category or randomize again.</div>')
		} else {
			current_slideshow = incrementIndex(current_slideshow);
			var id = current_images[current_slideshow]
			$("#slideshow-image").attr('src',$('#'+id+'.selectable-img').attr('src'));
			$('#prog').html(indexForSlideShow(current_slideshow)+' of ' + numImgOnDisplay())
		}
	}
}
var indexForSlideShow = function(currentOne){
	var ans = 1;
	for(var i = 0; i < current_images_status.length; i++){
		if(i === currentOne) break;
		if(!current_images_status[i]) ans++;
	}
	return ans;

}
var incrementIndex = function(currentOne){

	var ans = currentOne;
	if (ans === current_images_status.length) ans = 0;
	for (var i = 0; i < current_images_status.length; i++){
		ans++;
		if (ans === current_images_status.length) ans = 0;
		if (!current_images_status[ans]) break;
	}
	return ans;
}
var decrementIndex = function(currentOne){

	var ans = currentOne;
	if (ans < 0 ) ans = current_images_status.length - 1;
	for (var i = 0; i < current_images_status.length; i++){
		ans--;
		if (ans < 0 ) ans = current_images_status.length - 1;
		if (!current_images_status[ans]) break;
	}
	return ans;
}
var numImgOnDisplay = function(){
	console.log(current_images_status)
	var ans = 0;
	for(var i = 0; i < current_images_status.length; i++)
		if(!current_images_status[i]) ans++;
	console.log(ans)
	return ans;
}
var nextSlideshow = function(){
	console.log('next clicked')
	if(inkBox_slideshow){
		current_slideshow++;
		if (current_slideshow > images_in_inkbox.length - 1) current_slideshow = 0;
		$('#prog').html((current_slideshow + 1)+' of '+images_in_inkbox.length)
		var id = images_in_inkbox[current_slideshow]
	} else {
		current_slideshow = incrementIndex(current_slideshow);
		$('#prog').html(indexForSlideShow(current_slideshow)+' of ' + numImgOnDisplay())
		var id = current_images[current_slideshow]
	}
	$("#slideshow-image").attr('src',$('#'+id+'.selectable-img').attr('src'));
}
var prevSlideshow = function(){
	console.log('prev clicked')
	if(inkBox_slideshow){
		current_slideshow--;
		if (current_slideshow < 0) current_slideshow = images_in_inkbox.length - 1;
		$('#prog').html((current_slideshow + 1)+' of '+images_in_inkbox.length)
		var id = images_in_inkbox[current_slideshow]
	} else {
		current_slideshow = decrementIndex(current_slideshow);
		$('#prog').html(indexForSlideShow(current_slideshow)+' of ' + numImgOnDisplay())
		var id = current_images[current_slideshow]
	}
	$("#slideshow-image").attr('src',$('#'+id+'.selectable-img').attr('src'));
}
var addImageToInkBox = function(id,source,type,gen,ajaxCall){
		// the last two parameters are not required if the image has been added by the user
		type = (typeof type !== 'undefined' )? type : current_images_type[current_images.indexOf(id)];
		gen = (typeof gen !== 'undefined' )? gen : browsing_number;
		ajaxCall = (typeof ajaxCall !== 'undefined' )? ajaxCall : true;
		var img = createImageWithContainer(id,source,false);
		$(img).addClass('in-inkbox');
		$(img).children().each(function(){ $(this).addClass('in-inkbox')})
		$(img).appendTo($("#inkBox-image"))
		$("#"+id+'.tattoo-image-container').attr("draggable","true").attr("ondragstart","drag(event)");
		numImgInInkbox++;
		fixInkBoxSize();
		images_in_inkbox.push(id);
		tattoo_type[id] = type;
		tattoo_generation[id] = gen;
			// set the status of the image
			current_images_status[current_images.indexOf(id)] = true;
			if(ajaxCall){
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
	}
	
	var populate_inkBox_backend = function(data,status){
		images_in_inkbox = [];
		tattoo_generation = {};
		tattoo_type = {};
		numImgInInkbox = 0;
		for(var id in data){
			addImageToInkBox(id,data[id].path,data[id].category_name,-1,false);
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
	$(".in-inkbox").removeAttr("draggable")
	$(".in-inkbox.tattoo-image-container").attr("draggable","true");

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
