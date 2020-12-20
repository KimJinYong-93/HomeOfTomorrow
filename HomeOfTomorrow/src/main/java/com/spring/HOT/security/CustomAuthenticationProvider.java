package com.spring.HOT.security;

import java.sql.SQLException;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;

import com.spring.HOT.dao.MemberDAO;
import com.spring.HOT.dto.MemberVO;

public class CustomAuthenticationProvider implements AuthenticationProvider{

	private MemberDAO memberDAO;
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		String login_id = (String) auth.getPrincipal();	//로그인 시도한 ID를 가져온다.
		String login_pwd = (String) auth.getCredentials();	// 로그인 시도한 Password를 가져온다.
		
		MemberVO member = null;
		
		try {
			member = memberDAO.selectMemberById(login_id);
		} catch (SQLException e) {
			throw new AuthenticationServiceException("Internal server error!");
		}
		
		if(member != null && login_pwd.equals(member.getPwd())) {	//로그인 성공
			
			User authUser = new User(member);

			// 스프링 시큐리티 내부 클래스로 인증 토큰 생성한다.
			UsernamePasswordAuthenticationToken result =
					new UsernamePasswordAuthenticationToken(authUser.getUsername(), authUser.getPassword(), authUser.getAuthorities());
			// 전달할 내용을 설정한 후
			result.setDetails(authUser);
			// 리턴한다. default-target-url 로 전송된다.
			return result;
		}else {	// 로그인 실패
			throw new BadCredentialsException("Bad ID or Password");
		}
		
	}

	@Override
	public boolean supports(Class<?> authentication) {
		/* UsernamePasswordAuthenticationToken 리턴할 때 파라미터와 같은 레퍼런스인지 비교를 하고 리턴을 한다.
		 * default-target-url 로 전송된다. */
		return authentication.equals(UsernamePasswordAuthenticationToken.class);	// String의 equals 가 아니라 같은 클래스인지 비교하는 것
	}
	
	
	
}
