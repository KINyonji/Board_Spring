<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
  <header id="header" class="d-flex flex-column justify-content-center">
 <nav class="nav-menu">
      <ul class="navUl">
      	<!-- class="active"을 통해 메뉴를 눌렀을때 해당 구간으로 이동 + 색 변화 -->
        <li class=" nav-home"><a href="<%=request.getContextPath()%>/index"><i class="bx bx-home"></i> <span>Home</span></a></li>
        <li class="nav-board"><a href="<%=request.getContextPath()%>/board/list"><i class="bx bx-conversation"></i> <span>QnA</span></a></li>
		<li class="nav-item dropdown active">
		   <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
		   		<i class="bx bx-user"></i>
		   </a>
		   <div class="dropdown-menu dropdown-menu-right ml-1">
		     <a id="dropdownItem" class="dropdown-item" href="#">로그인</a>
		     <a id="dropdownItem" class="dropdown-item" href="<%=request.getContextPath()%>/member/join">회원가입</a>
		   </div>
		 </li>
      </ul>
    </nav><!-- .nav-menu -->

  </header><!-- End Header -->