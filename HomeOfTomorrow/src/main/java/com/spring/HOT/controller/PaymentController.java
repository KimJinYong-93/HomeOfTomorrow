package com.spring.HOT.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PaymentController {
	
	@RequestMapping("/payment/kakaoPay")
	public String kakaoPay() {
		String url = "payment/kakaoPay";
		return url;
	}
	
	@RequestMapping("/payment/complete")
	@ResponseBody
	public void complete(@RequestParam String imp_uid) throws Exception{
		System.out.println(imp_uid);
	}
	
}
