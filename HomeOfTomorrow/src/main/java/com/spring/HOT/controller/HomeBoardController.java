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

import org.apache.commons.io.IOUtils;
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

import com.spring.HOT.dto.CategoryVO;
import com.spring.HOT.dto.HomeBoardVO;
import com.spring.HOT.service.CategoryService;
import com.spring.HOT.service.HomeBoardService;


@Controller
@RequestMapping("/homeBoard")
public class HomeBoardController {
	
	@Resource(name="homeBoardPicturePath")
	private String homeBoardPicturePath;
	
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private HomeBoardService homeBoardService;
	
	
	@RequestMapping(value="/regist", method=RequestMethod.POST)
	public void regist(HomeBoardVO homeBoard, HttpServletResponse response)throws Exception{
		
		int hno = homeBoardService.regist(homeBoard);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('집들이 게시글 등록이 완료되었습니다.');");
		out.println("location.href='detail?hno="+hno+"'");
		out.println("</script>");
	}
	
	@RequestMapping("/deleteHomeBoard")
	public void delete(int hno, HttpServletResponse response)throws Exception{
		
		homeBoardService.deleteHomeBoard(hno);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('정상적으로 삭제되었습니다.');");
		out.println("location.href='list'");
		out.println("</script>");
	}
	
	@RequestMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String picture) throws Exception{
		InputStream in =null;
		ResponseEntity<byte[]> entity = null;
		String imgPath = this.homeBoardPicturePath;
		
		
		try {
			in = new FileInputStream(new File(imgPath, picture));
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
			
		} catch (IOException e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
		} finally {
			in.close();
		}
		
		return entity;
		
	}
	
	@RequestMapping(value = "/picture", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> picture(@RequestParam("pictureFile") MultipartFile multi, String oldPicture) throws Exception {
		ResponseEntity<String> entity = null;
		String result = "";
		HttpStatus status = null;
		
		if((result = savePicture(oldPicture, multi)) == null) {
			result = "현재 업로드가 불가합니다. 관리자에게 문의하세요.!";
			status = HttpStatus.BAD_REQUEST;
		} else {
			status = HttpStatus.OK;
		}
		
		entity = new ResponseEntity<String>(result, status);
		
		return entity;
	}
	
	private String savePicture(String oldPicture, MultipartFile multi) throws Exception {
		String fileName = null;
		
		if(!(multi == null || multi.isEmpty() || multi.getSize() > 1024 * 1024 * 5)) {
			String uploadPath = this.homeBoardPicturePath;
			fileName = UUID.randomUUID().toString().replace("-", "") + ".jpg";
			File storeFile = new File(uploadPath, fileName);
			
			storeFile.mkdirs();
			
			multi.transferTo(storeFile);
			
			if(!oldPicture.isEmpty()) {
				File oldFile = new File(uploadPath, oldPicture);
				if(oldFile.exists()) {
					oldFile.delete();
				}
			}
		}
		return fileName;
	}
	
	
	@RequestMapping("/detail")
	public ModelAndView detail(ModelAndView mnv, int hno)throws Exception{
		String url = "homeBoard/detail";
		
		HomeBoardVO homeBoard = homeBoardService.getHomeBoard(hno);
		
		mnv.addObject("homeBoard", homeBoard);
		mnv.setViewName(url);
	
		return mnv;
	}
	
	@RequestMapping("/list")
	public ModelAndView jip(ModelAndView mnv) {
		String url="/homeBoard/list";
		List<HomeBoardVO> homeBoardList;
		try {
			homeBoardList = homeBoardService.getHomeBoardList();
			mnv.addObject("homeBoardList", homeBoardList);
			mnv.setViewName(url);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return mnv;
	}
	
	
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public ModelAndView jipupload(ModelAndView mnv) throws Exception {
		String url="homeBoard/upload";
/*		
		List<CategoryVO> categoryList = categoryService.getCategoryList("HOTG");
		mnv.addObject("categoryList", categoryList);*/
		mnv.setViewName(url);
		
		return mnv;
	}
	
	

}
