package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.request.OrdersRequest;

public interface OrdersService {
	
	List<OrdersRequest> getMyOrders(String id)throws SQLException;
	
	OrdersRequest getOrderDetail(String ocode)throws SQLException;
	
	int getOrdersCount(String id)throws SQLException;

}
