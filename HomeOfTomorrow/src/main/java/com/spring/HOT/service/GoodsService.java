package com.spring.HOT.service;

import java.sql.SQLException;

import java.util.List;
import java.util.Map;

import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dto.GoodsVO;

public interface GoodsService {
	
	List<GoodsVO> goodsListTop12()throws SQLException;

	void regist(GoodsVO goods) throws SQLException;

	List<GoodsVO> getGoodsAllList(String cg_code) throws SQLException;

	List<GoodsVO> getGoodsListByCategory(String cg_code) throws SQLException;

	GoodsVO selectGoods(String gcode) throws SQLException;

	Map<String, Object> getGoodsList(String cg_code, SearchCriteria cri) throws SQLException;

}
