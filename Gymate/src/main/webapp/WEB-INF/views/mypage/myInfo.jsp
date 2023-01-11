<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<li class="list-inline-item"><a href="main.do"
							class="text-sm letter-spacing text-white text-uppercase font-weight-bold">Home</a></li>
						<li class="list-inline-item"><span class="text-white">|</span></li>
						<li class="list-inline-item"><a href="#"
							class="text-color text-uppercase text-sm letter-spacing">Team</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<section class="user-profile section">
		<div class="container">
			<div class="center">
				<div class="row justify-content-center">
					<div class="col-lg-4">
						<div class="sidebar">
							<!-- User Widget -->
							<div class="widget user">
								<!-- User Image -->
								<div class="image d-flex justify-content-center">
									<img src="loginCss/images/user/user-thumb.jpg" alt="" class="">
								</div>
								<!-- User Name -->
								<h5 class="text-center">${memberName}</h5>
							</div>
							<!-- Dashboard Links -->
							<div class="widget user-dashboard-menu">
								<ul>
									<li><a href="index.html">Savings Dashboard</a></li>
									<li><a href="index.html">Saved Offer</a></li>
									<li><a href="index.html">Favourite Stores</a></li>
									<li><a href="index.html">Recommended</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-8">
						<!-- Edit Profile Welcome Text -->
						<div class="widget welcome-message">
							<h2>profile</h2>
							<p>Lorem</p>
						</div>
						<!-- Edit Personal Info -->
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="widget personal-info">
									<h3 class="widget-header user">Personal Information</h3>
									<!-- 회원아이디 -->
									<div class="form-group">
										<label for="last-name">회원아이디</label>
										<div class="col-lg-9 col-md-8">${memberId}</div>
									</div>
									<!-- 회원아이디 -->
									<div class="form-group">
										<label for="last-name">회원이름</label>
										<div class="col-lg-9 col-md-8">${memberName}</div>
									</div>
									<!-- 회원나이 -->
									<div class="form-group">
										<label for="last-name">Birth</label>
										<div class="col-lg-9 col-md-8">${memberAge}</div>
									</div>
									<!-- 회원전화번호 -->
									<div class="form-group">
										<label for="last-name">회원전화번호</label>
										<div class="col-lg-9 col-md-8">${memberTel}</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<!-- Change Password -->
								<div class="widget change-password">
									<h3 class="widget-header user">Add Information</h3>
									<!-- 회원주소 -->
									<div class="form-group">
										<label for="last-name">회원주소</label>
										<div class="col-lg-9 col-md-8">${memberAddress}</div>
									</div>
									<!-- 회원키 -->
									<div class="form-group">
										<label for="last-name">키</label>
										<div class="col-lg-9 col-md-8">${memberHeight}</div>
									</div>
									<!-- 회원 몸무게 -->
									<div class="form-group">
										<label for="last-name">몸무게</label>
										<div class="col-lg-9 col-md-8">${memberWeight}</div>
									</div>
									<!-- 성별 -->
									<div class="form-group">
										<label for="last-name">성별</label>
										<div class="col-lg-9 col-md-8">${memberGender}</div>
									</div>
									<div align="center">
										<button type="button" class="btn btn-main mt-3"
											onclick="location.href='memberUpdateForm.do'">Edit</button>
										&nbsp;&nbsp;&nbsp;
										<button type="button" class="btn btn-main mt-3"
											onclick="location.href='main.do'">Cancel</button>
									</div>
								</div>
							</div>
							<c:if test="${memberAuthor ne 'CUSTOMER' }">
								<div class="col-lg-6 col-md-6">
									<!-- Change Email Address -->
									<div class="widget change-email mb-0">
										<h3 class="widget-header user">Trainer Information</h3>
										<!-- 성별 -->
										<div class="form-group">
											<label for="last-name">수상</label>
											<div class="col-lg-9 col-md-8">${trainerPrize }</div>
										</div>
										<!-- 커리어 -->
										<div class="form-group">
											<label for="last-name">커리어</label>
											<div class="col-lg-9 col-md-8">${trainerCareer}</div>
										</div>
										<!-- SNS -->
										<div class="form-group">
											<label for="last-name">SNS</label>
											<div class="col-lg-9 col-md-8">${trainerSns}</div>
										</div>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>

</html>