package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.BoardVO;

public interface BoardService {
	
	List<BoardVO> getMyQnAList(String id)throws SQLException;

}
