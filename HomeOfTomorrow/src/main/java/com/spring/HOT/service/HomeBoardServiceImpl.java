package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dao.HomeBoardDAO;
import com.spring.HOT.dto.HomeBoardVO;

public class HomeBoardServiceImpl  implements HomeBoardService{
	
	private HomeBoardDAO homeBoardDAO;
	public void setHomeBoardDAO(HomeBoardDAO homeBoardDAO) {
		this.homeBoardDAO = homeBoardDAO;
	}
	
	@Override
	public List<HomeBoardVO> homeBoardTop3() throws SQLException {
		List<HomeBoardVO> homeBoardTop3 = null;
		homeBoardTop3 = homeBoardDAO.selectHomeBoardTop3();
		
		return homeBoardTop3;
	}

	@Override
	public List<HomeBoardVO> getMyhomeBoard(String id) throws SQLException {
		List<HomeBoardVO> getMyhomeBoard = null;
		getMyhomeBoard = homeBoardDAO.selectMyhomeBoard(id);
		
		return getMyhomeBoard;
	}

	@Override
	public int regist(HomeBoardVO homeBoard) throws SQLException {
		int hno = homeBoardDAO.insertHomeBoard(homeBoard);
		return hno;
	}

	@Override
	public HomeBoardVO getHomeBoard(int hno) throws SQLException {
		
		HomeBoardVO homeBoard = homeBoardDAO.selectHomeBoard(hno);
		return homeBoard;
	}

	@Override
	public List<HomeBoardVO> getHomeBoardList() throws SQLException {
		List<HomeBoardVO> homeBoardList = homeBoardDAO.selectHomeBoardList();
		return homeBoardList;
	}

	@Override
	public void deleteHomeBoard(int hno) throws SQLException {
		homeBoardDAO.deleteHomeBoard(hno);
		
	}

}
