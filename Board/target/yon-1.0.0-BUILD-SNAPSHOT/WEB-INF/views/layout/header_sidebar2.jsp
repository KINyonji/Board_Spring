<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->
  <header id="header" class="d-flex flex-column justify-content-center">
 <nav class="nav-menu">
      <ul class="navUl">
      	<!-- class="active"을 통해 메뉴를 눌렀을때 해당 구간으로 이동 + 색 변화 -->
        <li class="nav-home"><a href="<%=request.getContextPath()%>/index"><i class="bx bx-home"></i> <span>Home</span></a></li>
        <li class="active nav-board"><a href="<%=request.getContextPath()%>/board/list"><i class="bx bx-conversation"></i> <span>QnA</span></a></li>
        <li class="nav-user"><a href="#user"><i class="bx bx-user"></i> <span>User</span></a></li>
      </ul>
    </nav><!-- .nav-menu -->

  </header><!-- End Header -->