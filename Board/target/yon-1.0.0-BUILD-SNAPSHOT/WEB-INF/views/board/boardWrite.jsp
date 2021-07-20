<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="kr">
<head>
	<%@ include file="/WEB-INF/views/layout/head.jsp"%>
	<link href="/resources/board/boardStyle.css" rel="stylesheet">
	<!-- 네이버 스마트 에디터 smarteditor2 -->
	<script type="text/javascript" src="/resources/board/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	
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
					<!-- 글작성 card -->
					<div class="card">
						<div class="card-header">
							<div style="float: left">
								<h5 class="card-title mb-0">WRITE</h5>
							</div>
							<div style="float: right">
								<button type="button" class="btn btn-outline-success btn-xs btn-radius" onclick="back()">뒤로가기</button>
							</div>
						</div>
						<div class="card-body">
						<c:choose>
							<c:when test="${loginCheck == true }">
								<!-- 로그인했을때 글쓰기 화면 보이기 -->
								<form name="frm" id="writeForm" action="writeOk" method="post" onsubmit="">
									<div class="row">
										<div class="col-md-12">
											<!-- 글제목 -->
											<div class="mb-3">
												<label class="form-label" for="inputTitle">제목 <span style="color: gray;">(50글자까지)</span></label>
												<input type="text" name="b_title" class="form-control" id="inputTitle"
													placeholder="제목" maxlength='50' required>
											</div>
											<!-- 작성자 -->
											<div class="mb-3">
												<label class="form-label" for="inputrRegname">작성자</label>
												<input type="text" name="u_regID" class="form-control" id="inputrRegname"
													placeholder="작성자" value="${seq }">
											</div>
											<!-- 글내용 -->
											<div class="mb-3">
												<label class="form-label" for="inputContent">내용</label>
												
												<!-- 네이버 스마트 에디터 smarteditor2 -->	
												<textarea name="b_content" id="ir1" rows="10" cols="50" style="width:100%; min-width:260px; display:none;" maxlength='50' required></textarea>
												<p class="count">글자수 [&nbsp<span>0</span>&nbsp]</p>
											</div>
										</div>
									</div>
									<div class="btnDivCenter">
										<button type="button" class="btn btn-outline-primary btn-sm btn-radius" onclick="submitContents()">등록하기</button>
									</div>
								</form>
							</c:when>
							<c:otherwise>
								<div>
									<a href="<%=request.getContextPath()%>/user/login">로그인</a> 후 글을 작성할 수 있습니다. 
								</div>
							</c:otherwise>
						</c:choose>
						</div>
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

	<!-- 네이버 스마트 에디터 smarteditor2 -->
	<script type="text/javascript">
		var oEditors = [];

		var sLang = "ko_KR"; // 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR
		
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1",
			sSkinURI : "/resources/board/se2/SmartEditor2Skin.html",
			htParams : {
				bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				//bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
				//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
				I18N_LOCALE : sLang
			}, 
			fOnAppLoad : function() {
				//예제 코드
				//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
			},
			fCreator : "createSEditor2"
		});

		//내용 submit이 될때
		function submitContents() {
			var elClickedObj = $("#writeForm");
			
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됩니다.
			
			var content = document.getElementById("ir1").value;
			// 에디터의 내용에 대한 유효성 검증
			if(content == "" || content == null || content == '&nbsp;' || content == '<br>' || content == '<br/>' || content == '<p>&nbsp;</p>' || content == '<p><br></p>') { 
					Swal.fire("글 내용을 작성해주세요.","","warning"); 
					oEditors.getById["ir1"].exec("FOCUS"); //포커싱 
					return false; 				
			}
			try {
	            elClickedObj.submit();
	        } catch(e) {}
		}
		<!-------------------- 네이버 스마트 에디터 smarteditor2 END -------------------->	
		
		<!---------------------------- 에디터에 글자를 쳤을 때 글자 수 표출되는 이벤트 ------------------------------->	
		// setTimeout 을 안하면 iframe이 만들어지기 전에 이벤트가 등록되어 영역을 찾지 못한다 
		setTimeout(function() { 
			var ctntarea = document.querySelector("iframe").contentWindow.document.querySelector("iframe").contentWindow.document.querySelector(".se2_inputarea"); 
			ctntarea.addEventListener("keyup", function(e) { 
				var text = this.innerHTML; 
				text = text.replace(/<br>/ig, ""); // br 제거 
				text = text.replace(/&nbsp;/ig, "");// 공백 제거 
				text = text.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, ""); // html 제거 
				
				var len = text.length; 
				document.querySelector(".count span").innerHTML = len; 
				
				}); 
			}, 1000) 
		
		
		<!---------------------------- 뒤로가기 ------------------------------->	
		 function back(){
				event.preventDefault();
				location.href = "/board/list?"
					   + "&page=${param.page}"
					   + "&perPageNum=${param.perPageNum}"
					   + "&searchType=${param.searchType}"
					   + "&keyword=${param.keyword}";
			}
		 <!---------------------------- 뒤로가기 END ------------------------------->	
		 

	</script>

	<script  src="/resources/js/boardValidator.js"></script> 
	
</body>

</html>
