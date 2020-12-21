package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.ReviewVO;

public class ReviewDAOImpl implements ReviewDAO {
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public void insertReview(ReviewVO review) throws SQLException {
		
		sqlSession.update("Review-Mapper.insertReview", review);
		String ocode = review.getOcode();
		String gcode = review.getGcode();
		Map<String, String> data = new HashMap<String, String>();
		data.put("ocode", ocode);
		data.put("gcode", gcode);
		sqlSession.update("Order_bd-Mapper.updateRv_Check", data);
	}
	@Override
	public List<ReviewVO> selectReviewList(String id) throws SQLException {
		List<ReviewVO> reviewList = null;
		
		reviewList = sqlSession.selectList("Review-Mapper.selectReviewList", id);
		
		return reviewList;
	}
	@Override
	public void deleteReview(String id, String gcode, String ocode) throws SQLException {
		Map<String, String> data = new HashMap<String, String>();
		
		data.put("id", id);
		data.put("gcode", gcode);
		data.put("ocode", ocode);
		
		sqlSession.update("Review-Mapper.delete", data);
		sqlSession.update("Order_bd-Mapper.deleteRv_Check", data);
		
	}
	@Override
	public ReviewVO selectReview(String id, String ocode, String gcode) throws SQLException {
		
		Map<String, String> data = new HashMap<String, String>();
		
		ReviewVO review = new ReviewVO();
		
		data.put("id", id);
		data.put("gcode", gcode);
		data.put("ocode", ocode);
		
		review = sqlSession.selectOne("Review-Mapper.selectReview", data);
		
		return review;
	}
	@Override
	public void updateReview(ReviewVO review) throws SQLException {
		sqlSession.update("Review-Mapper.update", review);
	}
	
	

}
