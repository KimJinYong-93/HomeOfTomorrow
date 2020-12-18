package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dao.BoardDAO;
import com.spring.HOT.dto.BoardVO;

public class BoardServiceImpl implements BoardService {
	
	private BoardDAO boardDAO;
	public void setBoardDAO(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}
	
	
	
	@Override
	public List<BoardVO> getMyQnAList(String id) throws SQLException {
		List<BoardVO> myQnAList = null;
		myQnAList =	boardDAO.selectMyQnA(id);
		return myQnAList;
	}
	
	
	
	

}
