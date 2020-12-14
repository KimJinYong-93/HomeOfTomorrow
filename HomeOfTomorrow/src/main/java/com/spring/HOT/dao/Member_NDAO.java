package com.spring.HOT.dao;

import java.sql.SQLException;

import com.spring.HOT.dto.MemberNVO;

public interface Member_NDAO {
	
	MemberNVO selectMemberNById(String id)throws SQLException;
	
	void regist(MemberNVO memberN) throws SQLException;
	
	MemberNVO getMemberNByNickname(String nickname) throws SQLException;

}
