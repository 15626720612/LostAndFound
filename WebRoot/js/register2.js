jQuery(document).ready(function($) {
	$("#rebtn").on("click", function () {
		if($("#rename").val()==""||$("#idc").val()==""||$("#email").val()==""||$("#pwdtip").val()==""||$("#pwdan").val()==""){
			alert("请检查输入");
			return false;
		}
		
		if($("#rename").val()<6){
			alert("请输入真实姓名");
			return false;
		}
		
		var reg1=/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
		if(!reg1.test($("#idc").val())){
			alert("身份证号码为15位或者18位数字");
			return false;
		}
		
		var reg2=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		if(!reg2.test($("#email").val())){
			$("#tips").show().html("邮箱格式错误，请检查输入");
			/*alert("邮箱格式错误，请检查输入");*/
			return false;
		}
	});
});