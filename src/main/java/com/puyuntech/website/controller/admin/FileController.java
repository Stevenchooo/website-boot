package com.puyuntech.website.controller.admin;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.common.io.Files;
import com.puyuntech.website.Setting;
import com.puyuntech.website.util.SystemUtil;

@Controller
@RequestMapping("/admin")
public class FileController {
	
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	@ResponseBody
    public Map<String,Object> upload(@RequestParam("file") MultipartFile file,int parmId) {
		
		Setting setting = SystemUtil.getSetting();
		Map<String,Object> result = new HashMap<String, Object>();
		
		if (!file.isEmpty()) {
            String name = file.getOriginalFilename();
            try {
            	File destFile = new File("static/upload", UUID.randomUUID() + name);
                Files.write(file.getBytes(), destFile);
                switch(parmId){
	                case 1:
	                	setting.setImage1("/upload/"+destFile.getName());
	                	SystemUtil.setSetting(setting);
	                	break;
	                case 2:
	                	setting.setImage2("/upload/"+destFile.getName());
	                	SystemUtil.setSetting(setting);
	                	break;
	                case 3:
	                	setting.setImage3("/upload/"+destFile.getName());
	                	SystemUtil.setSetting(setting);
	                	break;
                }
                result.put("status", 1);
                result.put("name", destFile.getName());
                return result;
            } catch (Exception e) {
            	result.put("status", 2);
            	return result;
            }
        } else {
        	result.put("status", 0);
            return result;
        }
    }

	
	@RequestMapping(value = "/ue_upload", method = RequestMethod.POST)
	public @ResponseBody
	Map<String, Object> ueUpload(MultipartFile file) {

		/**
		 * 创建模型对象
		 */
		Map<String, Object> result = new HashMap<String, Object>();

		/**
		 * 上传文件并且返回服务器路径
		 */
		String url = "";
		if (!file.isEmpty()) {
            String name = file.getOriginalFilename();
            try {
            	File destFile = new File("static/upload", UUID.randomUUID() + name);
                Files.write(file.getBytes(), destFile);
                result.put("state", "SUCCESS");
                result.put("name", destFile.getName());
                url = "/upload/"+destFile.getName();
            } catch (Exception e) {
            	result.put("state", "error");
            }
        } else {
        	result.put("state", "error");
        }
		
		/**
		 * 将上传信息、状态以及路径写入数据模型
		 */
		result.put("url", url);
		return result;
	}
}
