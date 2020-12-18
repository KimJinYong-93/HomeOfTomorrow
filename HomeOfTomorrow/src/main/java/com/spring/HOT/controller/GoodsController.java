package com.spring.HOT.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.dto.CategoryVO;
import com.spring.HOT.service.CategoryService;
import com.spring.HOT.service.GoodsService;
import com.spring.HOT.service.MenuService;


@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Resource(name="goodsPicturePath")
	private String goodsPicturePath;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/picture", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> picture(@RequestParam("pictureFile") MultipartFile multi, String oldPicture) throws Exception {
		ResponseEntity<String> entity = null;
		String result = "";
		HttpStatus status = null;
		
		if((result = savePicture(oldPicture, multi)) == null) {
			result = "업로드를 실패했습니다!";
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
			String uploadPath = this.goodsPicturePath;
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
	
	@RequestMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String picture) throws Exception{
		InputStream in =null;
		ResponseEntity<byte[]> entity = null;
		String imgPath = this.goodsPicturePath;
		
		
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

	@RequestMapping("/list")
	public String list() {
		String url = "goods/list";
		return url;
	}

	@RequestMapping("/upload")
	public ModelAndView upload(ModelAndView mnv) throws Exception {
		String url="goods/upload";
		
		List<CategoryVO> categoryList = categoryService.getCategoryList("HOTG");
		System.out.println(categoryList);
		mnv.addObject("categoryList", categoryList);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/detail")
	public String detail() {
		String url = "goods/detail";
		return url;
	}
	
}
