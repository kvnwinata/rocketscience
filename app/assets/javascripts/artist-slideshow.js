var constructSlideShowArtist = function(ID,SRC){
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
	$(button).attr('id','add').appendTo($(control)).click(slideshowButton_art)
	$(button).attr('class','smbutton');
	var progress = document.createElement('span')
	$(progress).attr('class','smlabel')
	$(progress).attr('id','prog').appendTo($(control))
	var prev = document.createElement('button')
	$(prev).attr('id','prev').appendTo($(control)).click(prevSlideshow_art).html(' < prev ');
	$(prev).attr('class','smbutton');
	var next = document.createElement('button')
	$(next).attr('id','next').appendTo($(control)).click(nextSlideshow_art).html(' next > ');
	$(next).attr('class','smbutton');
	current_slideshow = current_images.indexOf(ID);
	$(progress).html((current_slideshow + 1)+' of '+current_images.length)
	console.log(ID)
	console.log(images_in_inkbox)
	if(images_in_inkbox.indexOf(ID) < 0){ //
		$('#add').html('+ add ')
		$('#add').removeClass('smbuttond');
		$('#add').addClass('smbutton');
		$('#add').removeAttr('disabled');
	} else {
		$('#add').html('added ')
		$('#add').removeClass('smbutton');
		$('#add').addClass('smbuttond');
		$('#add').attr('disabled','disabled');
	}
}
var nextSlideshow_art = function(){
	console.log('next clicked')

		current_slideshow++;
		if (current_slideshow > current_images.length - 1) current_slideshow = 0;
		$('#prog').html((current_slideshow + 1)+' of '+current_images.length)
		var id = current_images[current_slideshow]
	
	$("#slideshow-image").attr('src',$('#'+id+'.medium').attr('src'));
	if(images_in_inkbox.indexOf(id) < 0){ //
		$(button).html('+ add ')
	} else {
		$(button).html('added ')
		$(button).attr('disabled','disabled');
	}
}
var prevSlideshow_art = function(){
	console.log('prev clicked')
		current_slideshow--;
		if (current_slideshow < 0) current_slideshow = current_images.length - 1;
		$('#prog').html((current_slideshow + 1)+' of '+current_images.length)
		var id = current_images[current_slideshow]
	
	$("#slideshow-image").attr('src',$('#'+id+'.medium').attr('src'));
if(images_in_inkbox.indexOf(id) < 0){ //
		$(button).html('+ add ')
	} else {
		$(button).html('added ')
		$(button).attr('disabled','disabled');
	}
}
var slideshowButton_art = function(){
	console.log('add clicked')
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