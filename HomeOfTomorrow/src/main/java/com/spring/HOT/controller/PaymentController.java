package com.spring.HOT.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	
	@RequestMapping("/payment/kakaoPay")
	public String kakaoPay() {
		String url = "payment/kakaoPay";
		return url;
	}
	
}
