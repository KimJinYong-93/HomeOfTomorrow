package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dao.MenuDAO;
import com.spring.HOT.dto.MenuVO;

public class MenuServiceImpl implements MenuService {

	private MenuDAO menuDAO;
	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}
	@Override
	public List<MenuVO> mainMenu() throws SQLException {
		List<MenuVO> mainMenuList = menuDAO.mainMenuList();
		return mainMenuList;
	}
	@Override
	public List<MenuVO> subMenuByMcode(String mCode) throws SQLException {
		List<MenuVO> subMenuList = menuDAO.subMenuList(mCode);
		return subMenuList;
	}
	
	
}
