package cn.itguang.service;

import org.springframework.transaction.annotation.Transactional;

import cn.itguang.dao.UserDao;
import cn.itguang.entity.User;

@Transactional
public class UserServiceImpl implements UserService {

	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User login(User user) {
		
		return userDao.login(user);
	}

	@Override
	public void regist(User user) {
		userDao.regist(user);
		
	}

	@Override
	public User findUserByUsername(String username) {
		return userDao.findUserByUsername(username);
	}

	@Override
	public User findUserByEmail(String email) {
		return userDao.findUserByEmail(email);
	}

}
