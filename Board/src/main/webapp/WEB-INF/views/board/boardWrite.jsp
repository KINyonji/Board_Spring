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
								<button type="button" class="btn btn-outline-success btn-xs btn-radius" onclick="history.back()">←</button>
							</div>
						</div>
						<div class="card-body">
							<form name="frm" id="writeForm" action="writeOk" method="post" onsubmit="">
								<div class="row">
									<div class="col-md-12">
										<!-- 글제목 -->
										<div class="mb-3">
											<label class="form-label" for="inputTitle">제목</label>
											<input type="text" name="b_title" class="form-control" id="inputTitle"
												placeholder="제목" required>
										</div>
										<!-- 작성자 -->
										<div class="mb-3">
											<label class="form-label" for="inputrRegname">작성자</label>
											<input type="text" name="u_regname" class="form-control" id="inputrRegname"
												placeholder="작성자" required>
										</div>
										<!-- 글내용 -->
										<div class="mb-3">
											<label class="form-label" for="inputContent">내용</label>
											
											<!-- 네이버 스마트 에디터 smarteditor2 -->	
											<textarea name="b_content" id="ir1" rows="10" cols="50" style="width:100%; min-width:260px; display:none;" required></textarea>
											
										</div>
									</div>
								</div>
								<div class="btnDivCenter">
									<button type="button" class="btn btn-outline-primary btn-sm btn-radius" onclick="submitContents()">등록하기</button>
								</div>
							</form>
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
				bUseModeChanger : false, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
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
					alert("글 내용을 작성해주세요."); 
					oEditors.getById["ir1"].exec("FOCUS"); //포커싱 
					return false; 				
			}
			try {
	            elClickedObj.submit();
	        } catch(e) {}
		}
		<!-- 네이버 스마트 에디터 smarteditor2 END-->	
	</script>

	<script  src="/resources/js/validator.js"></script> 
	
</body>

</html>
