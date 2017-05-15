package cn.itguang.entity;

import java.util.Date;

public class Source {
	
	private String sid;
	private String title;
	private String author;
	private Date time;
	private Integer visit;
	private String content;
	private String link;
	private String password;
	private String tag;
	private Integer uid;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
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
	public void setTime(Date time) {
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
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Source [sid=" + sid + ", title=" + title + ", author=" + author
				+ ", time=" + time + ", visit=" + visit + ", content="
				+ content + ", link=" + link + ", password=" + password
				+ ", tag=" + tag + ", uid=" + uid + "]";
	}
	
	
	

}
