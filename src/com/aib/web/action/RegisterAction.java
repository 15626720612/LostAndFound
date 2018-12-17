package com.aib.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.aib.domain.User;
import com.aib.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RegisterAction extends ActionSupport implements ModelDriven<User> {
	private User user = new User();

	@Override
	public User getModel() {
		return user;
	}

	// 注入UserService
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	// 注册
	public String register() {
		User existUser = userService.findByUsername(user.getUsername());
		if (existUser != null) {
			return "registerfailure";
		} else {
			userService.save(user);
			return "register";
		}
	}
}
