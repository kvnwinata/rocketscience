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
var prevSlideshow_art = function(){
	console.log('prev clicked')
	current_slideshow--;
	if (current_slideshow < 0) current_slideshow = current_images.length - 1;
	$('#prog').html((current_slideshow + 1)+' of '+current_images.length)
	var id = current_images[current_slideshow]
	
	$("#slideshow-image").attr('src',$('#'+id+'.medium').attr('src'));
	var id = current_images[current_slideshow]
	if(images_in_inkbox.indexOf(id) < 0){ //
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

var slideshowButton_art = function(){
	console.log('add clicked')
	$.ajax({
		url: "/images/like",
		type: "GET",
		headers: {
			'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
		},
		dataType:'json',
		data:{
			'image_id': current_images[current_slideshow]
		}
	});
	images_in_inkbox.push(current_images[current_slideshow]);
	undo_data = {};
	undo_data.ID = current_images[current_slideshow];
	$(".undo-display").html('The tattoo has been added to your InkBox.&nbsp;<span class="undo-button" style="cursor: hand; cursor: pointer;text-decoration:underline" onclick="undo_artist()">Undo</span>');
	$(".undo-display").fadeOut(0,function(){$(this).fadeIn(500)});
	var id = current_images[current_slideshow]
	if(images_in_inkbox.indexOf(id) < 0){ //
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

var undo_artist = function(){
	$(".undo-display").css('display','none')
	$.ajax({
		url: "/images/unlike",
		type: "GET",
		headers: {
			'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
		},
		dataType:'json',
		data:{
			'image_id': undo_data.ID
		}
	});
	images_in_inkbox.splice(images_in_inkbox.indexOf(undo_data.ID),1);
	var id = current_images[current_slideshow]
	if(images_in_inkbox.indexOf(id) < 0){ //
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