package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.OrdersVO;

public interface OrdersDAO {
	
	List<OrdersVO> selectOrders(String id)throws SQLException;
	
	OrdersVO selectOrdersByOcode(String ocode)throws SQLException;
	
	int selectOrdersCount(String id)throws SQLException;
	

}
