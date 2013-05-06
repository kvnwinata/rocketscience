// Resizing images
// Applied <div id="centered" align="center"> </div>

	var resizeMediumImages = function(){
		$(".medium").css('height',"100px");
		$(".medium").css('width',"100px");
		$(".medium").css('visibility',"visible");
	};


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
			$(this).remove();
			$(this).appendTo($("#inkBox-image"));
			$(".inkBox-message").remove();
			$(this).attr("draggable","true").attr("ondragstart","drag(event)");
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
