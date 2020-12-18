package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.OrdersVO;

public class OrdersDAOImpl implements OrdersDAO{
	
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public List<OrdersVO> selectOrders(String id) throws SQLException {
		
		List<OrdersVO> orders = sqlSession.selectList("Orders-Mapper.selectOrders", id);
		
		return orders;
	}
	
	

}
