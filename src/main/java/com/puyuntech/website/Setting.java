package com.puyuntech.website;

import java.io.Serializable;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.stereotype.Component;

@Component
@CacheConfig(cacheNames = "setting")
public class Setting implements Serializable {
	
	private static final long serialVersionUID = -8162748520932062696L;

	/** 网站名称 */
	private String image1;

	/** 网站网址 */
	private String image2;

	/** logo */
	private String image3;

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}
	
}