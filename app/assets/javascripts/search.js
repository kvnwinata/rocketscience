        
    var load_info = function(data,status){
        current_images = [];
        $("#artistPanel").html(data);
        var allimg = $(".medium").parent().children('img')
        for(var i = 0; i < allimg.length;i++){
            current_images.push(allimg[i].id);
        }

        resizeMediumImages();
        $(".medium").css('cursor','pointer');
        $(".medium").click(function(e){
            e.preventDefault();
            $(".undo-display").css('display','none');
            console.log(this.id)
            modal_screen_mode = false;
            resizeModalScreen();
            if ($("#sliding").css('display')==="none"){
                constructSlideShowArtist(this.id,$(this).attr('src'));
            }
        })
        // wire up the like button
        $(".like-button").click(like_button_func);
            

            
    };

var like_button_func = function(){
            if ($(this).hasClass('liked')){
                $.ajax({
                        url: "/artists/unlike",
                        type: "GET",
                        headers: {
                            'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
                        },
                        dataType:'html',
                        data:{
                            'artist_id': $(this).attr("id")
                        }
                    });
            } else {
                $.ajax({
                        url: "/artists/like",
                        type: "GET",
                        headers: {
                            'X-CSRF-Token':$('meta[name="csrf-token"]').attr('content')
                        },
                        dataType:'html',
                        data:{
                            'artist_id': $(this).attr("id")
                        }
                    }
                )
            }
            $(this).toggleClass('liked');
            $(this).toggleClass('like');
        }
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
$("#closeAnalysis").click(function(){
        $("#closeAnalysis").hide(0);
        $("#sliding").hide(500);
        $("#modal-screen").css('visibility','hidden');
        $(".undo-display").css('display','none');
    })
    $("#modal-screen").click(function(){
        $("#closeAnalysis").hide(0);
        $("#sliding").hide(500);
        $("#modal-screen").css('visibility','hidden');
        $(".undo-display").css('display','none');
    })
    };