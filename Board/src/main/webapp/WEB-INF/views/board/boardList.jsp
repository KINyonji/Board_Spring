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
	
	<link href="/resources/board/boardStyle.css" rel="stylesheet">

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
			        <!-- 새글쓰기 버튼 -->
					<div>
						<button type="button" class="btn btn-outline-success" onclick="location.href = 'write'">새글쓰기</button>
					</div>
					
					<%-- <form id="frm-example" action="delete" method="get"> --%>
					
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
									<td class="text-center" onclick="selectByB_ID(${l.b_id })"  style="cursor:pointer">${l.b_id }</td>
									<td onclick="selectByB_ID(${l.b_id })" style="cursor:pointer" >${l.b_title }</td>
									<!-- 수정날짜 -->
									<c:choose>
										<c:when test="${empty l.b_modifydate }">
											<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${l.b_regdate }"/></td>
										</c:when>
										<c:otherwise>
											<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${l.b_modifydate }"/></td>
										</c:otherwise>
									</c:choose>
									<!-- 수정자 -->
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
					
					<!-- 전체/선택 삭제하기 버튼 -->
					<div>
						<button type=button class="btn btn-outline-danger" onclick="checkDel()">삭제하기</button>
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
		//해당컬럼을 눌렀을때 상세보기 페이지로 이동
		function selectByB_ID(b_id) {
			location.href = "view?b_id=" + b_id;
		}
		
		/* function chkDelete(b_id){
			// 삭제 여부, 다시 확인하고 진행하기
			var r = confirm("삭제하시겠습니까?");
			
			if(r){
				location.href = 'delete?b_id=' + b_id;
			}
		} */
		
		function checkDel() {
			
			console.log("뭐 삭제할거야?");
			
			 var checkboxArray = new Array(); //체크박스값을 넣을 배열생성
             
             $('input[name="b_id"]:checked').each(function(i){//체크된 리스트 배열에 넣기
            	 checkboxArray.push($(this).val());
             });
             
             var objParams = {
                     "checkboxList" : checkboxArray        //체크된 배열 저장
                 };
             
             console.log("checkboxArray? " +checkboxArray);
             
             if(checkboxArray.length == 0){
            	 alert("선택된 글이 없습니다.");
             }else{
	             //ajax 호출
	             $.ajax({
	                 url         :   "/board/delete",
	                 type        :   'post',
	                 data        :   objParams,
	                 success     :   function(result){
	
	                     if(result.code == "OK") {
	                         alert(retVal.message);
	                         location.href = "/board/List";
	                     } else {
	                         alert(retVal.message);
	                     }
	                      
	                 }
	                 ,error:function(request,status,error){
	                	    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);}

	             
	             });
             }
			
		}
		
	</script>
	
	<!-- DataTable -->
	<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css" />
	<script  src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
	
 	<script  src="/resources/board/board.js"></script> 
</body>

</html>
