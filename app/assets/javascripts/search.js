        
    var load_info = function(data,status){
        $("#artistPanel").html(data);
        resizeMediumImages();
    };


var tab_setup = function(){
    var containerID = "#container";
    var infoPanel = document.getElementById('infoPanel');

    $(infoPanel).css('width',0.35*$(containerID).width());
    var artistPanel = document.getElementById('artistPanel');
    // $(artistPanel).appendTo($(containerID));
    // $(artistPanel).attr('id','artistPanel');
    // $(artistPanel).css('height',$(containerID).height());

        //$(".activeTab").css('background-color',activeColor);
        //$(".inactiveTab").css('background-color',inactiveColor);
        
        
        // do an ajax pull to get all info
        // just simulate that for now
        /*
        $(infoPanel).html("<div id='1' class='artist-tab inactiveTab'>div1</div>\
        <div id='2' class='artist-tab inactiveTab'>div2</div>\
        <div id='3' class='artist-tab inactiveTab'>div3</div>\
        <div id='4' class='artist-tab inactiveTab'>div4</div>\
        <div id='5' class='artist-tab inactiveTab'>div5</div>\
        <div id='6' class='artist-tab inactiveTab'>div6</div>\
        <div id='7' class='artist-tab inactiveTab'>div7</div>\
        <div id='8' class='artist-tab inactiveTab'>div8</div>\
        <div id='9' class='artist-tab inactiveTab'>div9</div>\
        <div id='10' class='artist-tab inactiveTab'>div10</div>\
        <div id='11' class='artist-tab inactiveTab'>div11</div>")*/
        $(".artist-tab").css('width',$("#infoPanel").width());
        $(".artist-tab").css('height',70);
        // add function listener
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