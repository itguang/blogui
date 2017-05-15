package cn.itguang.dao;

import cn.itguang.entity.User;

public interface UserDao {
	/**
	 * 登陆
	 */
	User login(User user);

	/**
	 * 注册
	 * 
	 * @param user
	 */
	void regist(User user);

	/**
	 * 通过username 查找User
	 * 
	 * @param username
	 * @return
	 */
	User findUserByUsername(String username);

	/**
	 * 通过email查找User
	 * 
	 * @param email
	 * @return
	 */
	User findUserByEmail(String email);

}
