var slidingThing = function(){
		
		$(".analyze").mousedown(function(e){
			e.preventDefault();
			if ($("#sliding").css('display')==="none"){
				$("#sliding").show(500,function(){$("#closeAnalysis").show();});

				$.ajax({
                        url: "/images/analyze",
                        type: "GET",
                        headers: {
                            'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
                        },
                        dataType:'html',
                        success: function(data,status){
        					$("#sliding").html(data);
        					resizeMediumImages();
        				}
                    });
				//
				//$(pane).hide({direction:'right',easing:'swing',duration:1000,done:function(){
				//	isopen = false;
				//}})
				//$(pane).hide("slide", { direction: "right" }, 1000);
			} else {
				//$(pane).show(1000);
				//isopen = true;
				$("#closeAnalysis").hide(500);
				$("#sliding").hide(500);
		}
	});
	$("#closeAnalysis").click(function(){
		$("#closeAnalysis").hide(500);
		$("#sliding").hide(500);
	})
		
}

var attach_listener_to_images = function(){
	$(".selectable-img").click(function(){
		$(this).remove();
		$(this).appendTo($("#inkBox-image"));
		$(".inkBox-message").remove();
		$(this).attr("draggable","true").attr("ondragstart","drag(event)");
		numImgInInkbox++;
		console.log('inkbox height: ' + $("#inkBox-image").height())
	});
}