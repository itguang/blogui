package cn.itguang.service;

import org.springframework.transaction.annotation.Transactional;

import cn.itguang.dao.ArticleDao;
@Transactional
public class ArticleServlceImpl implements ArticleService {
	private ArticleDao articleDao;

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	@Override
	public void findArticleById(String id) {
		// TODO Auto-generated method stub
		
	}
	

}
