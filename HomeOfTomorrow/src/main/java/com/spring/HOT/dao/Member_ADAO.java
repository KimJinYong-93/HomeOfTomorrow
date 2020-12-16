package com.spring.HOT.dao;

import java.sql.SQLException;

import com.spring.HOT.dto.MemberAVO;

public interface Member_ADAO {
	
	MemberAVO selectMemberAById(String id)throws SQLException;
}
