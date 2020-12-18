package com.spring.HOT.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dto.BoardVO;

public class BoardDAOImpl implements BoardDAO {
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<BoardVO> selectMyQnA(String id) throws SQLException {
		
		List<BoardVO> myQnAList= null;
		myQnAList = sqlSession.selectList("Board-Mapper.selectMyQnA", id);
		
		return myQnAList;
	}

	@Override
	public List<BoardVO> getBoardList(SearchCriteria cri, String cg_code) throws SQLException {
		List<BoardVO> boardList = sqlSession.selectList("Board-Mapper.selectBoardListByCgcode", cg_code);
		return boardList;
	}	

	@Override
	public List<BoardVO> selectBoardCriteria(SearchCriteria cri, String cg_code) throws SQLException {
		
		int offset = cri.getPageStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		Map<String, Object> datas = new HashMap<String, Object>();
		datas.put("cri", cri);
		datas.put("cg_code", cg_code);
		
		List<BoardVO> boardList = sqlSession.selectList("Board-Mapper.selectSearchBoardList", datas, rowBounds);
		return boardList;
	}

	@Override
	public int selectBoardCriteriaTotalCount(SearchCriteria cri, String cg_code) throws SQLException {
		
		Map<String, Object> datas = new HashMap<String, Object>();
		datas.put("cri", cri);
		datas.put("cg_code", cg_code);
		
		int count = sqlSession.selectOne("Board-Mapper.selectSearchBoardListCount", datas);
		
		return count;
	}
	
	

}
