package com.spring.HOT.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.service.MemberService;

@Controller
@RequestMapping("/common")
public class CommonController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/main")
	public String main() {
		String url="/common/main";
		return url;
	}

	@RequestMapping("/loginForm")
	public String loginForm() {
		String url="/common/login";
		return url;
	}
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		String url="/common/join";
		return url;
	}
	
	@RequestMapping("/companyJoin")
	public String companyJoin() {
		String url="/common/companyJoin";
		return url;
	}
	
	@RequestMapping("/login")
	public String loginForm(String id, String pwd, HttpSession session) throws SQLException{
		String url = "redirect:main";
		
		
		
		return url;
	}
}
