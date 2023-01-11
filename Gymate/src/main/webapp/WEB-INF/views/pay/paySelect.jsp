<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
	background-color: #5f5f5f;
}

#payplan1, #payprice1, #update1 {
	display: none;
}

#imgg {
	opacity: 0.7;
	width: 100%;
	height: 400px;
	object-fit: cover;
	filter: brightness(20%);
}
</style>
</head>
<body>
	<div>
		<img id="imgg" alt="HTML" src="images/bg/bg-5.jpg">
	</div>
	<br>
	<br>
	<div align="center">
		<div class="card" style="width: 40rem;">
			<img src="..." class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">${vo1.productName }</h5>
			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item" id="paynum">주문번호 : ${vo.payNum }</li>
				<li class="list-group-item" id="payplan">결제방식 : <c:if
						test="${vo.payPlan == 0}">현금결제</c:if> <c:if
						test="${vo.payPlan == 1}">카드결제</c:if></li>
				<li class="list-group-item" id="paycount"></li>
				<li class="list-group-item" id="payprice">결제금액 : ${vo.price }</li>
				<li class="list-group-item" id="payplan1">결제방식 : <select
					id="pl" name="pl"><option value="1">카드결제</option>
						<option value="0">현금결제</option></select></li>
				<li class="list-group-item" id="payprice1">수량 : <input
					type="number" id="pr" name="pr" min="1"></li>
				<li class="list-group-item">구매날짜 : ${vo.payDate }</li>
			</ul>
			<div class="card-body">
				<a href="#" onclick="location.href='paySelectListC.do'" class="card-link">목록</a> 
				<a href="#" onclick="updatePayForm()" class="card-link" id="update">주문
					수정</a> <a href="#"
					onclick="updatePay('${vo.payNum}', pl.value, pr.value)"
					class="card-link" id="update1">수정 완료</a> <a href="#"
					onclick="deletePay('${vo.payNum}')" class="card-link">구매 취소</a>
			</div>
		</div>
	</div>
	<br>
	<br>


	<form id="frm1" action="payUpdate.do" method="POST">
		<input type="hidden" id="id1" name="id1"> <input type="hidden"
			id="pl1" name="pl1"> <input type="hidden" id="pr1" name="pr1">
	</form>

	<form id="frm" action="payDelete.do" method="POST">
		<input type="hidden" id="id" name="id">
	</form>

	<script type="text/javascript">
		
		let totalprice = parseInt(${vo.price });
		let price = parseInt(${vo1.price });
		let count = totalprice/price;
		document.getElementById("paycount").innerText = "수량 : " + count;
		
		function updatePay(id, pl, pr) {
			document.getElementById("id1").value = id;
			document.getElementById("pl1").value = pl;
			let price = pr * ${vo1.price}
			;
			document.getElementById("pr1").value = price;
			console.log(id + " " + pl + " " + pr);
			frm1.submit();
		}

		function deletePay(id) {
			document.getElementById("id").value = id;
			frm.submit();
		}

		function updatePayForm() {
			let a = document.getElementById("payplan1");
			let b = document.getElementById("payprice1");
			let c = document.getElementById("update1");
			let d = document.getElementById("update");
			a.style.display = "block";
			b.style.display = "block";
			c.style.display = "inline";
			d.style.display = "none";
		}
	</script>
</body>
</html>