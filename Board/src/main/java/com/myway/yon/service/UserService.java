package com.myway.yon.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.myway.yon.domain.board.BoardDTO;
import com.myway.yon.domain.user.UserDAO;
import com.myway.yon.domain.user.UserDTO;

@Service //비지니스 로직이나 repository layer 호출하는 함수
public class UserService {
	
	UserDAO dao;
	
	/*Mybatis를 이용하여 DAO를 구현하려면 SqlSession 객체가 필요하다.
	 * SqlSession를 생성하기 위해 SqlSessionFactory를 사용한다. 세션을 한번 생성하면 매핑구문을 실행하거나 커밋 또는
	 * 롤백을 하기 위해 세션을 사용할수 있다. 마지막으로 더 이상 필요하지 않은 상태가 되면 세션을 닫는다. 마이바티스 스프링 연동모듈을
	 * 사용하면 SqlSessionFactory를 직접 사용할 필요가 없다. 왜냐하면, 스프링 트랜잭션 설정에 따라 자동으로 커밋 혹은 롤백을
	 * 수행하고 닫혀지는, 쓰레드에 안전한 SqlSession 개체가 스프링 빈에 주입될 수 있기 때문이다.
	 */
	private SqlSession sqlSession;
	
	/*
	 * 필요한 의존 객체의 “타입"에 해당하는 빈을 찾아 주입한다. 생성자, setter, 필드
	 * 각 상황의 타입에 맞느 IoC컨테이너 안에 존재하는 Bean을 자동으로 주입해주게 됨
	 * 
	 * 
	 */
	@Autowired 
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public UserService() {
		super();
		System.out.println("UserService() 생성");
	}
	
	//회원가입 + 비밀번호 암호화
	public int join(UserDTO dto) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		// spring util에 있는 DigestUtils 오픈소스를 사용해서 md5로 암호화하기
		String pw = dto.getU_pw();
		dto.setU_pw(DigestUtils.md5DigestAsHex(pw.getBytes()));
		
		return dao.join(dto);  
	}
	
	//아이디 중복체크
	public int idCheck(String u_id) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		return dao.idCheck(u_id);  
	}
	
	//아이디 중복체크
	public int nicknameCheck(String u_nickname) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		return dao.nicknameCheck(u_nickname);  
	}
	
	//로그인 + 비밀번호 암호화
	public int login(UserDTO dto) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		// spring util에 있는 DigestUtils 오픈소스를 사용해서 md5로 암호화하기		
		 String pw = dto.getU_pw();
		 dto.setU_pw(DigestUtils.md5DigestAsHex(pw.getBytes()));
		 
		return dao.login(dto);  
	}
	
	//아이디 중복체크
	public HashMap<String, Object> sessionVal(UserDTO dto) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		return dao.sessionVal(dto);  
	}	
	
	//내 정보 수정 비번 확인
//	public int pwchk(String u_pw) {
//		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
//		return dao.pwchk(u_pw);  
//	}
	
	//회원정보 수정 + 비번 암호화
	public int userUpdate(UserDTO dto) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		 String pw = dto.getU_pw();
		 dto.setU_pw(DigestUtils.md5DigestAsHex(pw.getBytes()));
		 
		return dao.userUpdate(dto);  
	}

	public int deleteByUseq(String u_seq) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		return dao.deleteByUseq(u_seq);  
	}

	
	public List<UserDTO> selectByUid(Integer u_seq) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		return dao.selectByUid(u_seq);
	}

	//홈화면 닉네임 표시
	public String selectNN(int seq) {
		dao = sqlSession.getMapper(UserDAO.class); // MyBatis 사용
		System.out.println("dao.selectNN(seq): "+dao.selectNN(seq));
		return dao.selectNN(seq);
	}



}
