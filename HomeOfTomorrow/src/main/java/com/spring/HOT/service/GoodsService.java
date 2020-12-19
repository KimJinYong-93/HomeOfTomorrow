package com.spring.HOT.service;

import java.sql.SQLException;

import java.util.List;

import com.spring.HOT.dto.GoodsVO;

public interface GoodsService {
	
	List<GoodsVO> goodsListTop12()throws SQLException;

	void regist(GoodsVO goods) throws SQLException;

	List<GoodsVO> getGoodsAllList() throws SQLException;

	List<GoodsVO> getGoodsListByCategory(String cg_code) throws SQLException;

}
