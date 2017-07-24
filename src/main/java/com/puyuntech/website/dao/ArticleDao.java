package com.puyuntech.website.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.puyuntech.website.entity.Article;
import com.puyuntech.website.entity.Article.Type;

public interface ArticleDao  extends CrudRepository<Article, Long>{

	@Query("select article from Article article where article.type =:type")
    List<Article> getList(@Param("type") Type type);
}
