package cn.itguang.test;

import static org.junit.Assert.*;

import org.junit.Test;

import cn.itguang.dao.ArticleDaoImpl;
import cn.itguang.dao.UserDaoImpl;
import cn.itguang.entity.Article;
import cn.itguang.entity.User;

public class ArticleDaoImplTest {
	
	ArticleDaoImpl dao = new ArticleDaoImpl();
	UserDaoImpl dao2 = new UserDaoImpl();

	@Test
	public void testAdd() {
		User user = dao2.findUserByUsername("itguang");
		System.out.println(user.toString());
	}

	@Test
	public void testFindArticleById() {
		Article article = dao.findArticleById(8);
//		System.out.println(article.toString());
	}

}
