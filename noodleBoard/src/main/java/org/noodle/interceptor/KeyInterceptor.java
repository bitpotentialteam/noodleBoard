package org.noodle.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class KeyInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(KeyInterceptor.class);

	
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		logger.info("KeyInterceptor postHandle called.....");
		
		HttpSession session = request.getSession();
		
		ModelMap modelMap = modelAndView.getModelMap();
		
		Object clientKey = modelMap.get("CLIENTKEY");
		
		if(clientKey != null){
			logger.info("ClientKey not null.....");
			
			session.setAttribute("ACCESSKEY", clientKey);
		}
		
		// Cookie처리 추가 후 Cookie 제어문....
	
	}// end postHandle



	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		logger.info("KeyInterceptor preHandle called.....");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("ACCESSKEY") != null){
			logger.info("Remove ACCESSKEY");
			
			session.removeAttribute("ACCESSKEY");
			
		}
		return true;
	}// end preHandle
	
	
}// end class
