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

}
