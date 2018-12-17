$(function(){
//	设置十个变量保存返回值
	let N,P,TE,RP,RN,IC,EM,PW,PA,start;//账号N，密码P，电话TE，确认密码RP，真名RN，证件RC，邮箱EM，问题PW，答案PA，开始start

	//	账号输入框失去焦点时
	$("#uname").blur(function(){
		const reg = /^.{6,11}$/;
		username = $(this).val();
		N = reg.test(username);
		if(N){//判断用户名是否为6-11个字符
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").hide().html("");
			$(".error_tip").show().html("用户名为6-11个字符");
		}
		console.log(N);
		return N;
	});
	
//	密码输入框失去焦点时
	$("#password2").blur(function(){
		const reg = /((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{8,16}/i;
		password = $(this).val();
		P= reg.test(password);
		if(P){//判断密码是否为字母、数字或字符组合
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").hide().html("");
			$(".error_tip").show().html("密码为8-16位的字母、数字或字符组合");
		}
		console.log(P);
		return P;
	});
	
//	电话输入框失去焦点
	$("#uphone").blur(function(){
		const reg = /^1[3|4|5|6|7|8][0-9]\\d{8}$/;
		phone = $(this).val();
		TE= reg.test(password);
		if(TE){//判断密码是否为字母、数字或字符组合
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").hide().html("");
			$(".error_tip").show().html("请输入正确的电话号码");
		}
		console.log(TE);
		return TE;
	});
//  确认密码框失去焦点
	$("#cfpassword2").blur(function(){
		const password = $("#password2").val();//获取输入的密码
		re_password = $(this).val();
		RP=password===re_password;
//		判断两次密码是否一致
		if(RP && re_password!=""){
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").show().html("密码不一致，请重新输入");
		}
		console.log(RP);
		return RP;
	});
	
//	姓名输入框失去焦点
	$("#rename").blur(function(){
		const reg = /^([a-zA-Z0-9\u4e00-\u9fa5\·]{1,10})$/;
		rename = $(this).val();
		RN= reg.test(rename);
		if(RN){//判断密码是否为中文姓名
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").hide().html("");
			$(".error_tip").show().html("请输入您的姓名");
		}
		console.log(RN);
		return RN;
	});
	
//	身份证输入框失去焦点
	$("#idcard").blur(function(){
		const reg =  /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
		idcard = $(this).val();
		IC= reg.test(idcard);
		if(IC){//判断密码是否为中文姓名
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").hide().html("");
			$(".error_tip").show().html("身份证号码为15位或者18位");
		}
		console.log(IC);
		return IC;
	});
	
//	邮箱输入框失去焦点
	$("#email").blur(function(){
		const reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
		email = $(this).val();
		EM= reg.test(email);
		if(EM){//判断密码是否为中文姓名
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").hide().html("");
			$(".error_tip").show().html("请输入正确的邮箱地址");
		}
		console.log(EM);
		return EM;
	});
	
//	密码提示框
	$("#tips_q").blur(function(){
		tips_q = $(this).val();
		PW=reg.test(tips_q);
		if(PW!=""){//判断密码是否为空
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").hide().html("");
			$(".error_tip").show().html("请输入提示");
		}
		console.log(PW);
		return PW;
	});
	
//	答案框失去焦点
	$("#tips_a").blur(function(){
		tips_a = $(this).val();
		PA=reg.test(tips_a);
		if(PA!=""){//判断密码是否为空
			$(".error_tip").hide().html("");
		}else{
			$(".error_tip").hide().html("");
			$(".error_tip").show().html("请输入提示答案");
		}
		console.log(PA);
		return PA;
	});
/*	
//	点击第一个下一步
	$("#nextbtn1").click(function(){
		const username = $("#uname").val(),
		password =$("#password2").val(),
		phone =$("uphone").val(),
		re_password =$("#cfpassword2").val(),
		rename=$("#rename").val(),
		idcard=$("#idcard").val(),
		email=$("#email").val(),
		tips_q=$("#tips_q").val(),
		tips_a=$("#tips_a").val();
//		再次判断密码是否一致
		if(re_password != password){
			$("#error_tip").show().html("密码不一致，请重新输入");
			return;
		}else{
			if(N&& P&& TE&& RP&& RN&& IC&& PW&& PA){
				$.ajax({
					url:"",
					type:"post",
					dataType:"json",
					success:function(data){
						console.log(data);
						if(data.res_code===1){
							alert(1122);
							location = "about.jsp";
						}
					}
				})
			}
		}
	});
	
//	点击第二个下一步
	$("#nextbtn2").click(function(){
		const username = $("#uname").val(),
		password =$("#password2").val(),
		phone =$("uphone").val(),
		re_password =$("#cfpassword2").val(),
		rename=$("#rename").val(),
		idcard=$("#idcard").val(),
		email=$("#email").val(),
		tips_q=$("#tips_q").val(),
		tips_a=$("#tips_a").val();
//		再次判断密码是否一致
		if(re_password != password){
			$("#error_tip").show().html("密码不一致，请重新输入");
			return;
		}else{
			if(N&& P&& TE&& RP&& RN&& IC&& PW&& PA){
				$.ajax({
					url:"",
					type:"post",
					dataType:"json",
					success:function(data){
						console.log(data);
						if(data.res_code===1){
							alert(1122);
							location = "about.jsp";
						}
					}
				})
			}
		}
	});
	
//	点击确定按钮
	$("#sub").click(function(){
		const username = $("#uname").val(),
		password =$("#password2").val(),
		phone =$("uphone").val(),
		re_password =$("#cfpassword2").val(),
		rename=$("#rename").val(),
		idcard=$("#idcard").val(),
		email=$("#email").val(),
		tips_q=$("#tips_q").val(),
		tips_a=$("#tips_a").val();
//		再次判断密码是否一致
		if(re_password != password){
			$("#error_tip").show().html("密码不一致，请重新输入");
			return;
		}else{
			if(N&& P&& TE&& RP&& RN&& IC&& PW&& PA){
				$.ajax({
					url:"",
					type:"post",
					dataType:"json",
					success:function(data){
						console.log(data);
						if(data.res_code===1){
							alert(1122);
							location = "about.jsp";
						}
					}
				})
			}
		}
	});
	*/
});
