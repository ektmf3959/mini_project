<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Gymate - Gym Fitness Bootstrap 5 Template</title>
<meta name="robots" content="index, follow" />
<meta name="description"
	content="Try out Gymate Gym Fitness Bootstrap 5 Template today because this awesome fitness related website template comes completely free of any cost.">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>

	<div align="center">
		<section class="page-title bg-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<ul class="list-inline mb-0">
							<li class="list-inline-item"><a href="#"
								class="text-sm letter-spacing text-white text-uppercase font-weight-bold">Menu</a></li>
							<li class="list-inline-item"><span class="text-white">|</span></li>
							<li class="list-inline-item"><a href="productSelectList.do"
								class="text-color text-uppercase text-sm letter-spacing">Product</a></li>
							<li class="list-inline-item"><span class="text-white">|</span></li>
							<li class="list-inline-item"><a href="trainerSelectList.do"
								class="text-color text-uppercase text-sm letter-spacing">PT</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<br>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<div class="section-title">
						<div class="divider mb-3"></div>
						<h2>Our product</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- 부트스트랩의 모달 창을 사용할려면 아래의 class 이름들을 그대로 사용해야 한다. 변경하면 모양이 달라진다.-->
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<!-- 사용자 지정 부분① : id명 -->
			   
			<div class="modal-dialog">
				     
				<!-- Modal content-->
				     
				<div class="modal-content">
					       
					<div class="modal-header">
						         
						<h4 class="modal-title">PAYMENT</h4>
						<!-- 사용자 지정 부분② : 타이틀 -->
						         
						<button type="button" class="close" data-dismiss="modal">×</button>

						       
					</div>
					       
					<div class="modal-body">
						         
						<p>결제하시겠습니까?</p>
						<!-- 사용자 지정 부분③ : 텍스트 메시지 -->
						       
					</div>
					<div class="modal__actions">
						<button type="button" class="modal__action">예</button>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" class="modal__action" data-dismiss="modal">아니오</button>
					</div>
					       
					<div class="modal-footer">
						       
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						       
					</div>
					     
				</div>
				   
			</div>
			 
		</div>

		<!-- Shop Page Section Start -->
		<div class="section section-padding-t150-b130 section-fluid">
			<div class="container">

				<!-- 상단 -->
				<div class="row mb-10">
					<div class="col-12">
						<!-- Shop Top Bar Start -->
						<div class="shop-top-bar shop-top-bar-flex" data-aos="fade-up">
							<div class="shop-topbar-left">
								<div class="page-show">
									<ul>
										<li>Show</li>
										<li><a href="#">9</a></li>
										<li><a href="#">12</a></li>
										<li><a href="#">18</a></li>
										<li><a href="#">24</a></li>
									</ul>
								</div>
							</div>
							<div class="shop-topbar-right shop-tab-flex">
								<div class="short-by">
									<a href="#">Short By</a>
									<ul class="sort-by-dropdown">
										<li class="active"><a href="#">Default sorting</a></li>
										<li><a href="#">Sort by popularity</a></li>
										<li><a href="#">Sort by newness</a></li>
										<li><a href="#">Sort by price: low to high</a></li>
										<li><a href="#">Sort by price: high to low</a></li>
									</ul>
								</div>
								<div class="filter short-by">
									<a href="#">filter</a>
									<ul class="sort-by-dropdown">
										<li class="active"><a href="#">Default Filter</a></li>
										<li><a href="#">9 items</a></li>
										<li><a href="#">16 items</a></li>
										<li><a href="#">13 items</a></li>
									</ul>
								</div>
								<div class="shop-tab nav">
									<a class="active" href="#"> <i class="fa fa-th"></i>
									</a>
								</div>
							</div>
						</div>
						<!-- Shop Top Bar End -->
					</div>
				</div>
				<div>
					<div class="row mb-n10">
						<c:forEach items="${product }" var="p">
							<div class="col col-lg-3 col-md-4 mb-10">
								<!--  Single Grid product Start -->
								<div class="single-grid-product">
									<div class="product-image">
										<img src="./fileUpload/${p.productAttach }" class="w-100"
											alt="">

										<div class="product-action">
											<ul>
												<li onclick="selectProduct('${p.productNum}')"><button>+</button></li>
												<li>&nbsp;&nbsp;
													<button type="button" data-toggle="modal"
														data-target="#myModal">￦</button>
												</li>
											</ul>
										</div>
									</div>
									<div class="product-content text-left">
										<h3 class="title">${p.productName }</h3>
										<p class="product-price">
											<span class="discounted-price">￦ ${p.price }</span>
										</p>
									</div>
								</div>
								<!--  Single Grid product End -->
							</div>
						</c:forEach>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div>
		<form id="frm" method="post">
			<input type="hidden" id="num" name="num">
			<div align="center">
				<c:if test="${memberAuthor eq 'ADMIN' }">
					<button class="btn btn-main mt-3" type="button"
						onclick="insertProduct(num)">추가</button>&nbsp;&nbsp;
				</c:if>
			</div>
		</form>
	</div>
	<br>
	<br>
	<!-- Shop Page Section End -->

	<script type="text/javascript">
		function selectProduct(num) {
			document.getElementById("num").value = num;
			frm.action = "productSelect.do"
			frm.submit();
		}
		function insertProduct(num) {
			document.getElementById("num").value = num;
			frm.action = "productInsertForm.do"
			frm.submit();
		}
	</script>
	<!-- JS
    ============================================ -->

	<!-- Vendors JS -->
	<script src="shoppingCss/assets/js/vendor/vendor.min.js"></script>

	<!-- Plugins JS -->
	<script src="shoppingCss/assets/js/plugins/aos.min.js"></script>
	<script src="shoppingCss/assets/js/plugins/jquery.ajaxchimp.min.js"></script>
	<script src="shoppingCss/assets/js/plugins/jquery.counterup.min.js"></script>
	<script
		src="shoppingCss/assets/js/plugins/jquery.magnific-popup.min.js"></script>
	<script src="shoppingCss/assets/js/plugins/vivus.min.js"></script>
	<script src="shoppingCss/assets/js/plugins/svg-inject.min.js"></script>
	<script src="shoppingCss/assets/js/plugins/swiper.min.js"></script>
	<script src="shoppingCss/assets/js/plugins/waypoints.min.js"></script>

	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<!-- <script src="shoppingCss/assets/js/vendor/vendor.min.js"></script>
    <script src=shoppingCss/"assets/js/plugins/plugins.min.js"></script> -->

	<!-- Main Activation JS -->
	<script src="shoppingCss/assets/js/main.js"></script>
</body>
</html>