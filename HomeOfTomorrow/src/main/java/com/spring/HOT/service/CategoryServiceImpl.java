package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dao.CategoryDAO;
import com.spring.HOT.dto.CategoryVO;

public class CategoryServiceImpl implements CategoryService{
	
	private CategoryDAO categoryDAO;
	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}
	
	@Override
	public List<CategoryVO> getCategoryList(String keyword) throws SQLException {
		List<CategoryVO> categoryList = categoryDAO.getCategoryList(keyword);
		return categoryList;
	}

}
