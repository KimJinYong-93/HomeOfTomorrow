
package com.spring.HOT.controller;

import java.io.File;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.dto.BoardVO;
import com.spring.HOT.dto.HomeBoardVO;
import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.service.BoardService;
import com.spring.HOT.service.HomeBoardService;
import com.spring.HOT.service.Member_NService;
import com.spring.HOT.service.OrdersService;


@Controller
@RequestMapping("/member")
public class MemberController {
	
	
	@Autowired
	private Member_NService member_NService;
	
	@Autowired
	private HomeBoardService homeBoardService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private OrdersService ordersService;
	

	
	
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


}
