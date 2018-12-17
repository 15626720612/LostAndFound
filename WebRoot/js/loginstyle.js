//获取提示框
var rcInnerName=document.getElementById('rc-inner-num');
//alert(rcInnerName);
var rcInnerText=rcInnerName.getElementsByTagName('span')[0];

var rcInnerPwd=document.getElementById('rc-inner-virity');
var rcInnerPwdText=rcInnerPwd.getElementsByTagName('span')[0];

//获取用户名输入框
var inputPhone=document.getElementsById('uname');
//获取密码输入框
var inputPwd=document.getElementsById('pass');
//获取登陆按钮
var loginBtn=document.getElementById('login-submit');

//用户名输入框
var nFlag=false;
inputPhone.onblur=function(){
	var reg1=/^[\u4e00-\u9fa5_a-zA-Z0-9_]{5,10}$/i;//用户名
	var reg2=/^(1([358][0-9]|(47)|[7][0178]))[0-9]{8}$/;//手机号
	if(this.value==""){
		rcInnerName.style.display="block";
		rcInnerPwd.style.display="none";
		rcInnerText.innerText="请输入用户名";
		return;
	}
	else if(!(reg1.test(this.value)||reg2.test(this.value))){
		rcInnerName.style.display="block";
		rcInnerPwd.style.display="none";
		rcInnerText.innerText="用户名为5-10个字母、数字字符";
	}
	else{
		nFlag=true;
		return;
	}
}
inputPhone.onfocus=function(){
	rcInnerName.style.display="none";
	$('.success').hide();
	$('#rc-innerError').eq(0).hide();
}

//密码输入框
var passFlag=false;
inputPwd.onblur=function(){
	if(this.value==""){
		if(nFlag){
			rcInnerPwd.style.display="block";
			rcInnerName.style.display="none";
			rcInnerPwdText.innerText="请输入密码";
		}
		return;
	}
	var reg=/((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{8,16}/i;
//	密码为8-16位的字母、数字或字符组合
	if(!reg.test(this.value)){
		rcInnerPwd.style.display="block";
		rcInnerPwdText.innerText="密码为8-16位的字母、数字或字符组合";
		rcInnerName.style.display="none";
	}else{
		passFlag=true;
		return;
	}
}
inputPwd.onfocus=function(){
	rcInnerPwd.style.display="none";
	$('#rc-innerError').eq(0).hide();
}

//按钮
loginBtn.onclick=function(e){
//	alert(2222);
	stopDefault(e);
	if(inputPhone.value==""){
		rcInnerName.style.display="block";
		rcInnerPwd.style.display="none";
		rcInnerText.innerText="请输入用户名";
		return;
	}
	if(inputPwd.value==""){
		if(nFlag){
			rcInnerPwd.style.display="block";
			rcInnerName.style.display="none";
			rcInnerPwdText.innerText="请输入密码";
		}
		return;
	}
	if(passFlag&&nFlag){
		var phone = $("#uname").value;
		var pass = inputPassword.value;
		alert(passFlag);alert(pass);
	}
}
/*$(function(){
//	设置3个变量用于保存返回值
	let name,pwd,star;
//	用户名框失去焦点
	$(".form-control").blur(function(){
		const reg=/^[\u4e00-\u9fa5_a-zA-Z0-9_]{4,10}$/i;
		username=$(this).val();//获取账号
		name=reg.test(username);
		//判断是否符合
		if(name){
			$("#rc-innerError").hide().html("");
		}else{
			$("#rc-innerError").hide().html("");
			$("#rc-innerError").show().html("账号输入错误");
		}
		console.log(name);
		return name;
	});
//	密码框失去焦点
	$("#pass").blur(function(){
		const reg=/((?=.*[a-z])(?=.*\d)|(?=[a-z])(?=.*[#@!~%^&*])|(?=.*\d)(?=.*[#@!~%^&*]))[a-z\d#@!~%^&*]{8,16}/i;
		password=$(this).val();
		pwd=reg.test(password);
		if(pwd){
			//判断是否符合规定
			$("#rc-innerError").hide().html("");
		}else{
			$("#rc-innerError").hide().html("");
			$("#rc-innerError").show().html("密码需为8-16位的字母、数字或字符组合");
		}
		console.log(pwd);
		return pwd;
	});
//	登陆按钮
	$("#login-submit").click(function(){
		if($("#uname").val()==""){
			$("#rc-innerError").hide().html("");
			$("#rc-innerError").show().html("用户名不能为空");
			return false;
		}
		else if($("#pass").val()==""){
			$("#rc-innerError").hide().html("");
			$("#rc-innerError").show().html("密码不能为空");
			return false;
		}
	});
});*/

