$(".hidden").css("width",$(window).width());
		var isopen = true;
		var out_x = $(window).width()-25;
		var in_x = 10;
		var pane = document.createElement('div');
		$("#container").css('width',$(document).width());
		$(pane).attr('id','background');
		var activator = document.createElement('div');
		$(activator).attr('id','activator');
		$(pane).appendTo('#container');
		$(activator).appendTo('#background');
		$(pane).css('left',in_x);
		$(".analyze").mousedown(function(e){
			e.preventDefault();
			if (isopen){
				$("#container").toggleClass("hidden");
				$(pane).animate({left:out_x},1000,'swing',function(){isopen = false;})
				//
				//$(pane).hide({direction:'right',easing:'swing',duration:1000,done:function(){
				//	isopen = false;
				//}})
				//$(pane).hide("slide", { direction: "right" }, 1000);
			} else {
				//$(pane).show(1000);
				//isopen = true;
				$("#container").toggleClass("hidden");
				$(pane).animate({left:in_x},1000,'swing',function(){isopen = true;})
			}
		});
		$(window).resize(function(){
			console.log('resize called '+$(window).width());
			$("#container").css('width',$(window).width());
			out_x = $(document).width()-25;
			if(isopen){
				$(pane).css('left',in_x);
			} else {
				$(pane).css('left',out_x);
			}
		});