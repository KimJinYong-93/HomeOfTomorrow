package com.spring.HOT.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.HOT.dto.PaymentVO;

public class PaymentDAOImpl implements PaymentDAO{
	//SqlSessionFactory
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public PaymentVO selectPayment(String ocode) throws SQLException {
		PaymentVO payment = sqlSession.selectOne("Payment-Mapper.selectPayment", ocode);
		return payment;
	}
	@Override
	public void regist(PaymentVO pay) throws SQLException {
		sqlSession.update("Payment-Mapper.registPayment", pay);
		
	}
}
