package com.spring.HOT.dao;

import java.sql.SQLException;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dto.GoodsVO;

public class GoodsDAOImpl implements GoodsDAO{
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<GoodsVO> selectTop12() throws SQLException {
		
		List<GoodsVO> selectTop12 = null;
		selectTop12 = sqlSession.selectList("Goods-Mapper.selectTop12");
		return selectTop12;
	}

	@Override
	public GoodsVO selectGoods(String gcode) throws SQLException {
		GoodsVO goods = sqlSession.selectOne("Goods-Mapper.selectGoods", gcode);
		return goods;
	}

	@Override
	public void regist(GoodsVO goods) throws SQLException {
		sqlSession.update("Goods-Mapper.registGoods", goods);
	}
	
	@Override
	public List<GoodsVO> getGoodsAllList(String cg_code) throws SQLException {
		List<GoodsVO> goodsList = sqlSession.selectList("Goods-Mapper.getGoodsAllList", cg_code);
		return goodsList;
	}

	@Override
	public List<GoodsVO> getGoodsListByCategory(String cg_code) throws SQLException {
		List<GoodsVO> goodsList = sqlSession.selectList("Goods-Mapper.getGoodsListByCategory", cg_code);
		return goodsList;
	}

	@Override
	public void increasViewcnt(String gcode) throws SQLException {
		sqlSession.update("Goods-Mapper.increaseViewcnt", gcode);
		
	}

	@Override
	public Map<String, Object> getGoodsList(String cg_code, SearchCriteria cri) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GoodsVO> selectGoodsListPage(String cg_code, SearchCriteria cri) throws SQLException {
		int offset = cri.getPageStartRowNum();
		int limit = cri.getPerPageNum() + 2;
		RowBounds row = new RowBounds(offset, limit);
		
		List<GoodsVO> goodsList = sqlSession.selectList("Goods-Mapper.selectGoodsList", cg_code, row);
		
		return goodsList;
	}

	@Override
	public int countGoods(String cg_code) throws SQLException {
		int count = sqlSession.selectOne("Goods-Mapper.countGoods", cg_code);
		return count;
	}
	

}
