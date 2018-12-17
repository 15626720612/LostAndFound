// 绑定鼠标移入原图窗口事件
        $('.orig').mouseover(function(e){
                $('.fd').css('display','block');
                $('.blocks').css('display','block');

        })
        //绑定鼠标在原图窗口移动的事件
        $('.orig').mousemove(function(e){

                // 获取鼠标当前的位置
                var x=e.clientX;
                var y=e.clientY;
                // 获取原图窗口距离文档的偏移位置
                var sX=$('.orig').offset().left;
                var sY=$('.orig').offset().top;

                // 计算鼠标的相对位置（相对于原图窗口的偏移距离）
                var mx=x-sX;
                var my=y-sY;

                // 获取小框框的宽高
                var mw=$('.blocks').width()/2;
                var mh=$('.blocks').height()/2;

                // 鼠标移动后小框框的移动距离
                $('.blocks').css({left:mx-mw+'px',top:my-mh+'px'});

                // 获取小框框的偏移位置
                    var lw=$('.blocks').position().left;
                    var lh=$('.blocks').position().top;


                // 判断边界（小框框只能在原图窗口范围内移动）
                    var maxW=$('.orig').width()-$('.blocks').width()
                    var maxH=$('.orig').height()-$('.blocks').height()
                    // 左边界
                    if(lw<=0){$('.blocks').css('left','0px');}
                    // 右边界
                    if(lw>=maxW){
                        $('.blocks').css('left',maxW+'px');
                    }
                    // 上边界
                    if(lh<=0){$('.blocks').css('top','0px');}
                    // 下边界
                    if(lh>=maxH){
                        $('.blocks').css('top',maxH+'px');
                    }

                    // 获取小框框的偏移位置
                    var lw=$('.blocks').position().left;
                    var lh=$('.blocks').position().top;
                // 计算鼠标在小图里的位置  *2.5计算大图移动的比例
                    var newX=lw*2.5;
                    var newY=lh*2.5;



                $('.fd img').css({left:-newX+'px',top:-newY+'px'});
        })
        //绑定鼠标离开原图窗口事件
        $('.orig').mouseout(function(){
                $('.fd').css('display','none');
                $('.blocks').css('display','none');
        })