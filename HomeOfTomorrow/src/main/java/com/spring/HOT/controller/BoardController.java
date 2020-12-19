package com.spring.HOT.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(value = "/list")
	public ModelAndView list(ModelAndView mnv, SearchCriteria cri, String cg_code) throws Exception {
		String url = "board/" + sortBoardType(cg_code) + "/list";
		
		Map<String, Object> dataMap = boardService.getBoardList(cri, cg_code);
		mnv.addObject("dataMap", dataMap);
		mnv.addObject("cg_code", cg_code);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("/detail")
	public ModelAndView detail(int bno, String cg_code, @RequestParam(defaultValue="") String from,
							   ModelAndView mnv ) throws Exception {
		String url="board/" + sortBoardType(cg_code) + "/detail";
		
		BoardVO board = null;
		
		if(from.equals("modify")) { 
			board = boardService.getBoardForModify(bno);
		}else { 
			board = boardService.getBoard(bno); 
		}
		 
		mnv.addObject("board",board);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/registForm")
	private ModelAndView registForm(String cg_code, ModelAndView mnv) {
		String url = "board/" + sortBoardType(cg_code) + "/regist";
		mnv.addObject("cg_code", cg_code);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/regist")
	private void regist(BoardVO board, HttpServletResponse response) throws Exception {
		boardService.regist(board);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('공지사항 등록이 완료되었습니다.');");
		out.println("location.href='list?cg_code="+ board.getCg_code() + "'");
		out.println("</script>");
	}
	
	@RequestMapping("/modifyForm")
	private ModelAndView modifyForm(int bno, String cg_code, ModelAndView mnv) throws Exception {
		String url = "board/" + sortBoardType(cg_code) + "/modify";
		
		BoardVO board = boardService.getBoard(bno);
		
		mnv.addObject("board", board);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/modify")
	private void modify(BoardVO board, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//board.setTitle((String)request.getParameter("XSStitle"));
		
		boardService.modify(board);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<script>");
		out.println("alert('수정을 완료했습니다.');");
		out.println("location.href='detail?bno="+board.getBno()+"&cg_code=" + board.getCg_code() +"&from=modify';");
		out.println("</script>");
	}
	
	@RequestMapping("/remove")
	private void remove(int bno, String cg_code, HttpServletResponse response) throws Exception {
		
		boardService.remove(bno);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<script>");
		out.println("alert('삭제를 완료했습니다.');");
		out.println("location.href='list?cg_code="+ cg_code + "';");
		out.println("</script>");
	}
	
	private String sortBoardType(String cg_code) {
		String boardType = "";
		
		if(cg_code.equals("HOTB00Q")) {
			boardType = "QnA";
		}else if(cg_code.equals("HOTB00E")) {
			boardType = "event";
		}else {
			boardType = "notice";
		}
		
		return boardType;
	}
	
	

}
