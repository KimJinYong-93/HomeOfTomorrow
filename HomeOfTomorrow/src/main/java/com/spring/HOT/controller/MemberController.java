
package com.spring.HOT.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.dto.MenuVO;
import com.spring.HOT.service.GoodsService;
import com.spring.HOT.exception.NotFoundIDException;
import com.spring.HOT.exception.invalidPasswordException;
import com.spring.HOT.service.MemberService;
import com.spring.HOT.service.MenuService;

import lombok.extern.java.Log;

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
}
