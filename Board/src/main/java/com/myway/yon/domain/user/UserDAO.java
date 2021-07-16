package com.myway.yon.domain.user;

import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface UserDAO {

	int login(UserDTO dto);
	
	UserDTO login1(LoginDTO loginDTO) throws Exception;


}