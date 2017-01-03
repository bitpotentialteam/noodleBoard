package org.noodle.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class URLInterceptor extends HandlerInterceptorAdapter {

	private static final Logger logger = LoggerFactory.getLogger(URLInterceptor.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		logger.info("URLInterceptor postHandle called.....");

		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();

		Object clientKey = modelMap.get("CLIENTURL");

		if (clientKey != null) {
			logger.info("CLIENTURL not null.....");

			session.setAttribute("ACCESSURL", clientKey);
		}

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		logger.info("URLInterceptor preHandle called.....");

		HttpSession session = request.getSession();

		if (session.getAttribute("ACCESSURL") != null) {
			logger.info("Remove ACCESSURL");

			session.removeAttribute("ACCESSURL");

		}
		return true;
	}

}
