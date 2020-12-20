
package com.spring.HOT.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.command.MemberJoinCommand;
import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.dto.HomeBoardVO;
import com.spring.HOT.dto.MemberAVO;
import com.spring.HOT.dto.MemberCVO;
import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.dto.MenuVO;
import com.spring.HOT.service.GoodsService;
import com.spring.HOT.service.HomeBoardService;
import com.spring.HOT.exception.NotFoundIDException;
import com.spring.HOT.exception.invalidPasswordException;
import com.spring.HOT.service.MemberService;
import com.spring.HOT.service.Member_CService;
import com.spring.HOT.service.Member_NService;
import com.spring.HOT.service.MenuService;


@Controller
public class CommonController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private Member_NService member_nService;
	@Autowired
	private Member_CService member_cService;
	@Autowired
	private MenuService menuService;
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private HomeBoardService homeBoardService;
	
	
	@RequestMapping(value = "/common/main", method = RequestMethod.GET)
	public ModelAndView main(@RequestParam(defaultValue="M000000")String mCode, ModelAndView mnv, HttpSession session) throws SQLException{
		String url="/common/main";
		List<MenuVO> mainMenu = menuService.mainMenu(session);
		List<MenuVO> subMenu = menuService.subMenuByMcode(mCode);
		List<GoodsVO> goodsTop12 = goodsService.goodsListTop12();
		List<HomeBoardVO> homeBoardTop3 = homeBoardService.homeBoardTop3();
		//mnv.addObject("mainMenuList",mainMenu); service�뿉�꽌 session�뿉 �꽔�뼱�넃�쓬
		mnv.addObject("subMenuList",subMenu);
		mnv.addObject("goodsTop12",goodsTop12);
		mnv.addObject("homeBoardTop3",homeBoardTop3);
		mnv.setViewName(url);
		
		return mnv;
	}

	@RequestMapping("/common/loginForm")
	public String loginForm(@RequestParam(defaultValue = "0") String error, HttpServletResponse response) throws Exception {
		String url="/common/login";
		
		if(error.equals("1")) {
			response.setStatus(302);
		}
		
		return url;
	}
	
	@RequestMapping("/security/accessDenied")
	public String accessDenied(HttpServletResponse response) throws Exception {
		String url = "security/accessDenied.open";
		
		response.setStatus(302);
		
		return url;
	}
	
	@RequestMapping("/common/loginTimeOut")
	public void loginTimeOut(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('세션이 만료되었습니다.\\n다시 로그인하세요.');");
		out.println("location.href='" + request.getContextPath() + "';");
		out.println("</script>");
		out.close();
	}
	
	@RequestMapping("/common/loginExpired")
	public void loginExpired(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('여기는 뭐지?');");
		out.println("location.href='" + request.getContextPath() + "';");
		out.println("</script>");
		out.close();
	}
	
	@RequestMapping("/common/joinForm")
	public String joinForm() {
		String url="/common/join";
		return url;
	}
	
	@RequestMapping(value = "/common/join", method=RequestMethod.GET)
	public ModelAndView joinForm(String gb, ModelAndView mnv) {
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
	
	@RequestMapping(value = "/common/join", method=RequestMethod.POST)
	public void join(MemberJoinCommand memberReq, String gb, String[] hp, HttpServletResponse response) throws SQLException, IOException {
		String datas = "";
		for (int i = 0; i < hp.length; i++) { // hp 에 '-' 넣기
			if (i == 0) {
				datas += hp[i];
			} else {
				datas += "-" + hp[i];
			}
		}
		memberReq.setHp(datas);

		MemberVO member = memberReq.toMemberParse();
		memberService.regist(member); // 회원테이블에 insert

		System.out.println(memberReq);

		if(gb.equals("n")) {
			MemberNVO memberN = memberReq.toMember_NParse();	// memberN 으로 변환
			member_nService.regist(memberN);	// memberN 테이블에 insert
			
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>");
			out.println("alert('회원가입이 완료되었습니다. 로그인을 해주세요.');");
			out.println("location.href='loginForm'");
			out.println("</script>");
		}else if(gb.equals("c")) {
			MemberCVO memberC = memberReq.toMember_CParse();	// memberC 으로 변환
			System.out.println(memberC);
			member_cService.regist(memberC);	// memberC 테이블에 insert
			
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>");
			out.println("alert('회원가입이 완료되었습니다. 로그인을 해주세요.');");
			out.println("location.href='loginForm'");
			out.println("</script>");
		}
	}
	
	/*
	 * @RequestMapping("/common/login") public String loginForm(String id, String
	 * pwd, HttpSession session) throws SQLException{ String url = "redirect:main";
	 * 
	 * try { memberService.login(id, pwd, session);
	 * 
	 * } catch (NotFoundIDException | invalidPasswordException e) { url =
	 * "redirect:loginForm"; session.setAttribute("msg", e.getMessage()); }
	 * 
	 * return url; }
	 * 
	 * @RequestMapping("/common/logout") public String logout(HttpSession session)
	 * throws SQLException {
	 * 
	 * String url = "redirect:main";
	 * 
	 * session.invalidate();
	 * 
	 * return url; }
	 */
	
	@RequestMapping("/common/idCheck")
	@ResponseBody
	public ResponseEntity<String> idCheck(String id) throws Exception {
		
		ResponseEntity<String> entity = null;
		
		MemberVO member = memberService.getMember(id);
		entity = new ResponseEntity<String>(member == null ? id : "", HttpStatus.OK);

		return entity;
		
	}
	
	@RequestMapping(value = "/common/nickCheck")
	@ResponseBody
	public ResponseEntity<String> nickCheck(String nickname) throws Exception {
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/plain; charset=utf-8");
		
		ResponseEntity<String> entity = null;
		
		MemberNVO memberN = member_nService.getMemberNByNickname(nickname);
		entity = new ResponseEntity<String>(memberN == null ? nickname : "", responseHeaders, HttpStatus.CREATED);
		
		return entity;
	}
	
}
