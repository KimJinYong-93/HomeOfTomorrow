package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.BoardVO;

public interface BoardDAO {
	
	List<BoardVO> selectMyQnA(String id)throws SQLException;

}
