package cn.itguang.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.itguang.entity.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	// //得到hibernateTemplate对象或者继承 HibernateDaoSupport
	// private HibernateTemplate hibernateTemplate;
	// public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
	// this.hibernateTemplate = hibernateTemplate;
	// }
	@SuppressWarnings("all")
	@Override
	public User login(User user) {
		List<User> list = (List<User>) this.getHibernateTemplate().find(
				"from User where username=? and password=?",
				user.getUsername(), user.getPassword());

		// 返回User对象
		// 如果查询之后没有结果,list里面没有知,根据下标娶不到值,就不会出现下标越界异常
		if (list != null && list.size() != 0) {
			return list.get(0);
		}

		return null;

	}
	@SuppressWarnings("all")
	@Override
	public void regist(User user) {
		this.getHibernateTemplate().save(user);
		
	}
	@SuppressWarnings("all")
	@Override
	public User findUserByUsername(String username) {
	List<User>	list = (List<User>)this.getHibernateTemplate().find("from User where username=? ", username);
	if(list!=null&&list.size()!=0){
		return list.get(0);
		
	}
		return null;
	}
	@SuppressWarnings("all")
	@Override
	public User findUserByEmail(String email) {
		List<User>	list = (List<User>)this.getHibernateTemplate().find("from User where email=? ", email);
		if(list!=null&&list.size()!=0){
			return list.get(0);
			
		}
			return null;
	}

}
