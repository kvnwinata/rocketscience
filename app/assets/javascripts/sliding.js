// set the size
		$(".hidden").css("width",$(window).width());
		var isopen = true;
		var out_x = $(window).width()-25;
		var in_x = 10;
		var pane = document.createElement('div');
		$("#sliding").css('width',$(document).width());
		$(pane).attr('id','background');
		var activator = document.createElement('div');
		$(activator).attr('id','activator');
		$(pane).appendTo('#sliding');
		$(activator).appendTo('#background');
		$(pane).css('left',in_x);
		$(".analyze").mousedown(function(e){
			e.preventDefault();
			if (isopen){
				$("#sliding").toggleClass("hidden");
				$(pane).animate({left:out_x},1000,'swing',function(){isopen = false;})
				//
				//$(pane).hide({direction:'right',easing:'swing',duration:1000,done:function(){
				//	isopen = false;
				//}})
				//$(pane).hide("slide", { direction: "right" }, 1000);
			} else {
				//$(pane).show(1000);
				//isopen = true;
				$("#sliding").toggleClass("hidden");
				$(pane).animate({left:in_x},1000,'swing',function(){isopen = true;})
			}
		});
		$(window).resize(function(){
			console.log('resize called '+$(window).width());
			$("#sliding").css('width',$(window).width());
			out_x = $(document).width()-25;
			if(isopen){
				$(pane).css('left',in_x);
			} else {
				$(pane).css('left',out_x);
			}
		});