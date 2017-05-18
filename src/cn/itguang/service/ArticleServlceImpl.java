package cn.itguang.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.itguang.dao.ArticleDao;
import cn.itguang.entity.Article;
import cn.itguang.utils.Page;

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

	@Override
	public Page findPageRecords(String pagenum) {
		int num=1;//默认值
		if (pagenum != null && !"".equals(pagenum.trim())) {
			num = Integer.parseInt(pagenum);
		}
		int totalRecords = articleDao.findCount();
		Page page = new Page(num, totalRecords);// 构造page对象,因为需要当前页码和总记录条数,所以先通过Dao查询总记录条数
												// page对象一旦构建出来,每页开始记录的索引和总页数都计算出来
												// 但是page对象中的分页记录还没有,所以需要通过dao查询分页记录
												// dao查询分页记录需要每页开始记录的索引和每页显示的条数,这两而过参数page对象都已经计算完毕
         // 查询记录并设置daopage对象中,这样所有与分页有关的信息就都在page对象中了
		List<Article> records = articleDao.findPage(page.getStartIndex(),
				page.getPagesize());
		page.setRecords(records);
		return page;
	}

	
}
