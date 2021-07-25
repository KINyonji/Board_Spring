<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
<head>
	<%@ include file="/WEB-INF/views/layout/head.jsp"%>
</head>

<body>
  <!-- Vendor JS Files -->
  <%@ include file = "/WEB-INF/views/layout/script.jsp"%>

    
<c:choose>
	<c:when test="${result == 0 }">
		<!-- 로그인 실패 -->
		<script>
			Swal.fire("비밀번호 확인에 실패했습니다. \n 다시 입력해주세요","","warning"); 
			//시간 지연 함수 setTimeout()
			setTimeout(function() {
				history.back();  // 브라우저가 직전에 기억하는 이전 페이지로..
				}, 1000);
			
		</script>
	</c:when>
	<c:otherwise>
		<!-- 로그인 성공 -->
		<script>
			location.href = "userUpdate";
		</script>
	</c:otherwise>
</c:choose>
 	
</body>

</html>