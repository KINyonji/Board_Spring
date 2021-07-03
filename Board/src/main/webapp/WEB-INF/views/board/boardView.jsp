<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
    
<c:choose>
	<c:when test="${empty list || fn:length(list) == 0 }">
		<script>
			alert("해당 정보가 삭제되거나 없습니다");
			history.back();
		</script>
	</c:when>
	
	<c:otherwise>

<!DOCTYPE html>
<html lang="kr">
<head>
	<%@ include file="/WEB-INF/views/layout/head.jsp"%>

	<script>
		function chkDelete(b_id){
			// 삭제 여부, 다시 확인하고 진행하기
			var r = confirm("삭제하시겠습니까?");
			
			if(r){
				location.href = 'deleteOk?b_id=' + b_id;
			}
		}
	</script>
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <%@ include file = "/WEB-INF/views/layout/mobile-nav-toggle.jsp"%>
 
  <!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
  <%@ include file = "/WEB-INF/views/layout/header_sidebar.jsp"%>

  <!-- ======= content Section ======= -->
	<main id="main">
		<div id="content">
			<div id="QnA" class="QnA">
				<div class="container" data-aos="fade-up">
					<div class="content-title">
						<h2>Tech</h2>
					</div>
					<!-- 글작성 card -->
					<div class="card">
						<div class="card-header">
							<div style="float: left">
								<h5 class="card-title mb-0">READ</h5>
							</div>
							<div style="float: right">
								<button type="button" onclick="location.href='list'">←</button>
							</div>
						</div>
						<div class="card-body">
							<form name="frm" action="writeOk" method="post" onsubmit="">
								<div class="row">
									<div class="col-md-12">
										<!-- 글제목 -->
										<div class="mb-3">
											<label class="form-label" for="inputTitle">제목</label>
											<c:out value='${list[0].b_title }' />
										</div>
										<!-- 작성자 -->
										<div class="mb-3">
											<label class="form-label" for="inputrRegname">작성자</label>
											<c:out value='${list[0].u_regname }' />
										</div>
										<!-- 글내용 -->
										<div class="mb-3">
											<label class="form-label" for="inputContent">내용</label>
											<div>${list[0].b_content }</div>
											<c:out value='${list[0].b_content }' />
										</div>
									</div>
								</div>

							</form>
						</div>
					</div>
					<br>
					<button onclick="location.href='update?b_id=${list[0].b_id}'">수정하기</button>
					<button onclick="chkDelete(${list[0].b_id})">삭제하기</button>
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
