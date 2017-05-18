package cn.itguang.dao;

import java.util.List;

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

	/**
	 * 查找所有文章
	 * @return
	 */
	List<Article> findAAllArticle();
	
	/**
	 * 查找记录总数
	 * @return
	 */
	int findCount();
	/**
	 * 分页查询
	 * @param begin
	 * @param pageSize
	 * @return
	 */
	List<Article>findPage(int begin,int pageSize);

}
