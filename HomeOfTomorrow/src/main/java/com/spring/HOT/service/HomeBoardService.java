package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.HomeBoardVO;

public interface HomeBoardService {
	
	List<HomeBoardVO> homeBoardTop3()throws SQLException;

}
