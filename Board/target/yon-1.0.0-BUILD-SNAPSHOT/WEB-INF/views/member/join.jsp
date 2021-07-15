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
		<div id="joinBrowcontainer">
                    <!-- Join Form -->
                    <div id="formCon">
                        <form id="join" action="joinImpo-emailOk.tp" method="post" onsubmit="return chkInput()">
                            <h1>회원가입</h1>
                                    <table class="table ">
                                        <tr>
                                        	<input type="hidden" name="email" value="${param.userEmail }" />
                                            <td>이메일</td>
                                            <td>${param.userEmail}</td>

                                        </tr>

                                        <tr>
                                            <td>비밀번호</td>
                                            <td>
                                                <input class="formChk" type="password" id="pw" name="pw" placeholder="영문, 숫자 조합(4~12자 이내)"
                                                   required>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>비밀번호 확인</td>
                                            <td>
                                                <input class="formChk" type="password" id="pwChk" name="pwChk"
                                                    placeholder="비밀번호 확인" required>
                                                <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
                                                <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>이름</td>
                                            <td>
                                                <input class="formChk" type="text" id="name" name="name" placeholder="한글과 영어만 사용"
                                                    required>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>닉네임</td>
                                            <td>
                                            	<div class="row">
	                                                <input class="formChk col-sm-8" onkeyup="cancelduplicationConfirm()" id="nickname" type="text" name="nickname"
	                                                    placeholder="한글, 영문, 숫자만 사용(2~10자 이내)" required>
	                                                <input id="nicknameChk" onclick="nnCheck()" class="col-sm-3" type="button" value="중복확인">  
                                            	</div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>생년월일</td>
                                            <td>
                                                <select class="formChk birthChk" id="birthY" name="birthY">
                                                    <option value="none" selected>선택</option>
                                                </select> 년
                                                <select class="formChk birthChk" id="birthM" name="birthM">
                                                    <option value="none" selected>선택</option>
                                                </select> 월
                                                <select class="formChk" id="birthD" name="birthD">
                                                    <option value="none" selected>선택</option>
                                                </select> 일
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>성별</td>
                                            <td>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="male"
                                                        name="gender" value="male" >
                                                    <label class="custom-control-label" for="male">남성</label>
                                                </div>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="female"
                                                        name="gender" value="female">
                                                    <label class="custom-control-label" for="female">여성</label>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr >
                                            <td colspan="2" class="text-center">
                                                <br>
                                                <input id="cancleBtn" type="button" name="cancle" value="취소" onclick="location.href='../layout/index.tp'" onmouseover="this.style.cursor='pointer'">
                                                <input id="joinButton" type="submit" name="join" value="회원가입" onmouseover="this.style.cursor='pointer'">
                                            </td>
                                        </tr>

                                    </table>
                        </form>
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
		
		 //검객 엔터
		 function enterkey() {
             if (window.event.keyCode == 13) {
             if($('#keywordInput').val() == ''){
            	 Swal.fire("검색어를 입력해주세요","","warning")
               }
               else{
             	 self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
            	}
       		}

		//검색버튼						
		 $('#searchBtn').click(function() {
			 var inputSearch = $("#keywordInput").val();
			 if(inputSearch ==''){
				Swal.fire("검색어를 입력해주세요.","","warning"); 
			 }
		  	  self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
		   });
		 }
		 
		 <!-------------------- 페이징 누르면 색 넣기 ---------------------->	
		 /* <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">					
			<li class="page-item pageLi" <c:out value="${pagination.page == idx ? 'active' : ''}"/>>
				<a class="page-link btnColorBorder select " href="list${pageMaker.makeSearch(idx)}">
					 ${idx} 
				 </a>
		 	</li>					
		</c:forEach>		 */
		 
		/*  $('#pageActive').click(function() {
			 var paramPage = "${scri.page}";
			 var pageNum = ${idx};
			 
		 } */
		 
	</script>
	
	
	<link href="/resources/board/boardStyle.css" rel="stylesheet">
 	<script  src="/resources/board/board.js"></script> 
 	
</body>

</html>