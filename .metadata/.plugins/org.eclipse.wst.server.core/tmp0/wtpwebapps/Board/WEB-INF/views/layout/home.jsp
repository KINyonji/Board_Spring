<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ======= home Section ======= -->
  <section id="home" class="">
  	 <!-- ======= 메인 로고 ======= -->
	  <div style="height: 40vh">
	    <div class="row-vh d-flex flex-column">
		    <div class="container mt-5 pt-5" data-aos="zoom-in" data-aos-delay="100">
		      <h1>YJ's Spring</h1>
		      <p>I'm <span class="typed" data-typed-items="Developer, Person, Servant"></span></p>
		    </div>
	    </div>
	  </div>
	   <!-- ======= 검색하기 ======= -->
	   <div style="height: 50vh">
		   <div class="row-vh d-flex flex-column">
			   	<div class="container" data-aos="zoom-in" data-aos-delay="200">
			     <div class="subscribe">
			        <form action="board/list" method="Get" role="form" >
			          <div class="subscribe-form">
			            <input type="text" name="keyword" id="keyword"><input type="submit" value="Search">
			          </div>
			        </form>
			      </div>
			    </div>
		   </div>
	   </div> 
  </section><!-- End home -->
  
  <!-- 오른쪽하단에 ↑ 화살표-->
  <a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>
  
  <!-- 페이징 로딩 -->
  <div id="preloader"></div>