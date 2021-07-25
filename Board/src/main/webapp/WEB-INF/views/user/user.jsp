<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    
<c:choose>
	<c:when test="${empty id}">
		<script>
			Swal.fire("해당 정보가 삭제되거나 없습니다","","warning"); 
			history.back();
		</script>
	</c:when>
	
	<c:otherwise>

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
			<div id="User" class="User">
				<div class="container" data-aos="fade-up">
					<div class="content-title">
						<h2>User</h2>
					</div>
					<!-- 글작성 card -->
					<div class="card">
						<div class="card-header">
							<div style="float: left">
								<h5 class="card-title mb-0">내 정보 수정</h5>
							</div>
						</div>
						<div class="card-body">
							<form name="userpw" action="pwchk" method="post">
								<div class="row">
									<div class="col-md-12">
									
										<!-- 비밀번호 확인 -->
										<div class="mb-3">
											<div class="row">
												<div class="form-label col-md-5 text-center font-weight-bold" for="inputTitle">비밀번호 확인</div>
												<div id="minCenter" class="col-md-7 minCenterc">
													<input type="password" placeholder="비밀번호" name="u_pw" id="u_pw" maxlength='20' minlength='5' required>
												</div>
											</div>
										</div>
										
									</div>
								</div>
							<div class="btnDivCenter">
								<button type="submit" class="btn btn-outline-warning btn-sm btn-radius">수정하기</button>
							</div>
				
							</form>
						</div>
					</div>
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

	</c:otherwise>
</c:choose>
