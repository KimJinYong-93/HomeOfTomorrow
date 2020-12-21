package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	@Override
	public Order_bdVO selectOrder_bdByRV(String ocode, String gcode) throws SQLException {
		
		Map<String, String> data = new HashMap<String, String>();
		
		data.put("ocode", ocode);
		data.put("gcode", gcode);
		
		Order_bdVO order_bd = sqlSession.selectOne("Order_bd-Mapper.selectOrder_bdByRV", data);
		
		return order_bd;
	}

}
