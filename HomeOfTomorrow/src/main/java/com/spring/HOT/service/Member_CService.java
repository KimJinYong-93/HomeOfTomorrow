package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dto.MemberCVO;

public interface Member_CService {
	
	void regist(MemberCVO memberC) throws SQLException;
	
}
