package com.spring.HOT.utils;

import java.io.BufferedWriter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.spring.HOT.dto.MemberVO;

public class ExceptionLoggerHelper {

	/*public static void write(HttpServletRequest request, Exception e, Object res){
		String savePath = GetUploadPath.getUploadPath("error.log").replace("/", File.separator); //에러가 저장될 경로 가져오기
		
		String url = request.getRequestURI().replace(request.getContextPath(), "");
		String date = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
		String loginUserName = ((MemberVO)request.getSession().getAttribute("loginUser")).getName();
		String exceptionType = e.getClass().getName(); //에러가 난 클래스 이름.
		String happenObject = res.getClass().getName();
		
		String log=" [ Error : " + exceptionType +" ] "+url+","+date+","+loginUserName+","+happenObject + "\n message : " + e.getMessage();
		
		//로그 파일 생성.
		File file = new File(savePath);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		try {
			
			String logFilePath = savePath+ File.separator+"system_exception_log.txt";
			BufferedWriter out = new BufferedWriter(new FileWriter(logFilePath, true)); //true가 있으면 이어쓰기, 없으면 새로 쓰는거여서 그동안 있던 로그가 다 지워져서 꼭 true주기
			
			//로그를 기록
			out.write(log);
			out.newLine();
			
			out.close();
		} catch (IOException exception) {
			exception.printStackTrace();
			
		}
	}*/
}
