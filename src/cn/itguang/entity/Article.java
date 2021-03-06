package cn.itguang.entity;


import java.sql.Date;


public class Article {
	private Integer aid;
	private String title;
	private String author;
	private Date time;
	private Integer star;
	private Integer visit;
	private String content;
	private String outline;
	private String tag;
	private Integer recomment;
	
	private User user;
	

	
	

	public String getOutline() {
		return outline;
	}

	public void setOutline(String outline) {
		this.outline = outline;
	}

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

	public void setTime(Date time) {
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
				+ visit + ", content=" + content + ", outline=" + outline
				+ ", tag=" + tag + ", recomment=" + recomment + "]";
	}

	

	
	

	

	

}
