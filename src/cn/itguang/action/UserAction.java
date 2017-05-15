package cn.itguang.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.itguang.entity.User;
import cn.itguang.service.ArticleService;
import cn.itguang.service.UserService;

public class UserAction extends ActionSupport {


	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	// 属性封装获取
	private String username;
	private String password;
	private String imageCode;
	
	private String rePassword;
	private String email;
	
	
	

	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImageCode() {
		return imageCode;
	}

	public void setImageCode(String imageCode) {
		this.imageCode = imageCode;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	//注销登陆
	@SuppressWarnings("all")
	public String logout(){
		HttpServletRequest request = ServletActionContext.getRequest();
		
		request.getSession().removeAttribute("currentUser");//从session中移除无用的属性
		
		return "logoutsuccess";
	}
	
//注册
	@SuppressWarnings("all")
	public String regist() {
		System.out.println("++++++++++++++++++++");
		System.out.println(username+password+rePassword+email);
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		
		HashMap<String, String> map = new HashMap<String, String>();
		HttpServletRequest request = ServletActionContext.getRequest();
		
		if(!password.equals(rePassword)){
			map.put("password_error", "两次密码不一致");
		}
		if(userService.findUserByUsername(username)!=null){
			map.put("username_error", "抱歉用户名已被占用");
		}
		if(userService.findUserByEmail(email)!=null){
			map.put("email_error", "抱歉该邮箱已被占用");
		}
		
		if(map.size()!=0){
			request.setAttribute("map", map);
			return "regist";
		}
		userService.regist(user);
		return "registsuccess";

	}

	//登陆
	@SuppressWarnings("all")
	public String login() {

		// 封装实体对象
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		System.out.println("++++++++++++++");
		System.out.println(username + password + "++++++++++++++++++++++");

		User currentUser = userService.login(user);

		HashMap<String, String> map = new HashMap<String, String>();
		HttpServletRequest request = ServletActionContext.getRequest();
		String session_imagecode = (String) request.getSession().getAttribute(
				"imageCode");


		if (!session_imagecode.equals(imageCode)) {
			map.put("imageCode", "验证码错误");
		}

		if (currentUser == null) {
			map.put("error", "用户名或密码错误");
			System.out.println("空");
		}

		if (map.size() != 0) {
			request.setAttribute("map", map);
			return "login";
		}
		request.getSession().setAttribute("currentUser", currentUser);
		request.getSession().removeAttribute("imageCode");//从session中移除无用的属性
		return "loginsuccess";

	}


}
