package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dto.MemberNVO;

public interface Member_NService {
	
	MemberNVO getMemberNById(String id)throws SQLException;

	void regist(MemberNVO memberN) throws SQLException;

	MemberNVO getMemberNByNickname(String nickname) throws SQLException;
	
	void modify(MemberNVO memberN) throws SQLException;

}
