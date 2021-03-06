
package com.spring.HOT.service;

import java.sql.SQLException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.spring.HOT.command.PageMaker;
import com.spring.HOT.command.SearchCriteria;
import com.spring.HOT.dao.MemberDAO;
import com.spring.HOT.dao.Member_ADAO;
import com.spring.HOT.dao.Member_CDAO;
import com.spring.HOT.dao.Member_NDAO;
import com.spring.HOT.dto.MemberAVO;
import com.spring.HOT.dto.MemberCVO;
import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.exception.NotFoundIDException;
import com.spring.HOT.exception.invalidPasswordException;
import com.spring.HOT.security.User;


public class MemberServiceImpl implements MemberService{

	private MemberDAO memberDAO; // = MemberDAOImpl.getInstance();
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	private Member_NDAO memberNDAO;
	public void setMemberNDAO(Member_NDAO memberNDAO) {
		this.memberNDAO = memberNDAO;
	}
	
	private Member_CDAO memberCDAO;
	public void setMemberCDAO(Member_CDAO memberCDAO) {
		this.memberCDAO = memberCDAO;
	}
	
	private Member_ADAO memberADAO;
	public void setMemberADAO(Member_ADAO memberADAO) {
		this.memberADAO = memberADAO;
	}
	
	
	
	
	@Override
	public void login(String id, String pwd, HttpSession session) throws SQLException, NotFoundIDException, invalidPasswordException {
		MemberVO member = memberDAO.selectMemberById(id);
		if(member == null) throw new NotFoundIDException();
		if(!pwd.equals(member.getPwd())) throw new invalidPasswordException();
		
		if(member.getAuthority().equals("ROLE_USER")) {
			MemberNVO memberN = memberNDAO.selectMemberNById(id);
			session.setAttribute("loginUserDetail", memberN);
		}else if(member.getAuthority().equals("ROLE_COMPANY")) {
			MemberCVO memberC = memberCDAO.selectMemberCById(id);
			session.setAttribute("loginUserDetail", memberC);
		}else {
			MemberAVO memberA = memberADAO.selectMemberAById(id);
			session.setAttribute("loginUserDetail", memberA);
		}
		
		session.setAttribute("loginUser", member);
		session.setMaxInactiveInterval(6*60);
		
	}

	@Override
	public List<MemberVO> selectMemberList(SearchCriteria cri) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> getSearchMemberList(SearchCriteria cri) throws SQLException {
		
		List<MemberVO> memberList = memberDAO.selectMemberList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(memberDAO.selectMemberListCount(cri));
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("memberList", memberList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public MemberVO getMember(String id) throws SQLException {
		MemberVO member = null;
		member = memberDAO.selectMemberById(id);
		
		return member;
	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		memberDAO.insertMember(member);
		
	}

	@Override
	public void modify(MemberVO member) throws SQLException {
		memberDAO.updateMember(member);
		
	}

	@Override
	public void remove(String id) throws SQLException {
		memberDAO.deleteMember(id);
	}

	@Override
	public void disabled(String id) throws SQLException {
		memberDAO.disabledMember(id);
	}

	@Override
	public void enabled(String id) throws SQLException {
		memberDAO.enabledMember(id);
	}

}

