package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	@Override
	public void remove(String id, String gcode, String op_choose) throws SQLException {
		Map<String, String> datas = new HashMap<String, String>();
		
		datas.put("id", id);
		datas.put("gcode", gcode);
		datas.put("op_choose", op_choose);
		
		sqlSession.update("Cart-Mapper.removeBasket", datas);
		
	}

}
