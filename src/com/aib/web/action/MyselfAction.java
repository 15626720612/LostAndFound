package com.aib.web.action;

import com.opensymphony.xwork2.ActionSupport;

public class MyselfAction extends ActionSupport {

	// 跳转到“修改资料”页面:changeDataUI
	public String changeDataUI() {
		return "changeDataUI";
	}

	// 跳转到“修改密码”页面:changePasswordUI
	public String changePasswordUI() {
		return "changePasswordUI";
	}

}
