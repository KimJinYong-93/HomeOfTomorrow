package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.CartVO;
import com.spring.HOT.dto.CategoryVO;

public interface CartService {

	int getCartSizeById(String id) throws SQLException;

	List<CartVO> getCartListById(String id) throws SQLException;

	void registBasket(CartVO cart) throws SQLException;

	void remove(String id, String gcode, String op_choose) throws SQLException;
	
}
