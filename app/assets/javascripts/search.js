        
    var load_info = function(data,status){
        $("#artistPanel").html(data);
        resizeMediumImages();
        $(".medium").click(function(){
            
        })
    };


var tab_setup = function(){
    var containerID = "#container";
    var infoPanel = document.getElementById('infoPanel');

    var artistPanel = document.getElementById('artistPanel');
        $(infoPanel).children('div').each(function(){
            if($(this).hasClass('artist-tab')){
                $(this).hover(function(){
                    console.log('MouseIn')
                    if(!$(this).hasClass('activeTab')){
                        $(this).addClass('hoverTab');
                        $(this).removeClass('inactiveTab');
                    }
                }, function(){
                    console.log('MouseOut')
                    if(!$(this).hasClass('activeTab')){
                        $(this).addClass('inactiveTab');
                        $(this).removeClass('hoverTab');
                    }
                });
                $(this).click(function(e){
                    $('.activeTab').addClass('inactiveTab');
                    $('.activeTab').removeClass('activeTab');
                    $(this).addClass('activeTab');
                    $(this).removeClass('inactiveTab');
                    $(this).removeClass('hoverTab');



                    $.ajax({
                        url: "/artists/info",
                        type: "GET",
                        headers: {
                            'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
                        },
                        dataType:'html',
                        data:{
                            'artist_id': $(this).attr("id")
                        },
                        success: load_info
                    });

                })
            }
        })

    };