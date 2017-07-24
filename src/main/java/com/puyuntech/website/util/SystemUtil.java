package com.puyuntech.website.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Ehcache;
import net.sf.ehcache.Element;

import org.apache.commons.beanutils.BeanUtilsBean;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.springframework.core.io.ClassPathResource;
import org.springframework.util.Assert;

import com.puyuntech.website.Setting;




public class SystemUtil {
	
	/** CacheManager */
	private static final CacheManager CACHE_MANAGER = CacheManager.create();
	
	/** BeanUtilsBean */
	private static final BeanUtilsBean BEAN_UTILS = new BeanUtilsBean();
	
	private SystemUtil() {
	}
	
	@SuppressWarnings("unchecked")
	public static Setting getSetting() {
		Ehcache cache = CACHE_MANAGER.getEhcache("setting");
		String cacheKey = "setting";
		Element cacheElement = cache.get(cacheKey);
		if (cacheElement == null) {
			Setting setting = new Setting();
			try {
				File puyunXmlFile = new ClassPathResource("website.xml").getFile();
				Document document = new SAXReader().read(puyunXmlFile);
				List<org.dom4j.Element> elements = document.selectNodes("/puyun/setting");
				for (org.dom4j.Element element : elements) {
					try {
						String name = element.attributeValue("name");
						String value = element.attributeValue("value");
						BEAN_UTILS.setProperty(setting, name, value);
					} catch (IllegalAccessException e) {
						throw new RuntimeException(e.getMessage(), e);
					} catch (InvocationTargetException e) {
						throw new RuntimeException(e.getMessage(), e);
					}
				}
			} catch (IOException e) {
				throw new RuntimeException(e.getMessage(), e);
			} catch (DocumentException e) {
				throw new RuntimeException(e.getMessage(), e);
			}
			cache.put(new Element(cacheKey, setting));
			cacheElement = cache.get(cacheKey);
		}
		return (Setting) cacheElement.getObjectValue();
	}

	@SuppressWarnings("unchecked")
	public static void setSetting(Setting setting) {
		Assert.notNull(setting);

		try {
			File puyunXmlFile = new ClassPathResource("website.xml").getFile();
			Document document = new SAXReader().read(puyunXmlFile);
			List<org.dom4j.Element> elements = document.selectNodes("/puyun/setting");
			for (org.dom4j.Element element : elements) {
				try {
					String name = element.attributeValue("name");
					String value = BEAN_UTILS.getProperty(setting, name);
					Attribute attribute = element.attribute("value");
					attribute.setValue(value);
				} catch (IllegalAccessException e) {
					e.printStackTrace();
					throw new RuntimeException(e.getMessage(), e);
				} catch (InvocationTargetException e) {
					e.printStackTrace();
					throw new RuntimeException(e.getMessage(), e);
				} catch (NoSuchMethodException e) {
					e.printStackTrace();
					throw new RuntimeException(e.getMessage(), e);
				}
			}

			XMLWriter xmlWriter = null;
			try {
				OutputFormat outputFormat = OutputFormat.createPrettyPrint();
				outputFormat.setEncoding("UTF-8");
				outputFormat.setIndent(true);
				outputFormat.setIndent("	");
				outputFormat.setNewlines(true);
				xmlWriter = new XMLWriter(new FileOutputStream(puyunXmlFile), outputFormat);
				xmlWriter.write(document);
				xmlWriter.flush();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
				throw new RuntimeException(e.getMessage(), e);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
				throw new RuntimeException(e.getMessage(), e);
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException(e.getMessage(), e);
			} finally {
				try {
					if (xmlWriter != null) {
						xmlWriter.close();
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			Ehcache cache = CACHE_MANAGER.getEhcache("setting");
			String cacheKey = "setting";
			cache.put(new Element(cacheKey, setting));
		} catch (IOException e) {
			throw new RuntimeException(e.getMessage(), e);
		} catch (DocumentException e) {
			throw new RuntimeException(e.getMessage(), e);
		}
	}
}
