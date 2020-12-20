package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.CartVO;
import com.spring.HOT.dto.CategoryVO;

public interface CartDAO {
	
	int getCartSizeById(String id) throws SQLException;
	
	List<CartVO> getCartListById(String id) throws SQLException;
	
	void registBasket(CartVO cart) throws SQLException;
	
}
