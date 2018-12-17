package com.aib.web.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.aib.domain.User;
import com.aib.service.UserService;
import com.aib.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven<User>,
		SessionAware {
	private User user = new User();

	@Override
	public User getModel() {
		return user;
	}

	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	private Map session;

	@Override
	public void setSession(Map session) {
		this.session = session;
	}

	public String login() {
		User existUser = userService.login(user);
		if (existUser == null) {
			return "loginfailure";
		} else {
			session.put("loginUser", existUser);
			return "login";
		}

	}

}
