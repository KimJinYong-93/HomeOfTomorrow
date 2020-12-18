package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.CategoryVO;
import com.spring.HOT.dto.MenuVO;

public class MenuDAOImpl implements MenuDAO{
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//메인메뉴 띄우기
	public List<MenuVO> mainMenuList()throws SQLException{
		List<MenuVO> mainMenu = null;
		mainMenu = sqlSession.selectList("Menu-Mapper.selectMainMenu");
		return mainMenu;
		
	}

	@Override
	public List<MenuVO> subMenuList(String mCode) throws SQLException {
		List<MenuVO> subMenu = null;
		subMenu = sqlSession.selectList("Menu-Mapper.selectSubMenu", mCode);
		return subMenu;
	}

}
