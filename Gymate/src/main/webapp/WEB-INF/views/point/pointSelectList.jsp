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
				<h1>포인트 이력</h1>
				<h5 sytle="float: right;">총 포인트 &nbsp;&nbsp;:&nbsp;&nbsp; ${vo2.pointSum }</h5>
				<div class="tbl-header">
					<table cellpadding="0" cellspacing="0" border="0">
						<thead>
							<tr>
								<th>주문번호</th>
								<th>포인트</th>
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
									<td colspan="6" align="center">포인트 이력이 존재하지 않습니다.</td>
								</tr>
							</c:if>
							<c:if test="${not empty list }">
								<c:forEach items="${list }" var="n" varStatus="status">
									<tr onclick="selectProduct('${n.payNum}')">
										<td>${n.payNum }</td>
										<td>${n.pointUse }</td>
										<td>${list1[status.index].payDate }</td>
									</tr>
								</c:forEach>
							</c:if>

						</tbody>
					</table>
			</section>
			<form id="frm" action="pointSelect.do" method="post">
				<input type="hidden" id="id" name="id">
			</form>

			<script type="text/javascript">
				function selectProduct(id) {
					document.getElementById("id").value = id;
					frm.submit();
				}
			</script>
		</div>
</body>
</html>