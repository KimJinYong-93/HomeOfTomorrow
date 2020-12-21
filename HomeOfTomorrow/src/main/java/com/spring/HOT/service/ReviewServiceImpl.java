package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.spring.HOT.dao.GoodsDAO;
import com.spring.HOT.dao.Order_bdDAO;
import com.spring.HOT.dao.ReviewDAO;
import com.spring.HOT.dto.GoodsVO;
import com.spring.HOT.dto.Order_bdVO;
import com.spring.HOT.dto.ReviewVO;
import com.spring.HOT.request.OrderDetailRequest;
import com.spring.HOT.request.ReviewRequest;

public class ReviewServiceImpl implements ReviewService {
	
	private ReviewDAO reviewDAO;
	public void setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
	}
	
	
	private Order_bdDAO order_bdDAO;
	public void setOrder_bdDAO(Order_bdDAO order_bdDAO) {
		this.order_bdDAO = order_bdDAO;
	}
	
	private GoodsDAO goodsDAO;
	public void setGoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}
	
	
	
	@Override
	public void registReview(ReviewVO review) throws SQLException {
		reviewDAO.insertReview(review);
	}


	@Override
	public List<ReviewRequest> getMyReviewList(String id) throws SQLException {
		
		List<ReviewRequest> myReviewList = new ArrayList<ReviewRequest>();
		
		List<ReviewVO> reviewList = reviewDAO.selectReviewList(id);
		
		for(ReviewVO review : reviewList) {
			ReviewRequest reviewRequest = new ReviewRequest();
			reviewRequest.setReview(review);
			OrderDetailRequest orderDetail = new OrderDetailRequest();
			Order_bdVO order_bd = order_bdDAO.selectOrder_bdByRV(review.getOcode(), review.getGcode());
			GoodsVO goods = goodsDAO.selectGoods(review.getGcode());
			orderDetail.setOrder_bd(order_bd);
			orderDetail.setGoods(goods);
			
			reviewRequest.setOrderDetail(orderDetail);
			myReviewList.add(reviewRequest);
		}
		
		return myReviewList;
	}



	@Override
	public void deleteReview(String id, String gcode, String ocode) throws SQLException {
		
		reviewDAO.deleteReview(id, gcode, ocode);
		
	}



	@Override
	public ReviewRequest getReviewRequest(String ocode, String gcode, String id) throws SQLException {
		
		ReviewRequest reviewRequest = new ReviewRequest();
		
		ReviewVO review = reviewDAO.selectReview(id, ocode, gcode);
		OrderDetailRequest orderDetail = new OrderDetailRequest();
		Order_bdVO order_bd = order_bdDAO.selectOrder_bdByRV(ocode, gcode);
		GoodsVO goods = goodsDAO.selectGoods(gcode);
		orderDetail.setOrder_bd(order_bd);
		orderDetail.setGoods(goods);
		
		reviewRequest.setReview(review);
		reviewRequest.setOrderDetail(orderDetail);
		
		return reviewRequest;
	}



	@Override
	public void modifyReview(ReviewVO review) throws SQLException {
		
		reviewDAO.updateReview(review);
		
	}
	
	

}
