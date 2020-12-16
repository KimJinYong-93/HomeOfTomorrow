
package com.spring.HOT.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
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
import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.dto.MenuVO;
import com.spring.HOT.service.GoodsService;
import com.spring.HOT.service.MemberService;
import com.spring.HOT.service.Member_NService;
import com.spring.HOT.service.MenuService;


@Controller
@RequestMapping("/member")
public class MemberController {
	
	
	@Autowired
	private Member_NService member_NService;
	
	
	@RequestMapping("/myPage")
	public String myPage() {
		String url="member/myPage";
		return url;
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
	@RequestMapping("/member/orderList")
	public String orderList() {
		String url="member/orderList";
		return url;
	}

}
