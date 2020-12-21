package com.spring.HOT.dao;

import java.sql.SQLException;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.CartVO;

public class CartDAOImpl implements CartDAO{

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public int getCartSizeById(String id) throws SQLException {
		int cartSize = sqlSession.selectOne("Cart-Mapper.getCartSizeById", id);
		return cartSize;
	}
	@Override
	public List<CartVO> getCartListById(String id) throws SQLException {
		List<CartVO> cartList = sqlSession.selectList("Cart-Mapper.getCartListById", id);
		return cartList;
	}
	@Override
	public void registBasket(CartVO cart) throws SQLException {
		sqlSession.update("Cart-Mapper.registBasket", cart);
	}

}
