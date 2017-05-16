package cn.itguang.entity;

import java.util.HashSet;
import java.util.Set;

public class User {

	private Integer uid;
	private String username;
	private String password;
	private String nick;
	private String email;
	private String sex;
	private String motto;
	
	private Set<Article> setArticle = new HashSet<Article>();
	private Set<Source> setSource = new HashSet<Source>();
	
	
	
	




	public Set<Source> getSetSource() {
		return setSource;
	}

	public void setSetSource(Set<Source> setSource) {
		this.setSource = setSource;
	}

	public Set<Article> getSetArticle() {
		return setArticle;
	}

	public void setSetArticle(Set<Article> setArticle) {
		this.setArticle = setArticle;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
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

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getMotto() {
		return motto;
	}

	public void setMotto(String motto) {
		this.motto = motto;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password="
				+ password + ", nick=" + nick + ", email=" + email + ", sex="
				+ sex + ", motto=" + motto + "]";
	}

}
