package com.spring.HOT.dao;

import java.sql.SQLException;

import java.util.List;

import com.spring.HOT.dto.GoodsVO;

public interface GoodsDAO {
	
	List<GoodsVO> selectTop12()throws SQLException;
	
	GoodsVO selectGoods(String gcode)throws SQLException;
	
	void regist(GoodsVO goods) throws SQLException;
	
	List<GoodsVO> getGoodsAllList(String cg_code) throws SQLException;
	
	List<GoodsVO> getGoodsListByCategory(String cg_code) throws SQLException;

	void increasViewcnt(String gcode) throws SQLException;

}
