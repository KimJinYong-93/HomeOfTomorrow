
package com.spring.HOT.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.dto.MenuVO;
import com.spring.HOT.service.GoodsService;
import com.spring.HOT.exception.NotFoundIDException;
import com.spring.HOT.exception.invalidPasswordException;
import com.spring.HOT.service.MemberService;
import com.spring.HOT.service.MenuService;

import lombok.extern.java.Log;

@Controller
public class CommonController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private MenuService menuService;
	@Autowired
	private GoodsService goodsService;
	
	
	
	@RequestMapping(value = "/common/main", method = RequestMethod.GET)
	public ModelAndView main(@RequestParam(defaultValue="M000000")String mCode, ModelAndView mnv) throws SQLException{
		String url="/common/main";
		List<MenuVO> mainMenu = menuService.mainMenu();
		List<MenuVO> subMenu = menuService.subMenuByMcode(mCode);
		List<GoodsVO> goodsTop12 = goodsService.goodsListTop12();
		mnv.addObject("mainMenuList",mainMenu);
		mnv.addObject("subMenuList",subMenu);
		mnv.addObject("goodsTop12",goodsTop12);
		mnv.setViewName(url);
		
		return mnv;
	}

	@RequestMapping("/common/loginForm")
	public String loginForm() {
		String url="/common/login";
		return url;
	}
	
	@RequestMapping("/common/joinForm")
	public String joinForm() {
		String url="/common/join";
		return url;
	}
	
	@RequestMapping("/common/join")
	public ModelAndView join(String gb, ModelAndView mnv) {
		String url = "";
		if(gb.equals("n")) {
			url = "/common/memberJoin";
		}else if(gb.equals("c")) {
			url = "/common/companyJoin";
		}
		
		mnv.addObject("gb", gb);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/common/companyJoin")
	public String companyJoin(String gb) {
		String url="/common/companyJoin";
		return url;
	}
	
	@RequestMapping("/common/memberJoin")
	public String memberJoin() {
		String url="/common/memberJoin";
		return url;
	}
	
	@RequestMapping("/common/login")
	public String loginForm(String id, String pwd, HttpSession session) throws SQLException{
		String url = "redirect:main";
		
		try {
			memberService.login(id, pwd, session);
		} catch (NotFoundIDException | invalidPasswordException e) {
			url = "redirect:loginForm";
			session.setAttribute("msg", e.getMessage());
		}
		
		return url;
	}
	
	@RequestMapping("/common/logout")
	public String logout(HttpSession session) throws SQLException {
		
		String url = "redirect:main";
		
		session.invalidate();
		
		return url;
	}
	
	@RequestMapping("/common/idCheck")
	@ResponseBody
	public ResponseEntity<String> idCheck(String id) throws Exception {
		
		ResponseEntity<String> entity = null;
		
		MemberVO member = memberService.getMember(id);
		entity = new ResponseEntity<String>(member == null ? id : "", HttpStatus.OK);
		
		return entity;
	}
	
}
