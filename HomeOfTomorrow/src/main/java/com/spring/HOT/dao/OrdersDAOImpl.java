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
	@Override
	public OrdersVO selectOrdersByOcode(String ocode) throws SQLException {
		
		OrdersVO order = sqlSession.selectOne("Orders-Mapper.selectOrdersByOcode", ocode);
		
		return order;
	}
	@Override
	public int selectOrdersCount(String id) throws SQLException {
		
		int count = sqlSession.selectOne("Orders-Mapper.selectOrdersCount", id);
		
		return count;
	}
	@Override
	public void regist(OrdersVO orders) throws SQLException {
		sqlSession.update("Orders-Mapper.registOrders", orders);
	}
	
	

}
