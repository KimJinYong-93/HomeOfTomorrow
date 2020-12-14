package com.spring.HOT.service;

import java.sql.SQLException;

import com.spring.HOT.dao.Member_CDAO;
import com.spring.HOT.dto.MemberCVO;

public class Member_CServiceImpl implements Member_CService {

	private Member_CDAO member_CDAO;
	public void setMember_CDAO(Member_CDAO member_CDAO) {
		this.member_CDAO = member_CDAO;
	}
	
	@Override
	public void regist(MemberCVO memberC) throws SQLException {
		member_CDAO.regist(memberC);
	}

}
