package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dao.PaymentDAO;
import com.spring.HOT.dto.PaymentVO;

public class PaymentServiceImpl implements PaymentService{
	
	private PaymentDAO paymentDAO;
	public void setPaymentDAO(PaymentDAO paymentDAO) {
		this.paymentDAO = paymentDAO;
	}
	
	
	@Override
	public PaymentVO getPayment(String ocode) throws SQLException {
		PaymentVO payment =  paymentDAO.selectPayment(ocode);
		return payment;
	}
	
	

}
