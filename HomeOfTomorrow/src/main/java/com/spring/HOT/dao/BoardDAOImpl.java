package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.BoardVO;

public class BoardDAOImpl implements BoardDAO{
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	@Override
	public List<BoardVO> selectMyQnA(String id) throws SQLException {
		
		List<BoardVO> myQnAList= null;
		myQnAList = sqlSession.selectList("Board-Mapper.selectMyQnA", id);
		
		return myQnAList;
	}
	
	

}
