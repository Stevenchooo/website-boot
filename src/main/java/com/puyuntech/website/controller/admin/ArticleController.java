package com.puyuntech.website.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.puyuntech.website.dao.ArticleDao;
import com.puyuntech.website.entity.Article.Type;
import com.puyuntech.website.entity.Article;

@Controller
@RequestMapping("/admin/article")
public class ArticleController {

	 @Autowired
	 private ArticleDao articleDao;
	
	 @RequestMapping("/list")
	 public String list(ModelMap model,Type type) {
		
		model.addAttribute("type",type);
		model.addAttribute("lists",articleDao.getList(type));
        return "admin/article";
	 }
	 
	 @RequestMapping(value="/add", method = RequestMethod.GET)
	 public String add(ModelMap model,Type type) {
		
		model.addAttribute("type",type);
        return "admin/article_add";
	 }
	 
	 @RequestMapping(value="/add", method = RequestMethod.POST)
	 public String save(Article article) {
		
		articleDao.save(article);
        return "redirect:list?type="+article.getType();
	 }
	 
	 @RequestMapping(value="/delete", method = RequestMethod.POST)
	 @ResponseBody
	 public int delete(Long id) {
		
		articleDao.delete(id);
        return 1;
	 }
	
	 @RequestMapping(value="/edit", method = RequestMethod.GET)
	 public String edit(Long id,ModelMap model) {
		
		model.addAttribute("article", articleDao.findOne(id));
        return "admin/article_edit";
	 }
	 
	 @RequestMapping(value="/edit", method = RequestMethod.POST)
	 public String edit(Article article) {
		
		articleDao.save(article);
		return "redirect:list?type="+article.getType();
	 }
}
