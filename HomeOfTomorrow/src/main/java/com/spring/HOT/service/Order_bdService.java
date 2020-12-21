package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dto.Order_bdVO;

public interface Order_bdService {

	void regist(Order_bdVO order_bd) throws SQLException;

}
