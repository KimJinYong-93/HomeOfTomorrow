package com.spring.HOT.dao;

import java.sql.SQLException;

import com.spring.HOT.dto.MemberNVO;

public interface Member_NDAO {
	
	MemberNVO selectMemberNById(String id)throws SQLException;

}
