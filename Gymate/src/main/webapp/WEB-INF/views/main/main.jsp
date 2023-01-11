<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="main-wrapper ">
		<!-- Section Menu End -->

		<!-- Section Slider Start -->
		<!-- Slider Start -->
		<section class="slider">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<span class="h6 d-inline-block mb-4 subhead text-uppercase">Your
							Mate, Gymate</span>
						<h1 class="text-uppercase text-white mb-5">
							Make Change <span class="text-color">On Your Body</span><br>with
							us
						</h1>
						<c:choose>
							<c:when test="${empty memberNum}">
								<a href="memberLoginForm.do" target="_blank"
									class="btn btn-main ">Join Us <i
									class="ti-angle-right ml-3"></i>
								</a>
							</c:when>
							<c:otherwise>
								<a href="productSelectList.do" target="_blank"
									class="btn btn-main ">Join Us <i
									class="ti-angle-right ml-3"></i>
								</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</section>
		<!-- Section Slider End -->

		<!-- Section Intro Start -->
		<section class="mt-80px">
			<div class="container">
				<div class="row ">
					<div class="col-lg-4 col-md-6">
						<div
							class="card p-5 border-0 rounded-top border-bottom position-relative hover-style-1">
							<span class="number">01</span>
							<h3 class="mt-3">PT로 가는 길</h3>
							<p class="mt-3 mb-4">여기는 PT에 관련된 광고 내용임. 가능한 3줄로 작성하길 바람여기는
								PT에 관련된 광고 내용임. 가능</p>
							<a href="trainerSelectList.do"
								class="text-color text-uppercase font-size-13 letter-spacing font-weight-bold"><i
								class="ti-minus mr-2 "></i>more Details</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="card p-5 border-0 rounded-top hover-style-1">
							<span class="number">02</span>
							<h3 class="mt-3">제품으로 가는 길</h3>
							<p class="mt-3 mb-4">여기는 제품에 관련된 광고 내용임. 가능한 3줄로 작성하길 바람여기는
								제품에 관련된 광고 내용임. 가능한</p>
							<a href="productSelectList.do"
								class="text-color text-uppercase font-size-13 letter-spacing font-weight-bold"><i
								class="ti-minus mr-2 "></i>more Details</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="card p-5 border-0 rounded-top hover-style-1">
							<span class="number">03</span>
							<h3 class="mt-3">간편한 커뮤니티</h3>
							<p class="mt-3 mb-4">우리들의 경험을 공유하여 더 좋은 운동과 생활을을 만듭니다. 당신에게
								한마디 보충제를 첨가하세요!</p>
							<form id="noticefrm1" action="boardSelectList.do">
								<input type="hidden" name="searchMenu" value="MENU"> <input
									type="hidden" name="search" value=""> <input
									type="hidden" name="pageNum" value="1"> <input
									type="hidden" name="pageAmount" value="20"><a href="#"
									onclick="noticefrm1.submit()"
									class=" text-color
									text-uppercase font-size-13 letter-spacingfont-weight-bold"><i
									class="ti-minus mr-2 "></i>more Details</a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- Section Intro End -->
</body>
</html>