package cn.itguang.dao;

import cn.itguang.entity.Article;
import cn.itguang.entity.User;

public interface ArticleDao {
	/**
	 * 保存文章
	 * 
	 * @param article
	 */
	int add(Article article);

	/**
	 * 查找文章
	 * 
	 * @param id
	 */
	Article findArticleById(Integer id);

}
