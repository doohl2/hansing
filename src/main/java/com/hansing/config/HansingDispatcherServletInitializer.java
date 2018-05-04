package com.hansing.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class HansingDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{

	//서비스 총 집합
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {
				HibernateConfig.class,
				HansingSecurityContextConfig.class
		};
	}

	//서블릿 총 집합
	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {
				HansingServletContextConfig.class,
				HansingMvcConfig.class,
				TilesConfig.class,
				MultipartConfig.class
		};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
	
	//한글 깨질때...
	public Filter CharacterEncodingFilter() {
		CharacterEncodingFilter filter = new CharacterEncodingFilter();
		filter.setEncoding("UTF-8");
		filter.setForceEncoding(true);
		return filter;
	}
	
	@Override
	protected Filter[] getServletFilters() {
		return new Filter[] {CharacterEncodingFilter()};
	}
}
