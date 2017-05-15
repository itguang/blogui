package cn.itguang.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;

public class Article {
	private Integer aid;
	private String title;
	private String author;
	private Timestamp time;
	private Integer star;
	private Integer visit;
	private String content;
	private String tag;
	private Integer recomment;
	
	private User user;
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
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

	public Integer getStar() {
		return star;
	}

	public void setStar(Integer star) {
		this.star = star;
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

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public Integer getRecomment() {
		return recomment;
	}

	public void setRecomment(Integer recomment) {
		this.recomment = recomment;
	}

	@Override
	public String toString() {
		return "Article [aid=" + aid + ", title=" + title + ", author="
				+ author + ", time=" + time + ", star=" + star + ", visit="
				+ visit + ", content=" + content + ", tag=" + tag
				+ ", recomment=" + recomment + ", user=" + user + "]";
	}

	

}
