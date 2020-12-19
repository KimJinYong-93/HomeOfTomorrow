package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dto.PaymentVO;

public interface PaymentService {
	
	PaymentVO getPayment(String ocode)throws SQLException;

}
