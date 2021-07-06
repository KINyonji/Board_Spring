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
  <%@ include file = "/WEB-INF/views/layout/header_sidebar2.jsp"%>

      <div class="container">
      <form class="bootstrap-form needs-validation" novalidate>
        <div class="form-row">
          <div class="col-md-12 mb-3">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Name" autocomplete="off" required>
            <div class="valid-feedback">
              Looks good!
            </div>
            <div class="invalid-feedback">
              Looks bad!
            </div>
          </div>
          <div class="col-md-12 mb-3">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email" autocomplete="off" required>
            <div class="valid-feedback">
              Looks good!
            </div>
            <div class="invalid-feedback">
              Looks bad!
            </div>
          </div>
          <div class="col-md-12 mb-3">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" autocomplete="off" required>
            <div class="valid-feedback">
              Looks good!
            </div>
            <div class="invalid-feedback">
              Looks bad!
            </div>
          </div>
          <div class="col-md-12 mb-3">
            <label for="username">Username</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupPrepend">@</span>
              </div>
              <input type="text" class="form-control" id="username" name="username" placeholder="Username" aria-describedby="inputGroupPrepend" autocomplete="off" required>
              <div class="valid-feedback">
                Looks good!
              </div>
              <div class="invalid-feedback">
                Looks bad!
              </div>
            </div>
          </div>
          <div class="col-md-12 mb-3">
            <label for="textarea">Address</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupPrepend">Textarea</span>
              </div>
              <textarea class="form-control" id="textarea" name="textarea" placeholder="Textarea" aria-describedby="inputGroupPrepend" autocomplete="off" required></textarea>
              <div class="valid-feedback">
                Looks good!
              </div>
              <div class="invalid-feedback">
                Looks bad!
              </div>
            </div>
          </div>
          <div class="col-md-12 mb-3 form-group">
            <label for="select-one">Example select single</label>
            <select class="form-control" id="select-one" name="select-one">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
            <div class="valid-feedback">
              Looks good!
            </div>
            <div class="invalid-feedback">
              Looks bad!
            </div>
          </div>
          <div class="col-md-12 mb-3 form-group">
            <label for="select-multiple">Example select multiple</label>
            <select multiple class="form-control" id="select-multiple" name="select-multiple">
              <option selected>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
            <div class="valid-feedback">
              Looks good!
            </div>
            <div class="invalid-feedback">
              Looks bad!
            </div>
          </div>
          <div class="form-group">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="checkbox" required>
              <label class="form-check-label" for="checkbox">
                Agree to terms and conditions
              </label>
              <div class="valid-feedback">
                Hmmm! So you agreed.
              </div>
              <div class="invalid-feedback">
                You must agree before submitting.
              </div>
            </div>
          </div>
        </div>
        <button class="btn btn-outline-primary" type="submit">Submit form</button>
        <button class="btn btn-outline-warning" type="reset">Reset form</button>
      </form>
    </div>
  <!-- ======= Footer ======= -->
  <%@ include file = "/WEB-INF/views/layout/footer.jsp"%>

  

  <!-- Vendor JS Files -->
  <%@ include file = "/WEB-INF/views/layout/script.jsp"%>



</body>

</html>
