package com.aib.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.aib.domain.User;
import com.aib.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ChangeInfoAction extends ActionSupport implements
		ModelDriven<User>, SessionAware {
	private User user = new User();

	@Override
	public User getModel() {
		return user;
	}

	private Map session;

	@Override
	public void setSession(Map session) {
		this.session = session;
	}

	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// 修改密码
	public String changeInfo() {
		User loginUser = (User) session.get("loginUser");
		userService.changeInfo(user, loginUser);
		return "changeInfo";
	}

}
