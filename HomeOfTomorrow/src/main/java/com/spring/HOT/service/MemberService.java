package com.spring.HOT.service;

import java.sql.SQLException;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.exception.NotFoundIDException;
import com.spring.HOT.exception.invalidPasswordException;

public interface MemberService {
	
	//로그인
	void login(String id, String pwd, HttpSession session) throws SQLException, NotFoundIDException, invalidPasswordException;
	
	//회원 리스트 조회
	List<MemberVO> selectMemberList(SearchCriteria cri) throws SQLException;
	Map<String, Object> getSearchMemberList(SearchCriteria cri) throws SQLException;
	
	
	//회원정보 조회
	MemberVO getMember(String id) throws SQLException;
	
	//회원등록
	void regist(MemberVO member) throws SQLException;
	
	//회원수정
	void modify(MemberVO member) throws SQLException;
	
	//회원삭제
	void remove(String id) throws SQLException;
	
	//회원정지
	void disabled(String id) throws SQLException;
	
	//회원 활성화
	void enabled(String id) throws SQLException;
	
}
