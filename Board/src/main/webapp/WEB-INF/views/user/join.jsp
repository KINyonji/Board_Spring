<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
    
<!DOCTYPE html>
<html lang="kr">
<head>
	<%@ include file="/WEB-INF/views/layout/head.jsp"%>
  	<link href="/resources/user/userStyle.css" rel="stylesheet">
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
                        <form id="join" action="joinImpo-emailOk.tp" method="post" onsubmit="return chkInput()">
                            
                                    <table class="table ">
                                         <tr>
                                            <td>아이디</td>
                                            <td>
                                            	<div class="row">
	                                                <input class="formChk col-sm-8" onkeyup="cancelduplicationConfirm()" id="u_id" type="text" name="u_id"
	                                                    placeholder="한글, 영문, 숫자만 사용(2~10자 이내)" required>
	                                                <input id="u_idChk" onclick="u_idCheck()" class="col-sm-3" type="button" value="중복확인">  
                                            	</div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>비밀번호</td>
                                            <td>
                                                <input class="formChk" type="password" id="pw" name="pw" placeholder="영문, 숫자 조합(4~12자 이내)"
                                                   required>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>비밀번호 확인</td>
                                            <td>
                                                <input class="formChk" type="password" id="pwChk" name="pwChk"
                                                    placeholder="비밀번호 확인" required>
                                                <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
                                                <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>이름</td>
                                            <td>
                                                <input class="formChk" type="text" id="name" name="name" placeholder="한글과 영어만 사용"
                                                    required>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>생년월일</td>
                                            <td>
                                                <select class="formChk birthChk" id="birthY" name="birthY">
                                                    <option value="none" selected>선택</option>
                                                </select> 년
                                                <select class="formChk birthChk" id="birthM" name="birthM">
                                                    <option value="none" selected>선택</option>
                                                </select> 월
                                                <select class="formChk" id="birthD" name="birthD">
                                                    <option value="none" selected>선택</option>
                                                </select> 일
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>성별</td>
                                            <td>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="male"
                                                        name="gender" value="male" >
                                                    <label class="custom-control-label" for="male">남성</label>
                                                </div>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="female"
                                                        name="gender" value="female">
                                                    <label class="custom-control-label" for="female">여성</label>
                                                </div>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>전화번호</td>
                                            <td>
                                                <select class="formChk birthChk" id="birthY" name="birthY">
                                                    <option value="none" selected>선택</option>
                                                </select> -
                                                <select class="formChk birthChk" id="birthM" name="birthM">
                                                    <option value="none" selected>선택</option>
                                                </select> -
                                                <select class="formChk" id="birthD" name="birthD">
                                                    <option value="none" selected>선택</option>
                                                </select> 
                                            </td>
                                        </tr>

                                        <tr >
                                            <td colspan="2" class="text-center">
                                                <br>
                                                <input id="cancleBtn" type="button" name="cancle" value="취소" onclick="location.href='../layout/index.tp'" onmouseover="this.style.cursor='pointer'">
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
  


</body>
</html>
