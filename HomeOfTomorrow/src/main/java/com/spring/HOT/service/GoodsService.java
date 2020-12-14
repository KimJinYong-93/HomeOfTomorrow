package com.spring.HOT.service;

import java.sql.SQLException;
import java.util.List;

import com.spring.HOT.dto.GoodsVO;

public interface GoodsService {
	
	List<GoodsVO> goodsListTop12()throws SQLException;

}
