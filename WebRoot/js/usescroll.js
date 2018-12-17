$(function(){
	$("#wizard").scrollable({
		onSeek:function(event,i){
			$("#status li").removeClass("active").eq(i).addClass("active");
		}
	});
});