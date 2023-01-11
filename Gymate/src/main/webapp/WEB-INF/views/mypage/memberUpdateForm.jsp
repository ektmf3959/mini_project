<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
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
						<form id="frm" action="memberUpdate.do" method="post"
							onsubmit="return formCheck()" enctype="multipart/form-data">
							<input type="hidden" id="memberNum" name="memberNum"
								value="${memberNum }"> 
							<input type="hidden"
								id="memberNum" name="memberId" value="${memberId }"> 
							<input
								type="hidden" id="memberAuthor" name="memberAuthor"
								value="${memberAuthor }">
							<input
								type="hidden" id="memberAge" name="memberAge"
								value="${memberAge}">

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
											<label for="last-name">회원아이디</label> <input type="text"
												class="form-control" value="${memberId}" readonly="readonly">
										</div>
										<div class="form-group">
											<label for="last-name">패스워드</label> <input type="password"
												class="form-control" id="memberPw" name="memberPw"
												required="required">
										</div>
										<div class="form-group">
											<label for="last-name">패스워드 확인</label> <input type="password"
												class="form-control" id="pwc" required="required">
										</div>
										<!-- 회원아이디 -->
										<div class="form-group">
											<label for="last-name">회원이름</label> <input type="text"
												class="form-control" id="memberName" name="memberName" value="${memberName}">
										</div>
										<!-- 회원나이 -->
										<div class="form-group">
											<label for="last-name">Birth</label> <input type="date"
												class="form-control" id="memberAge" name="memberAge" value="${memberAge}">
										</div>
										<!-- 회원전화번호 -->
										<div class="form-group">
											<label for="last-name">회원전화번호</label> <input type="text"
												class="form-control" id="memberTel" name="memberTel" value="${memberTel}">
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<!-- Change Password -->
									<div class="widget change-password">
										<h3 class="widget-header user">Add Information</h3>
										<!-- 회원주소 -->
										<div class="form-group">
											<label for="last-name">회원주소</label> <input type="text"
												class="form-control" id="memberAddress" name="memberAddress" value="${memberAddress}">
										</div>
										<!-- 회원키 -->
										<div class="form-group">
											<label for="last-name">키</label> <input type="text"
												class="form-control" id="memberHeight" name="memberHeight" value="${memberHeight}">
										</div>
										<!-- 회원 몸무게 -->
										<div class="form-group">
											<label for="last-name">몸무게</label> <input type="text"
												class="form-control" id="memberWeight" name="memberWeight" value="${memberWeight}">
										</div>
										<!-- 성별 -->
										<div class="form-group">
											<label for="last-name">성별</label> 
<%-- 											<input type="text" class="form-control" value="${memberGender}"> --%>
											<input type="radio" id="memberGender" name="memberGender"  value="M" >남성&nbsp;&nbsp; 
											<input type="radio" id="memberGender" name="memberGender" value="F" >여성
										</div>
										<div align="center">
											<button type="submit" class="btn btn-main mt-3">Edit</button>
											<button type="reset" class="btn btn-main mt-3"
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
												<label for="last-name">수상</label> <input type="text"
													class="form-control" id="trainerPrize" name="trainerPrize" value="${trainerPrize}">
											</div>
											<!-- 커리어 -->
											<div class="form-group">
												<label for="last-name">커리어</label> <input type="text"
													class="form-control" id="trainerCareer" name="trainerCareer" value="${trainerCareer}">
											</div>
											<!-- SNS -->
											<div class="form-group">
												<label for="last-name">SNS</label> <input type="text"
													class="form-control" id="trainerSns" name="trainerSns" value="${trainerSns}">
											</div>
											<div class="form-group">
												<label for="last-name">profile</label>
												<input type="file" id="file" name="file">
											</div>
										</div>
									</div>
								</c:if>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		function formCheck() {
			let pass1 = document.getElementById("memberPw").value;
			let pass2 = document.getElementById("pwc").value;

			if (pass1 != pass2) {
				alert("패스워드가 일치하지 않습니다.");
				document.getElementById("memberPw").value = "";
				document.getElementById("pwc").value = "";
				document.getElementById("memberPw").focus();
				return false;
			}

			return true;
		}
	</script>
</body>
</html>