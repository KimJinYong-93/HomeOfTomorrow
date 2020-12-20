package com.spring.HOT.service;

import java.sql.SQLException;

import java.util.List;

import com.spring.HOT.dao.CartDAO;
import com.spring.HOT.dto.CartVO;

public class CartServiceImpl implements CartService{
	
	private CartDAO cartDAO;
	public void setCartDAO(CartDAO cartDAO) {
		this.cartDAO = cartDAO;
	}
	@Override
	public int getCartSizeById(String id) throws SQLException {
		int cartSize = cartDAO.getCartSizeById(id);
		return cartSize;
	}
	@Override
	public List<CartVO> getCartListById(String id) throws SQLException {
		List<CartVO> cartList = cartDAO.getCartListById(id);
		return cartList;
	}
	@Override
	public void registBasket(CartVO cart) throws SQLException {
		cartDAO.registBasket(cart);
	}

}
