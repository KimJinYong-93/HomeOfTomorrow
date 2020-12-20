package com.spring.HOT.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.MemberCVO;

public class Member_CDAOImpl implements Member_CDAO {

	//SqlSessionFactory
		private SqlSession sqlSession;
		public void setSqlSession(SqlSession sqlSession) {
			this.sqlSession = sqlSession;
		}
	
	@Override
	public void regist(MemberCVO memberC) throws SQLException {
		sqlSession.update("MemberC-Mapper.insertMemberC", memberC);
	}

	@Override
	public MemberCVO selectMemberCById(String id) throws SQLException {
		MemberCVO memberC = sqlSession.selectOne("MemberC-Mapper.selectMemberCById", id);
		return memberC;
	}

	@Override
	public MemberCVO getMemberCByCid(String cid) throws SQLException {
		MemberCVO memberC = sqlSession.selectOne("MemberC-Mapper.getMemberCByCid", cid);
		return memberC;
	}

}
