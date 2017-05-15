package cn.itguang.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

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
	

	//发表文章成功
	@SuppressWarnings("all")
	public String add(){
		
		
		
		return "addsuccess";
	}
	
	
	
	
	
	

}
