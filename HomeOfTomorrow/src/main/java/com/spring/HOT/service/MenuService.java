package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.spring.HOT.dto.MenuVO;

public interface MenuService {

	List<MenuVO> mainMenu(HttpSession session)throws SQLException;
	List<MenuVO>subMenuByMcode(String mCode)throws SQLException;
}
