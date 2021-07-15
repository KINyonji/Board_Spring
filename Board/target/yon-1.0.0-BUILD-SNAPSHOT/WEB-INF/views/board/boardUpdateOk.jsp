<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<c:choose>
	<c:when test="${result == 0 }">
		<script>
			console.log(${result}+"수정 실패");
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		<script>
			console.log("수정 성공");
			location.href = "view?b_id=${param.b_id}"
				   + "&page=${param.page}"
				   + "&perPageNum=${param.perPageNum}"
				   + "&searchType=${param.searchType}"
				   + "&keyword=${param.keyword}";
		</script>
	</c:otherwise>
</c:choose>