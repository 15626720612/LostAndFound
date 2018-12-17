package com.aib.service;

import com.aib.domain.User;

public interface UserService {
	void save(User user);

	User login(User user);

	void changePWD(User user, User loginUser);

	void changeInfo(User user, User loginUser);


	User findByUsername(String username);

}
