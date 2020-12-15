package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.HomeBoardVO;

public interface HomeBoardDAO {
	
	List<HomeBoardVO> selectHomeBoardTop3()throws SQLException;

}
