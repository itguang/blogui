package cn.itguang.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.itguang.entity.Article;

public class ArticleDaoImpl extends HibernateDaoSupport implements ArticleDao {

	@Override
	public int add(Article article) {
		int aid;
		Serializable save = this.getHibernateTemplate().save(article);// 返回值为生成的主键值
		if (save != null) {
			Integer result = (Integer) save;
			aid = result.intValue();
		} else {
			aid = -1;
		}

		return aid;

	}

	@SuppressWarnings("all")
	@Override
	public Article findArticleById(Integer id) {
		

		return this.getHibernateTemplate().get(Article.class, id);

	}

}
