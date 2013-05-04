// Resizing images
// Applied <div id="centered" align="center"> </div>

	var resizeMediumImages = function(){
		$(".medium").css('height',"100px");
		$(".medium").css('width',"100px");
		$(".medium").css('visibility',"visible");
	};


	var attach_listeners_for_add_buttons = function(){
		$(".tattoo-image-container").mouseenter(function(){
			var class_name = $(this).attr('id')+"add";
			console.log(class_name);
			$("#"+class_name ).css('visibility', "visible");
		});
		$(".tattoo-image-container").mouseleave(function(){
			var class_name = $(this).attr('id')+"add";
			console.log(class_name);
			$("#"+class_name ).css('visibility', "hidden");
		});
	}
