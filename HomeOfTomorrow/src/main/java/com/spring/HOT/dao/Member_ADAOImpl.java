package com.spring.HOT.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.MemberAVO;

public class Member_ADAOImpl implements Member_ADAO{
	
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public MemberAVO selectMemberAById(String id) throws SQLException {
		MemberAVO memberA = sqlSession.selectOne("MemberA-Mapper.selectMemberAById", id);
		return memberA;
	}

}
