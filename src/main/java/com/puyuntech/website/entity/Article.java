package com.puyuntech.website.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Entity
@Table(name="article")
public class Article extends BaseEntity<Long>{
	
	public enum Type{
		
		//解决方案
		SOLUTION,
		
		//案例
		CASE,
		
		//公司新闻
		COMPANYNEWS,
		
		//行业动态
		INDUSTRYNEWS
		
	}

	private static final long serialVersionUID = 7113863207300741926L;

	private String title;
	
	private String content;
	
	private String image;
	
	@Enumerated(EnumType.ORDINAL)
	private Article.Type type;
	
	private Long orders;

	@Column(nullable = false)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(nullable = false)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(nullable = false)
	public Article.Type getType() {
		return type;
	}

	public void setType(Article.Type type) {
		this.type = type;
	}

	@Column(nullable = false)
	public Long getOrders() {
		return orders;
	}

	public void setOrders(Long orders) {
		this.orders = orders;
	}

	@Column(nullable = false)
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	
}
