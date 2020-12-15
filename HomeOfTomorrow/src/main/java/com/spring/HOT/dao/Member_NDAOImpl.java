package com.spring.HOT.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.MemberNVO;

public class Member_NDAOImpl implements Member_NDAO {
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public MemberNVO selectMemberNById(String id) throws SQLException {
		MemberNVO memberN = sqlSession.selectOne("MemberN-Mapper.selectMemberNById", id);
		return memberN;
	}


	@Override
	public void regist(MemberNVO memberN) throws SQLException {
		sqlSession.update("MemberN-Mapper.insertMemberN", memberN);
		
	}


	@Override
	public MemberNVO getMemberNByNickname(String nickname) throws SQLException {
		MemberNVO memberN = sqlSession.selectOne("MemberN-Mapper.selectMemberNByNickname", nickname);
		return memberN;
	}

}
