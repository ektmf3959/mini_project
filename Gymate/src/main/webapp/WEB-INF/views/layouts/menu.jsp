<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap.min css -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<!-- Icofont Css -->
<link rel="stylesheet" href="plugins/icofont/icofont.min.css">
<!-- Themify Css -->
<link rel="stylesheet" href="plugins/themify/css/themify-icons.css">
<!-- animate.css -->
<link rel="stylesheet" href="plugins/animate-css/animate.css">
<!-- Magnify Popup -->
<link rel="stylesheet"
	href="plugins/magnific-popup/dist/magnific-popup.css">
<!-- Owl Carousel CSS -->
<link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="plugins/slick-carousel/slick/slick-theme.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">

</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navigation fixed-top" id="navbar">
		<div class="container-fluid">
			<a class="navbar-brand" href="main.do">
				<h2 class="text-white text-capitalize">
					</i>Gym<span class="text-color">ate</span>
				</h2>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsid" aria-controls="navbarsid"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="ti-view-list"></span>
			</button>
			<div class="collapse text-center navbar-collapse" id="navbarsid">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item active"><a class="nav-link" href="main.do">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Menu</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="productSelectList.do">Product</a></li>
							<li><a class="dropdown-item" href="trainerSelectList.do">PT</a></li>
							<c:if test="${memberAuthor eq 'TRAINER' }">
								<li><a class="dropdown-item" href="inquire.do">제작문의</a></li>
							</c:if>
							<c:if test="${memberAuthor eq 'ADMIN' }">
								<li><a class="dropdown-item" href="inquireList.do">제작문의List</a></li>
							</c:if>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="information.do">Information</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Board</a>
						<ul class="dropdown-menu">
							<li>
								<form id="noticefrm" action="boardSelectList.do">
									<input type="hidden" name="searchMenu" value="MENU"> <input
										type="hidden" name="search" value=""> <input
										type="hidden" name="pageNum" value="1"> <input
										type="hidden" name="pageAmount" value="20"><a
										class="dropdown-item" href="#" onclick="noticefrm.submit()">게시판
									</a>
								</form>
							</li>
						</ul></li>

				

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">MyPage</a>
						<ul class="dropdown-menu">
							<c:if test="${empty memberNum}">
								<li><a class="dropdown-item" href="memberLoginForm.do">개인정보</a></li>
							</c:if>
							<c:if test="${not empty memberNum }">
								<li><a class="dropdown-item" href="myInfo.do">개인정보</a></li>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="pointSelectList.do">포인트</a></li>
									<li><a class="dropdown-item" href="paySelectListC.do">구매내역</a></li>
									<c:if test="${memberAuthor eq 'ADMIN' }">
									<li><a class="dropdown-item" href="paySelectListT.do">판매내역</a></li>
									</c:if>
								</ul>
							</c:if>
							<c:if test="${not empty memberNum }">
								<li><a class="dropdown-item" href="memberDeleteMessage.do">회원탈퇴</a></li>
							</c:if>
						</ul></li>
				</ul>
			
				<c:choose>
					<c:when test="${empty memberNum}">
						<div
							class="my-md-0 ml-lg-4 mt-4 mt-lg-0 ml-auto text-lg-right mb-3 mb-lg-0">
							<a href="memberLoginForm.do">
								<h3 class="text-color mb-0">
									<i class="ti-user"></i> &nbsp; Login
								</h3>
							</a>
						</div>
					</c:when>
					<c:otherwise>
						<a
							class="my-md-0 ml-lg-4 mt-4 mt-lg-0 ml-auto text-lg-right mb-3 mb-lg-0"
							href="memberLogout.do">
							<h3 class="text-color mb-0">
								<i class="ti-user"></i> &nbsp; Logout
							</h3>
						</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		</div>
	</nav>

</body>
</html>