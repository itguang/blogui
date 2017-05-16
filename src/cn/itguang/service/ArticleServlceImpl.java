package cn.itguang.service;

import org.springframework.transaction.annotation.Transactional;

import cn.itguang.dao.ArticleDao;
import cn.itguang.entity.Article;
@Transactional
public class ArticleServlceImpl implements ArticleService {
	private ArticleDao articleDao;

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	@Override
	public Article findArticleById(Integer id) {
		return articleDao.findArticleById(id);
		
	}

	@Override
	public int add(Article article) {
		return articleDao.add(article);
		
	}
	

}
