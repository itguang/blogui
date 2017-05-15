package cn.itguang.action;

import cn.itguang.entity.Article;
import cn.itguang.service.ArticleService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ArticleAction extends ActionSupport implements
		ModelDriven<Article> {

	private ArticleService articleServlce;

	public void setArticleServlce(ArticleService articleServlce) {
		this.articleServlce = articleServlce;
	}

	private Article article = new Article();

	@Override
	public Article getModel() {

		return article;
	}

}
