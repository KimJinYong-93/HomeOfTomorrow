package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dao.Order_bdDAO;
import com.spring.HOT.dto.Order_bdVO;

public class Order_bdServiceImpl implements Order_bdService{
	
	private Order_bdDAO order_bdDAO;
	public void setOrder_bdDAO(Order_bdDAO order_bdDAO) {
		this.order_bdDAO = order_bdDAO;
	}
	@Override
	public void regist(Order_bdVO order_bd) throws SQLException {
		order_bdDAO.regist(order_bd);
	}
	
}
