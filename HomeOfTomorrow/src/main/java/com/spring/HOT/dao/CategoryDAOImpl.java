package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.CategoryVO;

public class CategoryDAOImpl implements CategoryDAO{

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<CategoryVO> getCategoryList(String keyword) throws SQLException {
		List<CategoryVO> categoryList = null;
		categoryList = sqlSession.selectList("Category-Mapper.selectCategoryList", keyword);
		return categoryList;
	}

}
