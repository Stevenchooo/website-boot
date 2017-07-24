package com.puyuntech.website.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.puyuntech.website.Setting;
import com.puyuntech.website.util.SystemUtil;


@Controller
@RequestMapping("/admin")
public class IndexSettingController {
	
	@RequestMapping("/index_setting")
    public String index(ModelMap model) {
		
		Setting setting = SystemUtil.getSetting();
		
		model.addAttribute("image1", setting.getImage1());
		model.addAttribute("image2", setting.getImage2());
		model.addAttribute("image3", setting.getImage3());
		
        return "admin/index_setting";
    }

}
