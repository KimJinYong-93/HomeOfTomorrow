package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.ReviewVO;
import com.spring.HOT.request.ReviewRequest;

public interface ReviewService {

	
	void registReview(ReviewVO review)throws SQLException;
	
	void modifyReview(ReviewVO review)throws SQLException;
	
	List<ReviewRequest> getMyReviewList(String id)throws SQLException;
	
	void deleteReview(String id, String gcode, String ocode)throws SQLException;
	
	ReviewRequest getReviewRequest(String ocode, String gcode, String id)throws SQLException;
}
