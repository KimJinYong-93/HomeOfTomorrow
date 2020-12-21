package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.HomeBoardVO;

public class HomeBoardDAOImpl implements HomeBoardDAO{
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<HomeBoardVO> selectHomeBoardTop3() throws SQLException {
		List<HomeBoardVO> selectTop3= null;
		selectTop3 = sqlSession.selectList("HomeBoard-Mapper.selectTop3");
		return selectTop3;
	}

	@Override
	public List<HomeBoardVO> selectMyhomeBoard(String id) throws SQLException {
		List<HomeBoardVO> selectMyhome = null;
		selectMyhome = sqlSession.selectList("HomeBoard-Mapper.selectMyhomeBoard", id);
		return selectMyhome;
	}

	@Override
	public int insertHomeBoard(HomeBoardVO homeBoard) throws SQLException {
		
		int hno = sqlSession.selectOne("HomeBoard-Mapper.selectNextsq");
		homeBoard.setHno(hno);
		
		sqlSession.update("HomeBoard-Mapper.insertHomeBoard", homeBoard);
		
		
		return hno;
	}

	@Override
	public HomeBoardVO selectHomeBoard(int hno) throws SQLException {
		
		HomeBoardVO homeBoard = sqlSession.selectOne("HomeBoard-Mapper.selectHomeBoard", hno);
		return homeBoard;
	}

	@Override
	public List<HomeBoardVO> selectHomeBoardList() throws SQLException {
		
		List<HomeBoardVO> homeBoardList = sqlSession.selectList("HomeBoard-Mapper.selectHomeBoardList");
		
		return homeBoardList;
	}

	@Override
	public void deleteHomeBoard(int hno) throws SQLException {
		sqlSession.delete("HomeBoard-Mapper.delete", hno);
		
	}
	
	

}
