package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dto.MemberNVO;

public interface Member_NService {
	
	MemberNVO getMemberNById(String id)throws SQLException;

}
