package com.spring.HOT.utils;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Properties;

import org.apache.ibatis.io.Resources;

public class GetUploadPath {

	private static Properties properties = new Properties();
	
	static {
		String resource = "com/jsp/properties/uploadPath.properties";
		try {
			Reader reader = Resources.getResourceAsReader(resource);
			properties.load(reader); //properties가 reader를 통해 해당 properties를 읽을 수 있게 되고 key,value로 저장하여 map역할을 하게 된다. 
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static String getUploadPath(String key) {
		String uploadPath = null;
		uploadPath = properties.getProperty(key); //그래서 직접 getProperty에 key를 넣으면 해당 key의 value를 가지고옴.
		uploadPath = uploadPath.replace("/", File.separator); //구분자를 해당 배포되는 os에 맞춰서 변환해줌.
		
		return uploadPath;
	}
	
	public static String getUploadDatePath(String key) { //날짜 별로 저장하기 위한 경로
		String uploadDatePath = getUploadPath(key);
		
		Calendar cal = Calendar.getInstance();
		
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		String monthPath = File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1); //DecimalFormat은 한자리 일때 앞에 0을 붙여서 무조건 2자리로 만드는 것.
		String datePath = File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		
		String savePath = yearPath+monthPath+datePath;
		
		uploadDatePath += savePath;
		
		return uploadDatePath;
	}

}
