package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.HomeBoardVO;

public interface HomeBoardService {
	
	List<HomeBoardVO> homeBoardTop3()throws SQLException;
	
	List<HomeBoardVO> getMyhomeBoard(String id)throws SQLException;
	
	int regist(HomeBoardVO homeBoard)throws SQLException;
	
	HomeBoardVO getHomeBoard(int hno)throws SQLException;
	
	List<HomeBoardVO> getHomeBoardList()throws SQLException;
	
	void deleteHomeBoard(int hno)throws SQLException;

}
