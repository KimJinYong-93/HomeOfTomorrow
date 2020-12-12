package com.spring.HOT.dao;

import java.sql.SQLException;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dto.MemberVO;


public class MemberDAOImpl implements MemberDAO{
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public List<MemberVO> selectMemberList(SearchCriteria cri) throws SQLException {
		
		int offset = cri.getPageStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<MemberVO> memberList = null;
		memberList = sqlSession.selectList("Member-Mapper.selectSearchMemberList", cri, rowBounds);
				
		return memberList;
	}

	@Override
	public int selectMemberListCount(SearchCriteria cri) throws SQLException {
		int count = 0;
		
		count = sqlSession.selectOne("Member-Mapper.selectSearchMemberListCount", cri);
		
		return count;
	}

	@Override
	public MemberVO selectMemberById(String id) throws SQLException {
		MemberVO member = sqlSession.selectOne("Member-Mapper.selectMemberById", id);
		return member;
	}

	@Override
	public void insertMember(MemberVO member) throws SQLException {
		sqlSession.update("Member-Mapper.insertMember", member);
	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
		sqlSession.update("Member-Mapper.updateMember", member);
		
	}

	@Override
	public void deleteMember(String id) throws SQLException {
		sqlSession.update("Member-Mapper.deleteMember", id);
		
	}

	@Override
	public void disabledMember(String id) throws SQLException {
		sqlSession.update("Member-Mapper.disabledMember", id);
		
	}

	@Override
	public void enabledMember(String id) throws SQLException {
		sqlSession.update("Member-Mapper.enalbleMember", id);
		
	};
	
	
	
}
