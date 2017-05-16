package cn.itguang.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class MyDataUtil {
	
	static HttpServletResponse response = ServletActionContext.getResponse();
	public static void setResponseData(String data) throws IOException{
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
	    PrintWriter out = response.getWriter();
        out.println(data);  
        out.flush();  
        out.close();  
		
		
	}

}
