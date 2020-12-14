
package com.spring.HOT.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.HOT.service.GoodsService;
import com.spring.HOT.service.MemberService;
import com.spring.HOT.service.MenuService;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private MenuService menuService;
	@Autowired
	private GoodsService goodsService;
	
	
	@RequestMapping("/member/myPage")
	public String myPage() {
		String url="member/myPage";
		return url;
	}
	@RequestMapping("/member/orderList")
	public String orderList() {
		String url="member/orderList";
		return url;
	}

}