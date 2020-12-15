package com.spring.HOT.dao;

import java.sql.SQLException;

import com.spring.HOT.dto.MemberCVO;

public interface Member_CDAO {
	
	void regist(MemberCVO memberC) throws SQLException;
	
	MemberCVO selectMemberCById(String id)throws SQLException;
	
}
