<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body class="body-wrapper">
<section class="page-title bg-2">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
          <ul class="list-inline mb-0">
            <li class="list-inline-item"><a href="main.do" class="text-sm letter-spacing text-white text-uppercase font-weight-bold">Home</a></li>
            <li class="list-inline-item"><span class="text-white">|</span></li>
            <li class="list-inline-item"><a href="#" class="text-color text-uppercase text-sm letter-spacing">Team</a></li>
          </ul>
      </div>
    </div>
  </div>
</section>
<section class="login py-5 border-top-1">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-5 col-md-8 align-item-center">
        <div class="border">
          <h3 class="bg-gray p-4">Login Now</h3>
          <form id="frm" action="memberLogin.do" method="post"> 
            <fieldset class="p-4">
              <input class="form-control mb-3" type="text" id="memberId" name="memberId" placeholder="Username" required>
              <input class="form-control mb-3" type="password" id="memberPw" name="memberPw" placeholder="Password" required>
               <div class="text-center">
              <button type="submit" class="btn btn-main mt-3">Log in</button>
              </div>
              <a class="text-color text-uppercase text-sm letter-spacing" onclick="location.href='memberInsertForm.do'">Register Now</a>
            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="loginCss/plugins/jquery/jquery.min.js"></script>
<script src="loginCss/plugins/bootstrap/popper.min.js"></script>
<script src="loginCss/plugins/bootstrap/bootstrap.min.js"></script>
<script src="loginCss/plugins/bootstrap/bootstrap-slider.js"></script>
<script src="loginCss/plugins/tether/js/tether.min.js"></script>
<script src="loginCss/plugins/raty/jquery.raty-fa.js"></script>
<script src="loginCss/plugins/slick/slick.min.js"></script>
<script src="loginCss/plugins/jquery-nice-select/js/jquery.nice-select.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
<script src="loginCss/plugins/google-map/map.js" defer></script>

<script src="loginCss/js/script.js"></script>
</body>
</html>