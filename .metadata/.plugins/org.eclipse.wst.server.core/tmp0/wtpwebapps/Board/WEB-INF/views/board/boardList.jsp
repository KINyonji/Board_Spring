<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
	<%@ include file="/WEB-INF/views/layout/head.jsp"%>
	


</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <%@ include file = "/WEB-INF/views/layout/mobile-nav-toggle.jsp"%>
 
  <!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
  <%@ include file = "/WEB-INF/views/layout/header_sidebar2.jsp"%>

  <!-- ======= content Section ======= -->
	<main id="main">
		<div id="content">
			<div id="QnA" class="QnA">
				<div class="container" data-aos="fade-up">
			        <div class="content-title">
			          <h2>Tech</h2>
			        </div>
			        
					
					<%-- <form id="frm-example" action="delete" method="get"> --%>
					<div>
						<!-- DataTales -->
						<table id="boardList" class="table table-bordered table-hover"  style='width:100%; display:inline-block'>
							<thead>
								<tr>
									<th class="text-center"><input name="select_all" id="select-all" type="checkbox" /></th>
									<th class="text-center">No</th>
									<th class="text-center">제목</th>
									<th class="text-center">날짜</th>
									<th class="text-center">작성자</th>
									<th class="text-center">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="l">
									<tr>
										<td class="text-center">${l.b_id }</td>
										<td class="text-center pointer" onclick="selectByB_ID(${l.b_id })" style="">${l.b_id }</td>
										<td class="pointer" onclick="selectByB_ID(${l.b_id })" >${l.b_title }</td>
										<!-- 수정날짜 유무 -->
										<c:choose>
											<c:when test="${empty l.b_modifydate }">
												<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${l.b_regdate }"/></td>
											</c:when>
											<c:otherwise>
												<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${l.b_modifydate }"/></td>
											</c:otherwise>
										</c:choose>
										<!-- 수정자 유무 -->
										<c:choose>									
											<c:when test="${empty l.u_modifyname }"> 
												<td>${l.u_regname }</td>
											</c:when>										
											<c:otherwise>
												<td>${l.u_modifyname }</td>
											</c:otherwise>
										</c:choose>
										
										<th>${l.b_delete_ny }</th>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<br>
					<div class="btnDivRight">
						<!-- 새글쓰기 버튼 -->
						<button  type="button" class="btn btn-outline-success btn-sm btn-radius writeBtn" onclick="location.href = 'write'">새글쓰기</button>
						<!-- 전체/선택 삭제하기 버튼 -->			
						<button  type="button" class="btn btn-outline-danger btn-sm btn-radius" onclick="checkDel()">삭제하기</button>
					</div>
					
		    	</div>
			</div>
		</div>
	</main>
  <!-- ======= Footer ======= -->
  <%@ include file = "/WEB-INF/views/layout/footer.jsp"%>

  

  <!-- Vendor JS Files -->
  <%@ include file = "/WEB-INF/views/layout/script.jsp"%>

	<script type="text/javascript">
	
		//홈화면 검색 키워드
		/* window.onload = function () {
			$('.dataTables_filter input').val('${param.keyword}').keyup();
		}	 */
		
		//해당컬럼을 눌렀을때 상세보기 페이지로 이동
		function selectByB_ID(b_id) {
			location.href = "view?b_id=" + b_id;
		}
		
		function checkDel() {

			var deleteCk = confirm("정맣 삭제하시겠습니까?");
			
			if(deleteCk){
				 var checkboxArray = new Array(); //체크박스값을 넣을 배열생성
	             
	             $('input[name="b_id"]:checked').each(function(i){//체크된 리스트 배열에 넣기
	            	 checkboxArray.push($(this).val());
	             });
	             
	             var objParams = {
	                     "checkboxList" : checkboxArray        //체크된 배열 저장
	                 };
	
	             if(checkboxArray.length == 0){
	            	 alert("선택된 글이 없습니다.");
	             }else{
		             //ajax 호출
		             $.ajax({
		                 url         :   "/board/delete",
		                 type        :   'post',
		                 data        :   objParams,
		                 success     :   function(res){
								location.href = "list";
		                 }
		                 ,error:function(request,status,error){
		                	 	alert("삭제 실패");
		                	 	console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			                	history.back();
			              }
		             });
	             }
			}else{
				//삭제확인창 취소했을때 
				  return;
			}
		}
		
	</script>
	
	
	<link href="/resources/board/boardStyle.css" rel="stylesheet">
 	<script  src="/resources/board/board.js"></script> 
 	
</body>

</html>
