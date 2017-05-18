package cn.itguang.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.itguang.entity.Article;
import cn.itguang.service.ArticleService;
import cn.itguang.utils.MyArticleUtil;
import cn.itguang.utils.Page;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ArticleAction extends ActionSupport implements
		ModelDriven<Article> {

	private ArticleService articleService;

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	private Article article = new Article();

	@Override
	public Article getModel() {

		return article;
	}

	// 查看文章
	@SuppressWarnings("all")
	public String read() {

		Article read = articleService.findArticleById(article.getAid());

		ServletActionContext.getRequest().setAttribute("article", read);

		return "read";

	}

	// 文章列表
	@SuppressWarnings("all")
	public String list() {

		// 分页显示文章列表
		HttpServletRequest request = ServletActionContext.getRequest();
		String currentPage = request.getParameter("pagenum");
		Page page = articleService.findPageRecords(currentPage);
		request.setAttribute("page", page);
		

		return "list";
	}

	// 首页文章列表
	@SuppressWarnings("all")
	public String indexlist() {

		return "indexlist";
	}

	// 发表文章成功
	@SuppressWarnings("all")
	public String add() throws IOException {
		System.out.println(article.toString());

		MyArticleUtil.setArticle(article);

		// 调用service进行保存

		int aid = articleService.add(article);

		if (aid != -1) {

			// 保存成功后,设置响应信息
			// MyDataUtil.setResponseData("成功啦,哈哈,"+aid);
			Map map = new HashMap<String, String>();

			map.put("aid", aid);
			map.put("time", "2017-5-15");
			map.put("use", "500" + "毫秒");

			ServletActionContext.getRequest().setAttribute("map", map);

		}

		return "addsuccess";

	}

}
