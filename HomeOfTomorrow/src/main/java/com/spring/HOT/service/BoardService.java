package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dto.BoardVO;

public interface BoardService {
	
	List<BoardVO> getMyQnAList(String id)throws SQLException;

	Map<String, Object> getBoardList(SearchCriteria cri, String cg_code) throws SQLException;

	BoardVO getBoardForModify(int bno) throws SQLException;

	BoardVO getBoard(int bno) throws SQLException;

}
