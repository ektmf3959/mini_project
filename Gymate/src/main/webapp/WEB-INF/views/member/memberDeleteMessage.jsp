<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="page-title bg-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<ul class="list-inline mb-0">
						<li class="list-inline-item"><a href="index.html"
							class="text-sm letter-spacing text-white text-uppercase font-weight-bold">Home</a></li>
						<li class="list-inline-item"><span class="text-white">|</span></li>
						<li class="list-inline-item"><a href="#"
							class="text-color text-uppercase text-sm letter-spacing">Team</a></li>
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
						<h3 class="bg-gray p-4">Delete My Account</h3>
						<fieldset class="p-4">
						<p>정말로 지우시겠습니까?</p>
							<div class="text-center">
								<button type="button" onclick="subCall('E')"
									class="btn btn-main mt-3">Delete</button>
								<button type="button" onclick="subCall('D')"
									class="btn btn-main mt-3">Cancel</button>
							</div>
						</fieldset>
					</div>
					<div>
						<form id="frm" method="post">
							<input type="hidden" id="id" name="id" value="${memberNum }">
						</form>
						<script type="text/javascript">
							function subCall(str) {
								if (str == 'E') {
									frm.action = "memberDelete.do"; //삭제
								} else {
									frm.action = "myInfo.do"; //개인정보
								}
								frm.submit();
							}
						</script>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>