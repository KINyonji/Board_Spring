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
  	<link href="/resources/user/userStyle.css" rel="stylesheet">
  	
  		<!-- sweetalert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  	
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <%@ include file = "/WEB-INF/views/layout/mobile-nav-toggle.jsp"%>
 
  <!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
  <%@ include file = "/WEB-INF/views/layout/header_sidebar3.jsp"%>

  <!-- ======= content Section ======= -->
	<main id="main">
		<div id="content">

			<div id="login" class="login" style="height: 90vh;">
				<div class="container" data-aos="fade-up">
					<!-- ======= 메인 로고 ======= 
					  <div style="height: 20vh">
					    <div class="row-vh d-flex flex-column">
						    <div class="container mt-5 pt-5" data-aos="zoom-in" data-aos-delay="100">
						      <h1>YJ's Spring</h1>
						    </div>
					    </div>
					  </div>-->
					<!------- 로그인 from ------->
					
					<div id="logincontainer">
						<div class="loginFrm">
							<h1>로그인</h1>
							<hr>
						<c:choose>
							<c:when test="${empty id}">
								<form id="loginForm" action="loginOk" method="post">
									<div id="id_pw_input">
										<input type="text" placeholder="아이디" name="u_id" id="u_id" maxlength='15' minlength='3' required> 
										<input type="password" placeholder="비밀번호" name="u_pw" id="u_pw" maxlength='20' minlength='5' required>
										<button type="submit" id="loginBtn"  onmouseover="this.style.cursor='pointer'">로그인</button>
									</div>
									<!-- <div id="loginbottom">
										<label> <input type="checkbox" name="remember"> 아이디
											기억하기
										</label> 
									</div> -->
									<hr>
									<div>
										<b>계정이 없으세요?</b> 
										<span id="join" class="ml-2">
											<a href="join">회원가입</a>
										</span>
									</div>
								</form>
							</c:when>
							
							<c:otherwise>
								<script>
									Swal.fire("로그인 되어있습니다.","","warning"); 
								</script>
								ID : ${id }로 로그인 증
							</c:otherwise>
						</c:choose>	
						</div>
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
  
	<script  src="/resources/js/loginValidator.js"></script> 	

</body>
</html>
