//	粗糙的弹出对话框验证输入，使用这个请在页面删除usescroll.js的那个外部链接
	$(document).ready(function(){
//		设置十个变量保存返回值
		let N,P,TE,RP,RN,IC,EM,PW,PA,start;//账号N，密码P，电话TE，确认密码RP，真名RN，证件RC，邮箱EM，问题PW，答案PA，开始start
		
//		用户名输入框失去焦点
		$("#uname").blur(function(){
			const reg = /^.{6,11}$/;
			var username = $("#uname").val();
			N=reg.test(username);
			if(N){ //判断用户名是否为6-11个字符
				$(".error_tip").hide().html("");
				return true;
			}else{
				$(".error_tip").show().html("用户名为6-11个字符");
				return false;
			}
		});
		
//		密码框失去焦点
		$("#password2").blur(function(){
			const reg = /((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{8,16}/i;
			var password = $(this).val();
			P=reg.test(password);
			if(P){ //判断用户名是否为6-11个字符
				$(".error_tip").hide().html("");
				return true;
			}else{
				$(".error_tip").show().html("密码为8-16位的字母、数字或字符组合");
				return false;
			}
		});
		
//		电话输入框失去焦点
		$("#uphone").blur(function(){
			const reg = /^.{6,11}$/;
			var phone = $(this).val();
			TE=reg.test(phone);
			if(TE){ 
				$(".error_tip").hide().html("");
				return true;
			}else{
				$(".error_tip").show().html("电话号码长号为11位，短号为6位");
				return false;
			}
		});

//		确认密码框失去焦点
		$("#cfpassword2").blur(function(){
			const password = $("#password2").val();//获取输入的密码
			var re_password = $(this).val();
			RP=password===re_password;
			if(RP && re_password!=""){ 
				$(".error_tip").hide().html("");
				return true;
			}else{
				$(".error_tip").show().html("密码不一致，请重新输入");
				return false;
			}
		});

//		姓名输入框失去焦点
		$("#rename").blur(function(){
			const reg = /^([a-zA-Z0-9\u4e00-\u9fa5\·]{1,10})$/;
			rename = $(this).val();
			RN= reg.test(rename);
			if(TE){ 
				$(".error_tip").hide().html("");
				return true;
			}else{
				$(".error_tip").show().html("请输入您的真实姓名");
				return false;
			}
		});

//		身份证输入框失去焦点
		$("#idcard").blur(function(){
			const reg =  /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
			idcard = $(this).val();
			IC= reg.test(idcard);
			if(IC){//判断密码是否为中文姓名
				$(".error_tip").hide().html("");
			}else{
				$(".error_tip").show().html("身份证号码为15位或者18位");
				return false;
			}
		});

//		邮箱输入框失去焦点
		$("#email").blur(function(){
			const reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
			email = $(this).val();
			EM= reg.test(email);
			if(EM){//判断密码是否为中文姓名
				$(".error_tip").hide().html("");
			}else{
				$(".error_tip").hide().html("");
				$(".error_tip").show().html("请输入正确的邮箱地址");
				return false;
			}
		});

//		密码提示框
		$("#tips_q").blur(function(){
			tips_q = $(this).val();
			PW=reg.test(tips_q);
			if(PW!=""){//判断密码提示框是否为空
				$(".error_tip").hide().html("");
			}else{
				$(".error_tip").hide().html("");
				$(".error_tip").show().html("请输入提示");
				return false;
			}
		});

//		答案框失去焦点
		$("#tips_a").blur(function(){
			tips_a = $(this).val();
			PA=reg.test(tips_a);
			if(PA!=""){//判断密码是否为空
				$(".error_tip").hide().html("");
			}else{
				$(".error_tip").hide().html("");
				$(".error_tip").show().html("请输入提示答案");
				return false;
			}
		});
		
//		尝试输入所有的输入内容
//		$("#sub").click(function(){
////			var data = $("form").serialize();
////			alert(data);
//		});
	});
	
