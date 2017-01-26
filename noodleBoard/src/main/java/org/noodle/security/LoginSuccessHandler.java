package org.noodle.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	   static final int DEFAULT_MAX_AGE = 60 * 60 * 24 * 7;

	   private int maxAge = DEFAULT_MAX_AGE;

	   public void setMaxAge(int maxAge) {
	      this.maxAge = maxAge;
	   }

	   @Override
	   public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
	         throws IOException, ServletException {
	
	      String remember = request.getParameter("username");

	      System.out.println("remember "+remember);
	      if (remember != null) {

	         String userid = auth.getName();
	         System.out.println("userid"+userid);
	         Cookie cookie = new Cookie("username", userid);
	         System.out.println("cookie"+cookie);
	         cookie.setMaxAge(maxAge);
	         response.addCookie(cookie);

	      } else {
	         Cookie cookie = new Cookie("username", "");
	         cookie.setMaxAge(0);
	         response.addCookie(cookie);

	      }
	      response.sendRedirect("/");
	   }
}