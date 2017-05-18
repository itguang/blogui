package cn.itguang.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import cn.itguang.entity.Article;

public class ArticleDaoImpl extends HibernateDaoSupport implements ArticleDao {

	@Override
	public int add(Article article) {
		int aid;
		Serializable save = this.getHibernateTemplate().save(article);// 返回值为生成的主键值
		if (save != null) {
			Integer result = (Integer) save;
			aid = result.intValue();
		} else {
			aid = -1;
		}

		return aid;

	}

	@SuppressWarnings("all")
	@Override
	public Article findArticleById(Integer id) {

		return this.getHibernateTemplate().get(Article.class, id);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> findAAllArticle() {

		return (List<Article>) this.getHibernateTemplate().find("from Article");
	}

	@SuppressWarnings("all")
	@Override
	public int findCount() {
		// 调用hibernateTemplate里面的find方法实现
		List<Object> list = (List<Object>) this.getHibernateTemplate().find(
				"select count(*) from Article");

		// 从list中把值得到

		if (list != null && list.size() != 0) {
			Object obj = list.get(0);
			// 变成int类型
			Long lon = (Long) obj;
			int count = lon.intValue();
			return count;
		}
		return 0;
	}

	@Override
	public List<Article> findPage(int begin, int pageSize) {
		//使用离线对象和hibernateTemplate的方法实现
		
		//1,创建离线对象,设置对哪个实体类进行操作
		DetachedCriteria criteria = DetachedCriteria.forClass(Article.class);
		
		//调用hibernateTemplate的方法实现
		
		//第一个参数是 离线对象
		//第二个参数是开始位置
		//第三个参数是每页的记录数
		@SuppressWarnings("unchecked")
		List<Article> list = (List<Article>)this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		
		
		return list;
	}

}
