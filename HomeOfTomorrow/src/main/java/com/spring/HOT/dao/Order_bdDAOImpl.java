package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.Order_bdVO;

public class Order_bdDAOImpl implements Order_bdDAO{
	
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public List<Order_bdVO> selectOrder_bd(String ocode) throws SQLException {
		
		List<Order_bdVO> order_bdList = sqlSession.selectList("Order_bd-Mapper.selectOrder_bd", ocode);
		
		return order_bdList;
	}

}
