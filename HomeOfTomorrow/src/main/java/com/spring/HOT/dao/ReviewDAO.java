package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.ReviewVO;

public interface ReviewDAO {
	
	void insertReview(ReviewVO review)throws SQLException;
	
	void updateReview(ReviewVO review)throws SQLException;
	
	List<ReviewVO> selectReviewList(String id)throws SQLException;
	
	void deleteReview(String id, String gcode, String ocode)throws SQLException;
	
	ReviewVO selectReview(String id, String ocode, String gcode)throws SQLException;

}
