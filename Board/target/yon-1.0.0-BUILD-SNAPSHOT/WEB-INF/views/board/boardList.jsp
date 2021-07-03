<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
	<%@ include file="../layout/head.jsp"%>
	
	<!-- DataTable -->
	<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css" />
	<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
	<script src="/resources/board/board.js"></script>
	
	<link href="/resources/board/boardStyle.css" rel="stylesheet">

		<script>
			jQuery(function($){
				$("#boardList").DataTable({
					dom: 'lftp',
					/* buttons: [
			            {
			                text: '새 글 쓰기',
			                action: function ( e, dt, node, config ) {
			                    alert( 'Button activated' );
			                }
			            }
			        ] */
				});
			});
		</script>

</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <%@ include file = "../layout/mobile-nav-toggle.jsp"%>
 
  <!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
  <%@ include file = "../layout/header_sidebar.jsp"%>

  <!-- ======= content Section ======= -->
	<main id="main">
		<div id="content">
			<div id="QnA" class="QnA">
				<div class="container" data-aos="fade-up">
			        <div class="content-title">
			          <h2>Tech</h2>
			        </div>
					<div>
						<button>새글쓰기</button>
					</div>
					<!-- DataTales -->
					<table id="boardList" class="table table-bordered"  style=”display:inline-block“>
						<thead>
							<tr>
								<th>제목</th>
								<th>날짜</th>
								<th>작성자</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list }" var="l">
								<tr>
									<td>${l.B_TITLE }</td>
									<td>${l.B_REGDATE }</td>
									<td>${l.U_REGNAME }</td>
									<th>${l.B_VIEWCNT }</th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
		    	</div>
			</div>
		</div>
	</main>
  <!-- ======= Footer ======= -->
  <%@ include file = "../layout/footer.jsp"%>

  

  <!-- Vendor JS Files -->
  <%@ include file = "../layout/script.jsp"%>

</body>

</html>
