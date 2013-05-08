
var render_artist_tab = function(data,status){
	$("#infoPanel").html(""); // clear content
	for(var id in data){
		if (data.hasOwnProperty(id)){
			var tab = document.createElement('div');
			$(tab).addClass("artist-tab inactiveTab");
			$(tab).attr('id', id);
			$(tab).html('<span class="artist-name">'+data[id].name+'</span><span class="artist-email">('+data[id].email+')</span><br><span class="artist-address">'+data[id].address1+'</span><br><span class="artist-email">'+data[id].address2+'</span>').appendTo($("#infoPanel"));
		}
		tab_setup();
	}
};
var pull_artist = function(category){
	$.ajax({
		url: "/artists/get_category",
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
};