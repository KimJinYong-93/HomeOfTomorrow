package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dto.BoardVO;

public interface BoardDAO {
	
	List<BoardVO> selectMyQnA(String id)throws SQLException;
	
	List<BoardVO> getBoardList(SearchCriteria cri, String cg_code) throws SQLException;

	List<BoardVO> selectBoardCriteria(SearchCriteria cri, String cg_code) throws SQLException;

	int selectBoardCriteriaTotalCount(SearchCriteria cri, String cg_code) throws SQLException;

}
