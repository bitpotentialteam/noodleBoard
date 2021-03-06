package org.noodle.security;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.noodle.domain.MemberVO;
import org.noodle.service.MemberService;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

public class SuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	static final int DEFAULT_MAX_AGE = 60 * 60 * 24 * 7;

	private int maxAge = DEFAULT_MAX_AGE;

	public void setMaxAge(int maxAge) {
		this.maxAge = maxAge;
		
	}

	private MemberService mservice;

	public void setSerivce(MemberService serivce) {
		this.mservice = serivce;
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {

		super.onAuthenticationSuccess(request, response, auth);
		User user = (User) auth.getPrincipal();

		MemberVO memberVO = null;
		try {
			memberVO = mservice.read1(user.getUsername());
			
			request.getSession().setAttribute("memberVO", memberVO);

		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("login success handler......called............." + user.toString());

		System.out.println("login success handler......called.............");

		System.out.println("login success handler......called.............");

		System.out.println("login success handler......called.............");

	}

}