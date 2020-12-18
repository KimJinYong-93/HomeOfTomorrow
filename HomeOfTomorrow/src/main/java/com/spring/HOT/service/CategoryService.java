package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.CategoryVO;

public interface CategoryService {
	
	// 키워드로 검색해서 카테고리 Name 리스트 가져오는 메소드
	List<CategoryVO> getCategoryList(String keyword) throws SQLException;
	
}
