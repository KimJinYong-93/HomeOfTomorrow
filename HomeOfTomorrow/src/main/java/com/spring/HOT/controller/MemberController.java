
package com.spring.HOT.controller;

import java.io.File;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.dto.BoardVO;
import com.spring.HOT.dto.HomeBoardVO;
import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.service.BoardService;
import com.spring.HOT.service.HomeBoardService;
import com.spring.HOT.service.MemberService;
import com.spring.HOT.service.Member_NService;
import com.spring.HOT.service.OrdersService;


@Controller
@RequestMapping("/member")
public class MemberController {
	
	
	@Autowired
	private Member_NService member_NService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private HomeBoardService homeBoardService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private OrdersService ordersService;
	
	@RequestMapping("/enabled")
	public void enabled(HttpSession session, HttpServletResponse response)throws Exception{
	MemberVO member = (MemberVO)session.getAttribute("loginUser");
	
		memberService.enabled(member.getId());
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String output = "" + "<script>" + "alert('정상적으로 탈퇴처리가 완료되었습니다.'); location.href='/HOT/common/logout';</script>";
		out.println(output);
		out.close();
	
	}
	
	
	@RequestMapping("/myPage")
	public ModelAndView myPage(String id, ModelAndView mnv) {
		String url="member/myPage";
		try {
			List<HomeBoardVO> myhomeBoardList = homeBoardService.getMyhomeBoard(id);
			List<BoardVO> myQnAList = boardService.getMyQnAList(id);
			int homeCount = 0;
			int QnACount = 0;
			if(myhomeBoardList != null) {
				for(int i = 0; i < myhomeBoardList.size(); i++) {
					homeCount++;
				}
			}
			if(myQnAList != null) {
				for(int i = 0; i < myQnAList.size(); i++) {
					QnACount++;
				}
			}
			
			int ordersCount = ordersService.getOrdersCount(id);
			
			mnv.addObject("myhomeBoardList", myhomeBoardList);
			mnv.addObject("homeCount", homeCount);
			mnv.addObject("myQnAList", myQnAList);
			mnv.addObject("QnACount", QnACount);
			mnv.addObject("ordersCount", ordersCount);
			mnv.setViewName(url);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return mnv;
	}
	
	@Resource(name="memberPicturePath")
	private String memberPicturePath;
	
	@RequestMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String id) throws Exception{
		
		
		MemberNVO memberN = member_NService.getMemberNById(id);
		
		InputStream in =null;
		ResponseEntity<byte[]> entity = null;
		String imgPath = this.memberPicturePath;
		
		
		try {
			in = new FileInputStream(new File(imgPath, memberN.getPicture()));
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
			
		} catch (IOException e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
		} finally {
			in.close();
		}
		
		return entity;
		
	}
	
	@RequestMapping("/noPicture")
	@ResponseBody
	public ResponseEntity<byte[]> noPicture() throws Exception{
		InputStream in =null;
		ResponseEntity<byte[]> entity = null;
		String imgPath = this.memberPicturePath;
		
		
		try {
			in = new FileInputStream(new File(imgPath, "noProfilePicture.jpg"));
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
			
		} catch (IOException e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
		} finally {
			in.close();
		}
		
		return entity;
		
	}
	@RequestMapping(value="/savePicture", method= RequestMethod.POST)
	public ResponseEntity<String> uploadPicture(@RequestParam("uploadFile") MultipartFile file)throws Exception{
		
		ResponseEntity<String> entity = null;
		
		String result = "";
		HttpStatus status = null;

		/* 파일저장확인 */
		if ((result = savePicture(file)) == null) {
			result = "업로드 실패했습니다.!";
			status = HttpStatus.BAD_REQUEST;
		} else {
			status = HttpStatus.OK;

		}

		entity = new ResponseEntity<String>(result, status);

		return entity;

	}
	
	private String savePicture(MultipartFile multi) throws Exception {
		String fileName = null;

		/* 파일유무확인 */
		if (!(multi == null || multi.isEmpty() || multi.getSize() > 1024 * 1024 * 5)) {

			/* 파일저장폴더설정 */
			String uploadPath = memberPicturePath;
			fileName = UUID.randomUUID().toString().replace("-", "") + ".jpg";
			File storeFile = new File(uploadPath, fileName);

			storeFile.mkdirs();

			// local HDD 에 저장.
			multi.transferTo(storeFile);

		}

		return fileName;
	}
	
	
	@RequestMapping("/userModifyForm")
	public ModelAndView userModifyForm(HttpSession session, ModelAndView mnv)throws Exception{
		String url = "member/userModify";
		
	MemberNVO member = (MemberNVO)session.getAttribute("loginUserDetail");
	String hp = member.getHp();
	String[] splitHp = hp.split("-");
	
	mnv.addObject("splitHp", splitHp);
	mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public void modify(MemberNVO member, Authentication auth, HttpSession session, HttpServletResponse response)
			throws Exception {

		member_NService.modify(member);

		// 로그인한 사용자의 경우 수정된 정보로 session 업로드
		session.setAttribute("loginUserDetail", member);

		
		
/*		//security session에 반영과정.
		if(auth.getName().equals(member.getId())) {
			//변경된 로그인 사용자 정보를 가져온다.
			MemberVO updateMember = memberService.getMember(auth.getName());
			
			//security의 userDetail을 갱신하기 위한 User생성
			User authUser = new User(updateMember);
			
			//새로운 Authentication을 생성
			UsernamePasswordAuthenticationToken newAuth =
					new UsernamePasswordAuthenticationToken(authUser.getUsername(), authUser.getPassword(), authUser.getAuthorities());
			
			newAuth.setDetails(authUser);
			
			//SecurityContextHolder으로 새로 생성한 authentication 을 satting
			SecurityContextHolder.getContext().setAuthentication(newAuth);
			
			//authentication detail과 session attritute를 교체한다.
			session.setAttribute("loginUser", authUser.getMemberVO());
			
		}*/

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String output = "" + "<script>" + "alert('정상적으로 회원정보가 수정되었습니다.');" + "location.href='myPage?id=" + member.getId() + "';</script>";
		out.println(output);
		out.close();

	}


}
