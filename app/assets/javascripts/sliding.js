var slidingThing = function(){
		


		$(".analyze").mousedown(function(e){
			e.preventDefault();
			modal_screen_mode = true;
			resizeModalScreen();
			if ($("#sliding").css('display')==="none"){
				$("#sliding").show(500,function(){$("#closeAnalysis").show();});
				$("#modal-screen").css('visibility','visible');
                $("#closeAnalysis").css('visibility','visible');
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
			} else {
				//$(pane).show(1000);
				//isopen = true;
				$("#closeAnalysis").hide(500);
				$("#sliding").hide(500);
				$("#modal-screen").css('visibility','hidden');
		}
	});
	$("#closeAnalysis").click(function(){
		$("#closeAnalysis").hide(500);
		$("#sliding").hide(500);
		$("#modal-screen").css('visibility','hidden');
	})
	$("#modal-screen").click(function(){
		$("#closeAnalysis").hide(500);
		$("#sliding").hide(500);
		$("#modal-screen").css('visibility','hidden');
	})	
}