
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
import com.spring.HOT.dto.HomeBoardVO;
import com.spring.HOT.dto.MenuVO;
import com.spring.HOT.service.GoodsService;
import com.spring.HOT.service.HomeBoardService;
import com.spring.HOT.exception.NotFoundIDException;
import com.spring.HOT.exception.invalidPasswordException;
import com.spring.HOT.service.MemberService;
import com.spring.HOT.service.MenuService;

@Controller
@RequestMapping("/common")
public class CommonController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private MenuService menuService;
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private HomeBoardService homeBoardService;
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(@RequestParam(defaultValue="M000000")String mCode, ModelAndView mnv, HttpSession session) throws SQLException{
		String url="/common/main";
		List<MenuVO> mainMenu = menuService.mainMenu(session);
		List<MenuVO> subMenu = menuService.subMenuByMcode(mCode);
		List<GoodsVO> goodsTop12 = goodsService.goodsListTop12();
		List<HomeBoardVO> homeBoardTop3 = homeBoardService.homeBoardTop3();
		//mnv.addObject("mainMenuList",mainMenu); service에서 session에 넣어놓음
		mnv.addObject("subMenuList",subMenu);
		mnv.addObject("goodsTop12",goodsTop12);
		mnv.addObject("homeBoardTop3",homeBoardTop3);
		mnv.setViewName(url);
		
		return mnv;
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
	
	@RequestMapping("/memberJoin")
	public void memberJoin() {}
	
	@RequestMapping("/login")
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
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws SQLException {
		String url = "redirect:main";
		
		session.invalidate();
		
		return url;
	}
}
