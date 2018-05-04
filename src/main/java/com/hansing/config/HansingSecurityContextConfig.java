package com.hansing.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackages="com.hansing.config")
public class HansingSecurityContextConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private DataSource dataSource;		
	@Autowired
	private HansingLoginSuccessConfig successHandler;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
			http
			.csrf().disable()
				.authorizeRequests()
				.antMatchers("/*/write").hasAnyRole("ALL")
				.and()
			.formLogin()
				//get요청
			.defaultSuccessUrl("/index")
				.loginPage("/member/login")
				.loginProcessingUrl("/member/login")
				.successHandler(successHandler)
				.permitAll()
				.and()
			.logout()
				.logoutSuccessUrl("/index")
				.invalidateHttpSession(true);
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		UserBuilder users = User.builder();
	
		auth.	jdbcAuthentication()
				.dataSource(dataSource)
				.usersByUsernameQuery("select id, pwd password,1 enabled from Member where id=?")
				.authoritiesByUsernameQuery("select memberId id, roleId authority from MemberRole where memberId=?")
				.passwordEncoder(new BCryptPasswordEncoder());
			
	}

}
