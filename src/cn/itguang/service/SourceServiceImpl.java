package cn.itguang.service;

import org.springframework.transaction.annotation.Transactional;

import cn.itguang.dao.SourceDao;
@Transactional
public class SourceServiceImpl implements SourceService {
	
	private SourceDao sourceDao;

	public void setSourceDao(SourceDao sourceDao) {
		this.sourceDao = sourceDao;
	}

	

}
