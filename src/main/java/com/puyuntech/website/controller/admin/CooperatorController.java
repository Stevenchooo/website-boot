package com.puyuntech.website.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.puyuntech.website.dao.CooperatorDao;
import com.puyuntech.website.entity.Cooperator;

@Controller
@RequestMapping("/admin/cooperator")
public class CooperatorController {

	 @Autowired
	 private CooperatorDao cooperatorDao;
	
	 @RequestMapping("/list")
	 public String list(ModelMap model) {
		
		model.addAttribute("lists",cooperatorDao.findAll());
		
        return "admin/cooperator";
	 }
	 
	 @RequestMapping(value="/add", method = RequestMethod.GET)
	 public String add(ModelMap model) {
		
        return "admin/cooperator_add";
	 }
	 
	 @RequestMapping(value="/add", method = RequestMethod.POST)
	 public String save(Cooperator cooperator) {
		
		cooperatorDao.save(cooperator);
        return "redirect:list";
	 }
	 
	 @RequestMapping(value="/delete", method = RequestMethod.POST)
	 @ResponseBody
	 public int delete(Long id) {
		
		cooperatorDao.delete(id);
        return 1;
	 }
	
	 @RequestMapping(value="/edit", method = RequestMethod.GET)
	 public String edit(Long id,ModelMap model) {
		
		model.addAttribute("cooperator", cooperatorDao.findOne(id));
        return "admin/cooperator_edit";
	 }
	 
	 @RequestMapping(value="/edit", method = RequestMethod.POST)
	 public String edit(Cooperator cooperator) {
		
		cooperatorDao.save(cooperator);
		return "redirect:list";
	 }
}
