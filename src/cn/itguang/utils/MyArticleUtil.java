package cn.itguang.utils;

import java.sql.Timestamp;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.itguang.entity.Article;
import cn.itguang.entity.User;

public class MyArticleUtil {

	public static Article setArticle(Article article) {

		

		
//		Timestamp  ts=new Timestamp(new Date().getTime());

		article.setTime(new Date(System.currentTimeMillis()));

		HttpServletRequest request = ServletActionContext.getRequest();

		User user = (User) request.getSession().getAttribute("currentUser");// 从session中得到当前用户对象
		article.setAuthor(user.getUsername());

		return article;

	}

}
