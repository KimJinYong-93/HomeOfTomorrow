package com.spring.HOT.service;

import com.spring.HOT.dao.Member_ADAO;

public class Member_AServiceImpl implements Member_AService {

	
	private Member_ADAO member_ADAO;
	public void setMember_ADAO(Member_ADAO member_ADAO) {
		this.member_ADAO = member_ADAO;
	}
}
