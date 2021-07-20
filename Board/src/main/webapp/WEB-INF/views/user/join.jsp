<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    
<!DOCTYPE html>
<html lang="kr">
<head>
	<%@ include file="/WEB-INF/views/layout/head.jsp"%>
  	<link href="/resources/user/joinStyle.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <%@ include file = "/WEB-INF/views/layout/mobile-nav-toggle.jsp"%>
 
  <!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
  <%@ include file = "/WEB-INF/views/layout/header_sidebar3.jsp"%>

  <!-- ======= content Section ======= -->
	<main id="main">
		<div id="content">
			<div id="user" class="user">
				<div class="container" data-aos="fade-up">
					<div class="content-title">
						<h2>회원가입</h2>
					</div>
					<!------- 회원가입 from ------->
					
					<div id="formCon">
                        <form id="joinForm" action="joinOk" method="post" onsubmit="return falseChk()">
                            
                                    <table class="table ">
                                         <tr>
                                            <td>아이디</td>
                                            <td>
                                                <input class="formChk" onkeyup="IDDuplicationConfirm()" id="u_id" type="text" name="u_id"
                                                    placeholder="영문, 숫자만 사용(3~15자 이내)" maxlength='15'>
                                                <input id="u_idChk" onclick="u_idCheck()" type="button" value="중복확인">
                                            </td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td>비밀번호</td>
                                            <td>
                                                <input class="formChk" type="password" id="u_pw" name="u_pw" placeholder="영문, 숫자 조합(5~20자 이내)" maxlength='20'>
                                            </td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td>비밀번호 확인</td>
                                            <td>
                                                <input class="formChk" type="password" id="pwChk" name="pwChk" placeholder="비밀번호 확인" maxlength='20'>
                                                <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
                                                
                                            </td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td>이름</td>
                                            <td>
                                                <input class="formChk" type="text" id="u_name" name="u_name" placeholder="한글만 사용(2~5자 이내)" maxlength='5'>
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>생년월일</td>
                                            <td>
                                                <input class="formChk" type="text" id="u_birth" name="u_birth" placeholder="숫자만 사용(8자)"  maxlength='8'>
                                                <span class="ml-3" style="color: gray;">(ex. 20000101)</span>
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                        <tr>
                                        	<td>성별</td>
                                         	<td>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="male" name="u_genderMF" value="M" >
                                                    <label class="custom-control-label" for="male">남성</label>
                                                </div>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="female" name="u_genderMF" value="F">
                                                    <label class="custom-control-label" for="female">여성</label>
                                                </div>
                                              </td> 
                                              <td></td> 
                                        </tr>
                                        
                                        <tr>
                                            <td>닉네임</td>
                                            <td>
                                                <input class="formChk" onkeyup="NNDuplicationConfirm()" id="u_nickname" type="text" name="u_nickname" placeholder="한글, 영문, 숫자 사용(1~10자 이내)"  maxlength='10'>
                                                <input id="u_nicknameChk" onclick="u_nicknameCheck()" type="button" value="중복확인">  
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>전화번호</td>
                                            <td>
                                                <input class="formChk" type="text" id="u_call" name="u_call" placeholder=" - 포함해서 입력해주세요."  maxlength='13'>
                                                 <span class="ml-3" style="color: gray;">(ex. 010-1234-1234)</span>
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                         <tr>
                                            <td>이메일</td>
                                            <td>
                                                <input class="formChk" type="text" id="u_email" name="u_email" placeholder="이메일 형식으로 입력해주세요." >
                                                 <span class="ml-3" style="color: gray;">(ex. abc@abc.com)</span>
                                            </td>
                                            <td></td>
                                        </tr>

                                        <tr >
                                            <td colspan="3" class="text-center">
                                                <br>
                                                <input id="cancleBtn" type="button" name="cancle" value="홈으로" onclick="location.href='<%=request.getContextPath()%>/index'" onmouseover="this.style.cursor='pointer'">
                                                <input id="joinButton" type="submit" name="join" value="회원가입" onmouseover="this.style.cursor='pointer'">
                                            </td>
                                        </tr>

                                    </table>
                        </form>
                    </div>
					<!------- 회원가입 from END ------->					
					
					
					
					
					
					
			</div>
		</div>
		</div>
	</main>
	<!-- ======= Footer ======= -->
  <%@ include file = "/WEB-INF/views/layout/footer.jsp"%>

  <!-- Vendor JS Files -->
  <%@ include file = "/WEB-INF/views/layout/script.jsp"%>
  
	<script  src="/resources/user/user.js"></script> 	
	<script  src="/resources/js/joinValidator.js"></script> 	

</body>
</html>
