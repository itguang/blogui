package cn.itguang.service;

import cn.itguang.entity.Article;
import cn.itguang.utils.Page;

public interface ArticleService {

	Article findArticleById(Integer
			id);

	int add(Article article);
	
	
	
	
	
	Page findPageRecords(String pagenum);
	
}
