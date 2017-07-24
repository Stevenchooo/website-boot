package com.puyuntech.website.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.puyuntech.website.dao.ConnectionDao;
import com.puyuntech.website.entity.Connection;

@Controller
@RequestMapping("/admin/connection")
public class ConnectionController {

	 @Autowired
	 private ConnectionDao connectionDao;
	
	 @RequestMapping("/list")
	 public String list(ModelMap model) {
		
		model.addAttribute("lists",connectionDao.findAll());
		
        return "admin/connection";
	 }
	 
	 @RequestMapping(value="/add", method = RequestMethod.GET)
	 public String add(ModelMap model) {
		
        return "admin/connection_add";
	 }
	 
	 @RequestMapping(value="/add", method = RequestMethod.POST)
	 public String save(Connection connection) {
		
		connectionDao.save(connection);
        return "redirect:list";
	 }
	 
	 @RequestMapping(value="/delete", method = RequestMethod.POST)
	 @ResponseBody
	 public int delete(Long id) {
		
		connectionDao.delete(id);
        return 1;
	 }
	
	 @RequestMapping(value="/view", method = RequestMethod.GET)
	 public String view(Long id,ModelMap model) {
		
		model.addAttribute("connection", connectionDao.findOne(id));
        return "admin/connection_view";
	 }
	 
	 @RequestMapping(value="/edit", method = RequestMethod.GET)
	 public String edit(Long id,ModelMap model) {
		
		model.addAttribute("connection", connectionDao.findOne(id));
        return "admin/connection_edit";
	 }
	 
	 @RequestMapping(value="/edit", method = RequestMethod.POST)
	 public String edit(Connection connection) {
		
		connectionDao.save(connection);
		return "redirect:list";
	 }
}
