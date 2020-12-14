package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.MenuVO;

public interface MenuDAO {
	
	List<MenuVO> mainMenuList() throws SQLException;
	List<MenuVO> subMenuList(String mCode) throws SQLException;
	

}
