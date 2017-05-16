package cn.itguang.service;

import cn.itguang.entity.Article;
import cn.itguang.entity.User;

public interface ArticleService {

	Article findArticleById(Integer
			id);

	int add(Article article);
	
}
