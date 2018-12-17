package com.aib.web.action;

import java.util.Map;

import com.aib.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class IndexAction extends ActionSupport implements ModelDriven<User> {
	private User user = new User();

	@Override
	public User getModel() {
		return user;
	}

	// 跳转到大厅页面：homeUI
	public String homeUI() {
		return "homeUI";
	}

	// 跳转到登陆页面：loginUI
	public String loginUI() {
		return "loginUI";
	}

	// 跳转到注册页面：registerUI
	public String registerUI() {
		return "registerUI";
	}

	// 跳转到我的页面：myselfUI
	public String myselfUI() {
		return "myselfUI";
	}

	// 跳转到退出页面：exitUI
	public String exitUI() {
		Map session = ActionContext.getContext().getSession();
		session.remove("loginUser");
		return "exitUI";
	}

	// 跳转到关于我们的页面：aboutUI
	public String aboutUI() {
		return "aboutUI";
	}

	// 跳转到发布页面：insertUI
	public String insertUI() {
		return "insertUI";
	}
}
