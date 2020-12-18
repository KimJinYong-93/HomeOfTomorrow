package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.Order_bdVO;

public interface Order_bdDAO {
	
	List<Order_bdVO> selectOrder_bd(String ocode)throws SQLException;

}
