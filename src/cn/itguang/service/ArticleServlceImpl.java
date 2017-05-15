package cn.itguang.service;

import cn.itguang.dao.ArticleDao;

public class ArticleServlceImpl implements ArticleService {
	private ArticleDao articleDao;

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}
	

}
