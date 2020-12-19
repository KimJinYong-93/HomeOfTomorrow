package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dao.GoodsDAO;
import com.spring.HOT.dto.GoodsVO;

public class GoodsServiceImpl implements GoodsService {
	
	private GoodsDAO goodsDAO;
	public void setGoodsDAO(GoodsDAO goodsDAO) {
		this.goodsDAO = goodsDAO;
	}
	@Override
	public List<GoodsVO> goodsListTop12() throws SQLException {
		
		List<GoodsVO> goodsListTop12 =  goodsDAO.selectTop12();
		return goodsListTop12;
	}
	@Override
	public void regist(GoodsVO goods) throws SQLException {
		goodsDAO.regist(goods);
		
	}
	
	

}
