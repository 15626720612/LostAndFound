package com.aib.service.impl;

import org.springframework.transaction.annotation.Transactional;

import com.aib.dao.UserDao;
import com.aib.domain.User;
import com.aib.service.UserService;

@Transactional
public class UserServiceImpl implements UserService {
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	// 注册
	@Override
	public void save(User user) {
		userDao.save(user);
	}

	// 登录
	@Override
	public User login(User user) {
		return userDao.login(user);
	}

	// 修改密码
	@Override
	public void changePWD(User user, User loginUser) {
		userDao.changePWD(user, loginUser);
	}

	// 修改资料
	@Override
	public void changeInfo(User user, User loginUser) {
		userDao.changeInfo(user, loginUser);
	}


	@Override
	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}

}
