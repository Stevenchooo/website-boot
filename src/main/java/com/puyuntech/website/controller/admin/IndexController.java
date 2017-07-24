package com.puyuntech.website.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class IndexController {
	
	@RequestMapping("/index")
    public String index(ModelMap model) {


        return "admin/index";
    }

}
