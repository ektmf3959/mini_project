<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="GYm,fitness,business,company,agency,multipurpose,modern,bootstrap4">

<meta name="author" content="Themefisher.com">

<title>GymFit| Fitness template</title>
</head>
<body>
	<br>
	<br>
	<br>

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
						<h2>주문/결제</h2>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>



		<div>
			<form id="frm" method="post">
				<div class="row justify-content-center pb-5">
					<div class="col-lg-9 text-center">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">제품사진</th>
									<th scope="col">제품이름</th>
									<th scope="col">수량</th>
									<th scope="col">가격</th>
									<th>결제 방식</th>
								</tr>
							</thead>
							<tbody>


								<tr class="table-light">
									<td align="center"><img
										src="./fileUpload/${product.productAttach }"
										style="width: 90px;"></td>
									<td align="center">${product.productName }</td>
									<td align="center"><input type="text" id="count" name="count" value="${count }" readonly></td>
									<td align="center"><input type="text" id="price"
										name="price" readonly></td>
									<td align="center"><select name="payPlan">
											<option value="0">현금결제</option>
											<option value="1">카드결제</option>
									</select></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
				<br>
				<div class="row justify-content-center pb-5">
					<div class="col-lg-9 text-center">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">이름</th>
									<th scope="col">전화번호</th>
									<th scope="col">주소</th>
								</tr>
							</thead>
							<tbody>


								<tr class="table-light">
									<td align="center">${memberName }</td>
									<td align="center">${memberTel }</td>
									<td align="center">${memberAddress }</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
				<br>
				<br>
				<div>
					<button class="btn btn-main mt-3" type="button"
						onclick="subCall('U')">결제</button>
					&nbsp;&nbsp;
				</div>
				<input type="hidden" id="productNum" name="productNum"
					value="${product.productNum }">
			</form>
		</div>
		<br>
		<br>
	</div>
	<script type="text/javascript">
		let price = parseInt(${product.price });
		let count1 = parseInt(${count});
		let a = document.getElementById("price");
		a.value = price * count1;
		console.log(price);
		
		function subCall(str){
			if(str == 'U'){
				frm.action = "payInsert.do";
			}
			frm.submit();
		}
	</script>
</body>
</html>