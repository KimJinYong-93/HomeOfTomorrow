package com.spring.HOT.request;

import java.util.List;

import com.spring.HOT.dto.OrdersVO;

public class OrdersRequest {
	
	private OrdersVO orders;
	private List<OrderDetailRequest> orderdetail;
	
	public OrdersVO getOrders() {
		return orders;
	}
	public void setOrders(OrdersVO orders) {
		this.orders = orders;
	}
	public List<OrderDetailRequest> getOrderdetail() {
		return orderdetail;
	}
	public void setOrderdetail(List<OrderDetailRequest> orderdetail) {
		this.orderdetail = orderdetail;
	}
	@Override
	public String toString() {
		return "OrdersRequest [orders=" + orders + ", orderdetail=" + orderdetail + "]";
	}
	
	
	
	
	
	
	
	

}
