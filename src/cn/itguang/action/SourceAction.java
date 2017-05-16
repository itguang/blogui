package cn.itguang.action;

import cn.itguang.entity.Source;
import cn.itguang.service.SourceService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SourceAction extends ActionSupport implements ModelDriven<Source> {

	private SourceService sourceService;

	public void setSourceService(SourceService sourceService) {
		this.sourceService = sourceService;
	}

	@Override
	public Source getModel() {
		// TODO Auto-generated method stub
		return null;
	}

}
