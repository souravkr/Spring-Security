package com.luv2code.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	private DataSource ds;
	
	public SecurityConfig(DataSource tempDs) {
		ds = tempDs;
	}


	@Bean
	public UserDetailsManager userDetailsManager() {
         return new JdbcUserDetailsManager(ds);
	}
	
	@Bean
	public SecurityFilterChain filterChanin(HttpSecurity http) throws Exception {
		
		return http
				.authorizeRequests(configure->configure.antMatchers("/").hasRole("EMPLOYEE").antMatchers("/leaders/**").hasRole("MANAGER")
						.antMatchers("/system/**").hasRole("ADMIN"))
				.formLogin(config->config.loginPage("/showLoginPage").loginProcessingUrl("/authenticateUser").permitAll())
				.logout(config->config.permitAll() )
				.build();
		
		
	}

}
