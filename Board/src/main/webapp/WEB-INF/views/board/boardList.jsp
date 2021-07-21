<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="kr">
<head>
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
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
			        
			       
			        <div class="search" style="float: right;">
			       		 <!--------------------------- 검색초기화 & 전체보기ㅏ ----------------------------------->
				        <span  style="display: inline-block; height: 35px;">
				        	<button type="button" class="btnColorBorder" onclick="initializeBtn()">초기화</button>
				        </span>
						<!--------------------------- 검색 ----------------------------------->
						<span style="display: inline-block; width: 120px; height: 35px;">
							<select style="width: 100%; height: 35px;" class="form-control navbar-left list-group" name="searchType">
								<option value="t"
									<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="w"
									<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
								<option value="tw"
									<c:out value="${scri.searchType eq 'tw' ? 'selected' : ''}"/>>제목+작성자</option>
							</select>
						</span> 
						<span style="display: inline-block; width: 230px; height: 36px;">
							<input class="form-control navbar-left list-group pl-2" style="width: 100%; height: 36px;" type="search" placeholder="검색어" name="keyword" id="keywordInput" value="${scri.keyword}" onkeyup="enterkey()" />
						</span> 
						<span style="display: inline-block; width: 60px; height: 36px;">
							<button id="searchBtn" type="button" class="btnColorBorder pl-2" onclick="searchBtn()">검색</button>
						</span>
					</div>
					<!--------------------------- 검색 END ----------------------------------->		
								
					<%-- <form id="frm-example" action="delete" method="get"> --%>
					<div>
						<!-- DataTales -->
						<table id="boardList" class="table table-bordered table-hover"  style='width:100%; display:inline-block'>
							<thead>
								<tr>
									<th class="text-center">
										<input name="select_all" id="select-all" type="checkbox" /> 
									</th>
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
										<td>
											<!-- b_id와 세션의 값이 같을때 -->
											<c:if test="${l.u_regID == seq }">
												<input type="checkbox" name="b_id" value="${l.b_id }" style="cursor:pointer">
											</c:if>
											<!-- b_id와 세션의 값이 다를때 -->
											<c:if test="${l.u_regID != seq }">
												<label style="color: gray;">-</label>
											</c:if>
										</td>
										<td onclick="selectByB_ID(${l.b_id })" >${l.RNUM }</td>
										<td onclick="selectByB_ID(${l.b_id })" ><div class="text-ellipsis"><p>${l.b_title }</p></div></td>
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
											<c:when test="${empty l.u_modifyID }"> 
												<td>${l.u_name }</td>
											</c:when>										
											<c:otherwise>
												<td>${l.u_name }</td>
											</c:otherwise>
										</c:choose>
										
										<th>${l.b_viewcnt }</th>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						
						<!--------------------------- 페이징 ----------------------------------->
						
						<ul id="pagination" class="pagination-sm"></ul>
						
						<div id="paginationBox">
							<ul class="pagination">
								<c:if test="${pageMaker.prev}">					
									<li class="page-item pageLi">
										<a class="page-link btnColorBorder select" href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">
											이전
										</a>
									</li>					
								</c:if>				
								<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">					
								<!-- ${pageMaker.cri.page == idx ? 'active' : '' }" 는 pageMaker의 cri의 변수인 page의 값이 idx와 같다는 조건이 참일때 active를 나타낸다는 뜻 -->
									<li class="page-item pageLi ${pageMaker.cri.page == idx ? 'active' : '' }" >
										<a class="page-link btnColorBorder select " href="list${pageMaker.makeSearch(idx)}">
											 ${idx} 
										 </a>
								 	</li>					
								</c:forEach>				
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">				
									<li class="page-item pageLi">
										<a class="page-link btnColorBorder select" href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">
											다음
										</a>
									</li>				
								</c:if>					
							</ul>					
						</div>						
						
						<!--------------------------- 페이징 END ----------------------------------->
						
					</div>
					<br>
					<div class="btnDivRight">
						<!-- 새글쓰기 버튼 -->
						<button  type="button" class="btn btn-outline-success btn-sm btn-radius writeBtn" onclick="writeBtn()">새글쓰기</button>
						<c:choose>
						<c:when test="${loginCheck == true }">
						<!-- 전체/선택 삭제하기 버튼 -->			
						<button  type="button" class="btn btn-outline-danger btn-sm btn-radius" onclick="checkDel()">삭제하기</button>
						</c:when>
						</c:choose>
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
	
		//홈화면 검색 키워드);
  		window.onload = function () {
  			 $('.dataTables_filter input').val("${param.keyword}").keyup();
  		};
  		
  		//새글쓰기 버튼을 눌렀을때 페이징값과 검색 값 가지고 페이지로 이동
  		function writeBtn() {
			location.href = "write?page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}";
		}
  		
		//해당컬럼을 눌렀을때 상세보기 페이지로 이동
		function selectByB_ID(b_id) {
			location.href = "view?b_id=" + b_id + "&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}";
		}
		
		/*--------------------------------------------------------------
								체크박스 삭제 
		--------------------------------------------------------------*/
		
		
		function checkDel() {
			
			Swal.fire({
				  title: '정말 삭제하시겠습니까?',
				  icon: 'question',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '삭제하기',
				  cancelButtonText: '취소'
				}).then((deleteCk) => {
					if(deleteCk.isConfirmed){
						 var checkboxArray = new Array(); //체크박스값을 넣을 배열생성
			             
			             $('input[name="b_id"]:checked').each(function(i){//체크된 리스트 배열에 넣기
			            	 checkboxArray.push($(this).val());
			             });
			             
			             var objParams = {
			                     "checkboxList" : checkboxArray        //체크된 배열 저장
			                 };
			
			             if(checkboxArray.length == 0){
			            	 Swal.fire("선택된 글이 없습니다.","","warning"); 
			             }else{
				             //ajax 호출
				             $.ajax({
				                 url         :   "/board/delete",
				                 type        :   'post',
				                 data        :   objParams,
				                 success     :   function(res){
				                	 Swal.fire("글이 삭제되었습니다.","","success"); 
				                	 	
				                	 	var param = "${param.page}";
				                	 	if( param > 0){
				                	 		location.href = "list?"
											+ "&page=${param.page}"
										    + "&perPageNum=${param.perPageNum}"
										    + "&searchType=${param.searchType}"
										    + "&keyword=${param.keyword}";
				                	 	}else{
				                	 		location.href = "list?"
												+ "&page=1"
											    + "&perPageNum=10"
											    + "&searchType=${param.searchType}"
											    + "&keyword=${param.keyword}";
				                	 	}
				                 }
				                 ,error:function(request,status,error){
				                	 Swal.fire("삭제에 실패했습니다.","","warning"); 
				                	 	console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					                	history.back();
					              }
				             });
			             }
					}
				})
		} 
		
		<!-------------------- 초기화 -------------------------->	
		function initializeBtn() {
			location = "list";
		}
		
		 <!-------------------- 검색 -------------------------->	
		
		 //검색 엔터
		 function enterkey() {
             if (window.event.keyCode == 13) {
             if($('#keywordInput').val() == ''){
            	 Swal.fire("검색어를 입력해주세요","","warning")
               }
               else{
             	 self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
            	}
       		}
		 }
		//검색버튼						
		 function searchBtn() { 
			 var inputSearch = $("#keywordInput").val();
			 if(inputSearch ==''){
				Swal.fire("검색어를 입력해주세요.","","warning"); 
			 }else{
			 	  self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
			 }
		 }
		 
		 
	</script>
	
	
	<link href="/resources/board/boardStyle.css" rel="stylesheet">
 	<script  src="/resources/board/board.js"></script> 
 	
</body>

</html>