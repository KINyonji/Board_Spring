<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="layout/head.jsp"%>
</head>
<body>

	<!-- ======= Mobile nav toggle button ======= -->
	<%@ include file="layout/mobile-nav-toggle.jsp"%>

	<!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
	<%@ include file="layout/header_sidebar.jsp"%>

	<!-- ======= home Section ======= -->
	<%@ include file="layout/home.jsp"%>

	<!-- ======= content Section ======= -->


	<!-- ======= Footer ======= -->
	<%@ include file="layout/footer.jsp"%>



	<!-- Vendor JS Files -->
	<%@ include file="layout/script.jsp"%>

</body>

</html>
