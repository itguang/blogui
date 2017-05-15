package cn.itguang.service;

import cn.itguang.entity.User;

public interface UserService {
	User login(User user);

	void regist(User user);
	User findUserByUsername(String username);

	User findUserByEmail(String email);

}
