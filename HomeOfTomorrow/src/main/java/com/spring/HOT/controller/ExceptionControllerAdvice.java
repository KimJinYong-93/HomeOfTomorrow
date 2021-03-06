package com.spring.HOT.controller;

import java.sql.SQLException;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

@RestControllerAdvice
public class ExceptionControllerAdvice {
	
	
	@ExceptionHandler(SQLException.class)
	public ModelAndView sqlExceptionPage(Exception e) {
		e.printStackTrace();
		
		ModelAndView modelnView = new ModelAndView();
		
		modelnView.setViewName("error/500");
		modelnView.addObject("exception", e);
		
		return modelnView;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView ExceptionPage(Exception e) {
		e.printStackTrace();
		
		ModelAndView modelnView = new ModelAndView();
		
		modelnView.setViewName("error/500");
		modelnView.addObject("exception", e);
		
		return modelnView;
	}
	
	

}
