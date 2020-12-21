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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.dto.ReviewVO;
import com.spring.HOT.request.OrderDetailRequest;
import com.spring.HOT.request.ReviewRequest;
import com.spring.HOT.service.OrdersService;
import com.spring.HOT.service.ReviewService;

@RestController
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/deleteReview", method=RequestMethod.GET)
	public void deleteReview(String gcode, String ocode, HttpSession session, HttpServletResponse response)throws Exception{
		
		MemberVO member = (MemberVO)session.getAttribute("loginUser");
		String id = member.getId();
		
		reviewService.deleteReview(id, gcode, ocode);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String output = "" + "<script>" + "alert('정상적으로 리뷰가 삭제되었습니다.'); location.href='/HOT/review/list';</script>";
		out.println(output);
		out.close();
		
	}
	
	@RequestMapping(value="/modifyForm", method=RequestMethod.GET)
	public ResponseEntity<ReviewRequest> modifyForm(String ocode, String gcode, HttpSession session){
		ResponseEntity<ReviewRequest> entity =null;
		
		MemberNVO member = (MemberNVO)session.getAttribute("loginUserDetail");
		
		try {
			ReviewRequest reviewRequest = reviewService.getReviewRequest(ocode, gcode, member.getId());
			entity = new ResponseEntity<ReviewRequest>(reviewRequest, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<ReviewRequest>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	
	
	@RequestMapping(value="/{ocode}/{gcode}", method= RequestMethod.GET)
	public ResponseEntity<OrderDetailRequest> review(@PathVariable("ocode")String ocode, @PathVariable("gcode")String gcode){
		
		ResponseEntity<OrderDetailRequest> entity = null;
		
		try {
			OrderDetailRequest reviewDetail = ordersService.getOrderDetailByReview(ocode, gcode);
			entity = new ResponseEntity<OrderDetailRequest>(reviewDetail, HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<OrderDetailRequest>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}
	@RequestMapping("/list")
	public ModelAndView list(ModelAndView mnv, HttpSession session) {
		String url = "order/reviewList";
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		String userId = loginUser.getId();
		
		try {
			List<ReviewRequest> myReviewList = reviewService.getMyReviewList(userId);
			mnv.addObject("reviewList", myReviewList);
			mnv.setViewName(url);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return mnv;
	}
	
	@RequestMapping(value="/regist", method=RequestMethod.POST)
	public ResponseEntity<String> regist(ReviewVO review)throws SQLException,IOException{
		ResponseEntity<String> entity = null;
		
		reviewService.registReview(review);
		
		entity = new ResponseEntity<>(HttpStatus.OK);
		
		return entity;
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public ResponseEntity<String> modify(ReviewVO review)throws SQLException,IOException{
		ResponseEntity<String> entity = null;
		
		reviewService.modifyReview(review);
		
		entity = new ResponseEntity<>(HttpStatus.OK);
		
		return entity;
	}
	
	
	@Resource(name="reviewPicturePath")
	private String picturePath;
	
	@RequestMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String picture) throws Exception{
		InputStream in =null;
		ResponseEntity<byte[]> entity = null;
		String imgPath = this.picturePath;
		
		
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
			String uploadPath = picturePath;
			fileName = UUID.randomUUID().toString().replace("-", "") + ".jpg";
			File storeFile = new File(uploadPath, fileName);

			storeFile.mkdirs();

			// local HDD 에 저장.
			multi.transferTo(storeFile);

		}

		return fileName;
	}
	
	
	
	

}


