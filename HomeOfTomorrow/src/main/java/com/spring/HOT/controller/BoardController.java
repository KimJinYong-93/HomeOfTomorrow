package com.spring.HOT.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dto.BoardVO;
import com.spring.HOT.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	
	@Resource(name="boardPicturePath")
	private String picturePath; 
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String picture) throws Exception{
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		
		String imgPath = this.picturePath;
		
		try {
			in = new FileInputStream(new File(imgPath, picture));
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
			
		} catch (IOException e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
		} finally {
			if(in != null) in.close();
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(ModelAndView mnv, SearchCriteria cri, String cg_code) throws Exception {
		String url = "";
		
		if(cg_code.equals("HOTB00Q")) {
			url = "/board/QnA/list";
		}else if(cg_code.equals("HOTB00E")) {
			url = "/board/event/list";
		}else {
			url = "/board/notice/list";
		}
		
		Map<String, Object> dataMap = boardService.getBoardList(cri, cg_code);
		System.out.println(dataMap.get("pageMaker"));
		System.out.println(dataMap.get("listSize"));
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}

}
