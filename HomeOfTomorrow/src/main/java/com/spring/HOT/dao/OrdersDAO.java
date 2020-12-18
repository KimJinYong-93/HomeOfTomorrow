package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.OrdersVO;

public interface OrdersDAO {
	
	List<OrdersVO> selectOrders(String id)throws SQLException;

}
