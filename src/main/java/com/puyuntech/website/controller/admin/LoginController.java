package com.puyuntech.website.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class LoginController {
	
	@RequestMapping("/login")
    public String index(ModelMap model) {

        model.addAttribute("test", "please login");

        return "admin/login";
    }

}
