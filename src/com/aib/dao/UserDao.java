package com.aib.dao;

import java.util.List;

import com.aib.domain.User;

public interface UserDao {
	void save(User user);

	User login(User user);


	void changePWD(User user, User loginUser);

	void changeInfo(User user, User loginUser);

	User findByUsername(String username);


}
