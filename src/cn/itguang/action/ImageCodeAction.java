package cn.itguang.action;


import java.io.ByteArrayInputStream;

import cn.itguang.utils.ImageCodeUtil;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ImageCodeAction extends ActionSupport{
    private static final long serialVersionUID = 1L;
    private ByteArrayInputStream inputStream;  
    public String getImageCode() throws Exception{
        //获取图片字符串
        String codeStr = ImageCodeUtil.getImageCodeStr();
        ActionContext.getContext().getSession().put("imageCode",codeStr);
        //System.out.println(codeStr);
        inputStream = ImageCodeUtil.getImageAsInputStream(codeStr);
        return SUCCESS;  
    }  
    
    public void setInputStream(ByteArrayInputStream inputStream) {  
        this.inputStream = inputStream;  
    }  
    public ByteArrayInputStream getInputStream() {  
        return inputStream;  
    }  
  
}