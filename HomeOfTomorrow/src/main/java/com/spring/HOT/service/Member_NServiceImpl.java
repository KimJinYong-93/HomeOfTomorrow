package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dao.Member_NDAO;
import com.spring.HOT.dto.MemberNVO;

public class Member_NServiceImpl implements Member_NService{
	
	private Member_NDAO member_NDAO;
	public void setMember_NDAO(Member_NDAO member_NDAO) {
		this.member_NDAO = member_NDAO;
	}

	@Override
	public MemberNVO getMemberNById(String id) throws SQLException {
		
		MemberNVO memberN = member_NDAO.selectMemberNById(id);
		return memberN;
	}

	@Override
	public void regist(MemberNVO memberN) throws SQLException {
		member_NDAO.regist(memberN);
		
	}

	@Override
	public MemberNVO getMemberNByNickname(String nickname) throws SQLException {
		MemberNVO memberN = member_NDAO.getMemberNByNickname(nickname);
		return memberN;
	}

}
