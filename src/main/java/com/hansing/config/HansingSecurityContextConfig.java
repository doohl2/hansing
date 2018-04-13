package com.hansing.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class HansingSecurityContextConfig extends WebSecurityConfigurerAdapter{

	@Override
	protected void configure(HttpSecurity http) throws Exception {
			http
				.authorizeRequests()
				.antMatchers("/member/**").hasAnyRole("MEMBER")
				.and()
			.formLogin()
				.loginPage("/member/login")
				.permitAll()
				.and()
			.logout()
				.logoutUrl("/index")
				.permitAll()
				.and()
			.httpBasic();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		UserBuilder users = User.builder();
		auth.inMemoryAuthentication()
				.withUser(users.username("newlec@naver.com").password("{noop}111").roles("MEMBER"))
				.withUser(users.username("dragon").password("{noop}111").roles("AUTHOR"));
	}
	
}
