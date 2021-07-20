<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader("Expires",0); 
response.setHeader("Cache-Control", "no-cache");
%>
      	
<c:choose>
	<c:when test="${empty id}">
		<!-- sweetalert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
		<script>
			alert("해당정보가 사라졌습니다.");
			history.back();
		</script>
	</c:when>
	
	<c:otherwise>

<!DOCTYPE html>
<html lang="kr">
<head>
	<%@ include file="/WEB-INF/views/layout/head.jsp"%>

	<link href="/resources/user/userStyle.css" rel="stylesheet">
	 	<link href="/resources/user/joinStyle.css" rel="stylesheet">
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <%@ include file = "/WEB-INF/views/layout/mobile-nav-toggle.jsp"%>
 
  <!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
  <%@ include file = "/WEB-INF/views/layout/header_sidebar3.jsp"%>

  <!-- ======= content Section ======= -->
	<main id="main">
		<div id="content">
			<div id="User" class="User">
				<div class="container" data-aos="fade-up">
					<div class="content-title">
						<h2>User</h2>
					</div>
					<!-- 회원수정 card -->
					<div class="card">
						<div class="card-header">
							<div style="float: left">
								<h5 class="card-title mb-0">내 정보 수정</h5>
							</div>
						</div>
						<div class="card-body">
					<!------- 회원수정 from ------->
					
					<div id="formCon">
                        <form id="updateForm" action="userUpdateOk" method="Post" onsubmit="return falseChk()">
                            
                                    <table class="table ">
                                         <tr>
                                            <td>아이디</td>
                                            <td>
                                                ${id } <input type="hidden" name="u_id" value="${id}">
                                            </td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td>비밀번호</td>
                                            <td>
                                                <input class="formChk" type="password" id="u_pw" name="u_pw" placeholder="영문, 숫자 조합(5~20자 이내)" maxlength='20'>
                                            </td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td>비밀번호 확인</td>
                                            <td>
                                                <input class="formChk" type="password" id="pwChk" name="pwChk" placeholder="비밀번호 확인" maxlength='20'>
                                                <div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
                                                <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
                                            </td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td>이름</td>
                                            <td>
                                                <input class="formChk" type="text" id="u_name" name="u_name" value="${list[0].u_name }" placeholder="한글만 사용(2~5자 이내)" maxlength='5'>
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>생년월일</td>
                                            <td>
                                                <input class="formChk" type="text" id="u_birth" name="u_birth" value="${list[0].u_birth }" placeholder="숫자만 사용(8자)"  maxlength='8'>
                                                <span class="ml-3" style="color: gray;">(ex. 20000101)</span>
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                         <tr>
                                        	<td>성별</td>
                                        	
                                        	<c:choose>
												<c:when test="${(list[0].u_genderMF).equals(M)}">
													<td>
		                                                <div class="custom-control custom-radio custom-control-inline">
		                                                    <input type="radio" class="custom-control-input" id="male" name="u_genderMF" value="M" checked >
		                                                    <label class="custom-control-label" for="male">남성</label>
		                                                </div>
		                                                <div class="custom-control custom-radio custom-control-inline">
		                                                    <input type="radio" class="custom-control-input" id="female" name="u_genderMF" value="F">
		                                                    <label class="custom-control-label" for="female">여성</label>
		                                                </div>
		                                              </td>
												</c:when>
												
												<c:otherwise>
		                                         	<td>
		                                                <div class="custom-control custom-radio custom-control-inline">
		                                                    <input type="radio" class="custom-control-input" id="male" name="u_genderMF" value="M" >
		                                                    <label class="custom-control-label" for="male">남성</label>
		                                                </div>
		                                                <div class="custom-control custom-radio custom-control-inline">
		                                                    <input type="radio" class="custom-control-input" id="female" name="u_genderMF" value="F" checked>
		                                                    <label class="custom-control-label" for="female">여성</label>
		                                                </div>
		                                              </td> 
                                              
                                              	</c:otherwise>
											</c:choose>
                                              <td></td> 
                                        </tr> 
                                        
                                        <tr>
                                            <td>닉네임</td>
                                            <td>
                                                <input class="formChk" onkeyup="NNDuplicationConfirm()" id="u_nickname" type="text" name="u_nickname" value="${list[0].u_nickname }" placeholder="한글, 영문, 숫자 사용(1~10자 이내)"  maxlength='10'>
                                                <input id="u_nicknameChk" onclick="u_nicknameCheck()" type="button" value="중복확인">  
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                        <tr>
                                            <td>전화번호</td>
                                            <td>
                                                <input class="formChk" type="text" id="u_call" name="u_call" value="${list[0].u_call }" placeholder=" - 포함해서 입력해주세요."  maxlength='13'>
                                                 <span class="ml-3" style="color: gray;">(ex. 010-1234-1234)</span>
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                         <tr>
                                            <td>이메일</td>
                                            <td>
                                                <input class="formChk" type="text" id="u_email" name="u_email" value="${list[0].u_email }" placeholder="이메일 형식으로 입력해주세요." >
                                                 <span class="ml-3" style="color: gray;">(ex. abc@abc.com)</span>
                                            </td>
                                            <td></td>
                                        </tr>
										</form>
                                        <tr >
                                            <td colspan="3" class="text-center">
                                           		 <input type="hidden" name="u_seq" value="${seq}">
                                                <br>
                                                <input id="cancleBtn" type="button" name="cancle" value="홈으로" onclick="location.href='<%=request.getContextPath()%>/index'" onmouseover="this.style.cursor='pointer'">
                                                <input id="updateButton" type="submit" name="update" value="수정하기" onmouseover="this.style.cursor='pointer'">
                                                 <input id="deleteButton" type="button" name="delete" value="탈퇴하기" onclick="userDel()">
                                            </td>
                                        </tr>

                                    </table>
                        
                    </div>
					<!------- 내정보수정 from END ------->					
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

<script type="text/javascript">
	
		/*--------------------------------------------------------------
								회원 삭제 
		--------------------------------------------------------------*/
		function userDel() {
			
			Swal.fire({
				  title: '정말 탈퇴하시겠습니까?',
				  icon: 'question',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '탈퇴하기',
				  cancelButtonText: '취소'
				}).then((deleteCk) => {
					if(deleteCk.isConfirmed){
			             //ajax 호출
			             $.ajax({
			                 url         :   "/user/delete",
			                 type        :   'post',
			                 data        :   {
			                	 u_seq : ${seq}
			                 },
			                 success     :   function(res){
			                	 console.log("삭제 : "+res);
			                	 Swal.fire("회원이 탈퇴되었습니다.","","success"); 
			                	 location.href = "<%=request.getContextPath()%>/index";
			                	 
			                 }
			                 ,error:function(request,status,error){
			                	 Swal.fire("삭제에 실패했습니다.","","warning"); 
			                	 	console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				                	history.back();
				              }
			             });
		             }
					})
				}
	</script>
</body>
</html>
	<script  src="/resources/user/userUpdate.js"></script> 	
	<script  src="/resources/js/updateValidator.js"></script> 	
	</c:otherwise>
</c:choose>