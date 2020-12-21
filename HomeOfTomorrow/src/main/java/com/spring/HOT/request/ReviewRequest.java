package com.spring.HOT.request;

import com.spring.HOT.dto.ReviewVO;

public class ReviewRequest {
	
	ReviewVO review;
	OrderDetailRequest orderDetail;
	
	public ReviewVO getReview() {
		return review;
	}
	public void setReview(ReviewVO review) {
		this.review = review;
	}
	public OrderDetailRequest getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(OrderDetailRequest orderDetail) {
		this.orderDetail = orderDetail;
	}
	@Override
	public String toString() {
		return "ReviewRequest [review=" + review + ", orderDetail=" + orderDetail + "]";
	}
	
	

}
