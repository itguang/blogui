package cn.itguang.entity;

import java.sql.Timestamp;
import java.util.Date;

public class Source {

	private Integer sid;
	private String title;
	private String author;
	private Timestamp time;
	private Integer visit;
	private String content;
	private String outline;
	private String link;
	private String password;
	private String tag;

	private User user;

	public User getUser() {
		return user;
	}

	
	
	public String getOutline() {
		return outline;
	}



	public void setOutline(String outline) {
		this.outline = outline;
	}



	public void setUser(User user) {
		this.user = user;
	}

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public Integer getVisit() {
		return visit;
	}

	public void setVisit(Integer visit) {
		this.visit = visit;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}



	@Override
	public String toString() {
		return "Source [sid=" + sid + ", title=" + title + ", author=" + author
				+ ", time=" + time + ", visit=" + visit + ", content="
				+ content + ", outline=" + outline + ", link=" + link
				+ ", password=" + password + ", tag=" + tag + ", user=" + user
				+ "]";
	}

	

}
