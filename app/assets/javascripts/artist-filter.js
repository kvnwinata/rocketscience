
var pull_artist = function(category){
	tab_setup();
	return;
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
		success: render_artist_tab
	});
}
var render_artist_tab = function(data,status){
	$("#infoPanel").html(""); // clear content
	for(var id in data){
			if (data.hasOwnProperty(id)){
				var tab = document.createElement('div');
				$(tab).append('<span class="artist-name">'+id+'</span>')
				$(tab).append('<span class="artist-email">('+data[id].email+')</span><br>');
				$(tab).append('<span class="artist-address">'+data[id].addr1+'</span><br>');
				$(tab).append('<span class="artist-email">'+data[id].addr1+'</span>')
				$(tab).appendTo($("#infoPanel"));

			
		}
		tab_setup();
	}
}