package com.spring.HOT.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping("/common/main")
	public String main() {
		String url="/common/main";
		return url;
	}

	@RequestMapping("/common/login")
	public String loginForm() {
		String url="/common/login";
		return url;
	}
	
	@RequestMapping("/common/join")
	public String join() {
		String url="/common/join";
		return url;
	}
	@RequestMapping("/common/companyJoin")
	public String companyJoin() {
		String url="/common/companyJoin";
		return url;
	}
}
