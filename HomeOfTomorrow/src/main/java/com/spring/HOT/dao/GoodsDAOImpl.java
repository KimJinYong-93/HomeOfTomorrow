package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.GoodsVO;

public class GoodsDAOImpl implements GoodsDAO{
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	@Override
	public List<GoodsVO> selectTop12() throws SQLException {
		
		List<GoodsVO> selectTop12 = null;
		selectTop12 = sqlSession.selectList("Goods-Mapper.selectTop12");
		return selectTop12;
		
		
	}


	@Override
	public GoodsVO selectGoods(String gcode) throws SQLException {
		GoodsVO goods = sqlSession.selectOne("Goods-Mapper.selectGoods", gcode);
		return goods;
	}
	
	
	

}
