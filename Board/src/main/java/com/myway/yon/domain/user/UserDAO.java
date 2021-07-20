package com.myway.yon.domain.user;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.myway.yon.domain.board.BoardDTO;


@MapperScan
public interface UserDAO {

	//회원가입
	int join(UserDTO dto);
	
	//아이디 중복체크
	int idCheck(String u_id);
	
	//닉네임 중복체크
	int nicknameCheck(String u_nickname);
	
	//로그인
	int login(UserDTO dto);

	//회원가입
	HashMap<String, Object> sessionVal(UserDTO dto);
	
	//내 정보 수정 비번 확인
//	int pwchk(String u_pw);
	
	//내 정보 수정 
	int userUpdate(@Param("u")UserDTO dto);

	//내정보 삭제
	int deleteByUseq(String u_seq);

	//내 정보 수정에 정보 표시
	List<UserDTO> selectByUid(Integer u_seq);

	//홈화면 닉네임 표시
	String selectNN(int seq);

}