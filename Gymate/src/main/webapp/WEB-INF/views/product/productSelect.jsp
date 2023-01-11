<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Gymate - Gym Fitness Bootstrap 5 Template</title>
<meta name="robots" content="index, follow" />
<meta name="description"
	content="Try out Gymate Gym Fitness Bootstrap 5 Template today because this awesome fitness related website template comes completely free of any cost.">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->
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
						<h2>product detail</h2>
					</div>
				</div>
			</div>

		</div>
		<!---------------------------------------- START CSS ---------------------------------------->
		<div id="page" class="section">
			<!-- Single Product Section Start -->
			<div class="section section-padding">
				<div class="container">
					<div class="row">
						<div class="col-lg-6" data-aos="fade-up">
							<div class="single-product-image">
								<img src="./fileUpload/${product.productAttach}" alt="gym">
							</div>
						</div>
						<div class="col-lg-6">

							<div class="single-product-content">
								<h5 class="title">${product.productName }</h5>
								<span class="price-new">￦ ${product.price }</span>

								<div class="product-description">
									<p>${product.explain }</p>
								</div>
								<div class="quantity-button-wrapper">
									<div class="quantity">
										<label>수량</label> <input type="number" id="count" name="count"
											value="1" min="1" max="${product.count }"
											onchange="countchange()" style="width: 100px;">
									</div>
								</div>
								<div align="center">
									<input type="hidden" id="num" name="num">
									<p></p>
									<c:if test="${empty memberNum }">
										<button class="btn btn-main mt-3"
											onclick="location.href='memberLoginForm.do'">PAY</button> &nbsp;&nbsp;
								</c:if>
									<c:if test="${not empty memberNum }">
										<button class="btn btn-main mt-3" onclick="actionForm('P')">PAY</button> &nbsp;&nbsp;
                                </c:if>
									<button class="btn btn-main mt-3" onclick="actionForm('L')">LIST</button>
								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div align="center">
		<form id="frm" method="post">
			<input type="hidden" id="count1" name="count1"> <input
				type="hidden" id="num" name="num" value="${product.productNum }">
			<c:if test="${memberAuthor eq 'ADMIN' }">
				<button class="btn btn-main mt-3" type="button"
					onclick="subCall('U')">수정</button>&nbsp;&nbsp;
						<button class="btn btn-main mt-3" type="button"
					onclick="subCall('D')">삭제</button>&nbsp;&nbsp;
						</c:if>
		</form>
	</div>
	<br>
	<br>


	<!---------------------------------------- END CSS ---------------------------------------->


	<script type="text/javascript">
		function countchange() {
			let a = document.getElementById("count1");
			let b = document.getElementById("count").value;
			a.value = b;
		}

		function actionForm(str) {
			switch (str) {
			case 'P': // 바로결제
				frm.action = "paymentForm.do";
				frm.submit();
				break;
			default: // 목록보기
				location.href = "productSelectList.do";
			}
		}
		function subCall(str) {
			if (str == 'U') {
				frm.action = "productUpdateForm.do"; // 수정
			} else if (str == 'D') {
				frm.action = "productDelete.do"; // 삭제
			}
			frm.submit();
		}
	</script>



	<!-- JS
    ============================================ -->

	<script src="shoppingCss/assets/js/vendor/vendor.min.js"></script>
	<script src="shoppingCss/assets/js/plugins/plugins.min.js"></script>

	<!-- Use the minified version files listed below for better performance and remove the files listed above -->
	<!-- <script src="shoppingCss/assets/js/vendor/vendor.min.js"></script>
    <script src="shoppingCss/assets/js/plugins/plugins.min.js"></script> -->

	<!-- Main Activation JS -->
	<script src="shoppingCss/assets/js/main.js"></script>
</body>
</html>