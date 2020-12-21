package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.HomeBoardVO;

public interface HomeBoardDAO {
	
	List<HomeBoardVO> selectHomeBoardTop3()throws SQLException;
	
	List<HomeBoardVO> selectMyhomeBoard(String id)throws SQLException;
	
	int insertHomeBoard(HomeBoardVO homeBoard)throws SQLException;
	
	HomeBoardVO selectHomeBoard(int hno)throws SQLException;
	
	List<HomeBoardVO> selectHomeBoardList()throws SQLException;
	
	void deleteHomeBoard(int hno)throws SQLException;

}
