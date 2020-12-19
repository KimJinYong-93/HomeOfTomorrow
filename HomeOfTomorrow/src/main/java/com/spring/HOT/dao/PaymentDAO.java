package com.spring.HOT.dao;

import java.sql.SQLException;

import com.spring.HOT.dto.PaymentVO;

public interface PaymentDAO {
	
	PaymentVO selectPayment(String ocode)throws SQLException;

}
