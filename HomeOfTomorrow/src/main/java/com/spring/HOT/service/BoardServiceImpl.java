package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.HOT.command.PageMaker;
import com.spring.HOT.command.SearchCriteria;
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

	@Override
	public Map<String, Object> getBoardList(SearchCriteria cri, String cg_code) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<BoardVO> boardList = boardDAO.selectBoardCriteria(cri, cg_code);
		
		int totalCount = boardDAO.selectBoardCriteriaTotalCount(cri, cg_code);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("boardList", boardList);
		dataMap.put("pageMaker", pageMaker);
		dataMap.put("listSize", totalCount);
		
		return dataMap;
	}

	@Override
	public BoardVO getBoardForModify(int bno) throws SQLException {
		BoardVO board = boardDAO.getBoardForModify(bno);
		return board;
	}

	@Override
	public BoardVO getBoard(int bno) throws SQLException {
		BoardVO board = boardDAO.selectBoardByBno(bno);
		boardDAO.increaseViewCnt(bno);
		return board;
	}
	

}
