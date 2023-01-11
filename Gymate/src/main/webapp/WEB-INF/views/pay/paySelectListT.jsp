<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1 {
	font-size: 30px;
	color: black;
	text-transform: uppercase;
	font-weight: 300;
	text-align: center;
	margin-bottom: 15px;
}

table {
	width: 100%;
	table-layout: fixed;
}

.tbl-header {
	background-color: #5f5f5f;
}

.tbl-content {
	height: 500px;
	overflow-x: auto;
	margin-top: 0px;
	border: 1px solid rgba(255, 255, 255, 0.3);
}

th {
	padding: 20px 15px;
	text-align: center;
	font-weight: 500;
	font-size: 20px;
	color: white;
	text-transform: uppercase;
}

td {
	padding: 15px;
	text-align: center;
	vertical-align: middle;
	font-weight: 300;
	font-size: 15px;
	color: black;
	border-bottom: solid 1px rgba(255, 255, 255, 0.1);
}

/* demo styles */
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);

body {
	background: white;
	font-family: 'Roboto', sans-serif;
}

section {
	margin: 50px;
	width: 80%;
	margin-left: 150px;
}

#all {
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
	<div>
		<section>
			<!--for demo wrap-->
			<h1>판매 목록</h1>
			<p></p>
			<br>
			<div class="tbl-header">
				<table cellpadding="0" cellspacing="0" border="0">
					<thead>
						<tr>
							<th>주문번호</th>
							<th>상품번호</th>
							<th>금액</th>
							<th>결제방식</th>
							<th>회원번호</th>
							<th>결제일</th>
						</tr>
					</thead>
				</table>
			</div>
			<div class="tbl-content">
				<table cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<c:if test="${empty list}">
							<tr>
								<td colspan="6" align="center">판매목록이 존재하지 않습니다</td>
							</tr>
						</c:if>
						<c:if test="${not empty list }">
							<c:forEach items="${list }" var="n">
								<tr onclick="selectProduct('${n.payNum}', '${n.productNum }')">
									<td>${n.payNum }</td>
									<td>${n.productNum }</td>
									<td>${n.price }</td>
									<td><c:if test="${n.payPlan == 1}">카드결제</c:if> <c:if
											test="${n.payPlan == 0}">현금결제</c:if></td>
									<td>${n.memberNum }</td>
									<td>${n.payDate }</td>
								</tr>
							</c:forEach>
						</c:if>

					</tbody>
				</table>
			</div>
		</section>
	</div>
	<br>
	<form id="frm" action="paySelectT.do" method="post">
		<input type="hidden" id="id" name="id">
		<input type="hidden" id="id1" name="id1">
	</form>

	<script type="text/javascript">
	
	function selectProduct(id, id1) {
		document.getElementById("id").value = id;
		document.getElementById("id1").value = id1;
			frm.submit();
		}
	</script>
</body>
</html>