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
	<div align="center">
		<section>
			<!--for demo wrap-->
			<h1>구매 목록</h1>
			<br>
			<c:if test="${empty list}">
				<h1>구매목록이 존재하지 않습니다</h1>
			</c:if>
			<c:if test="${not empty list }">
				<c:forEach items="${list }" var="n" varStatus="status">
					<div class="card mb-3" style="max-width: 540px;"
						onclick="selectProduct('${n.payNum}', '${list1[status.index].productNum }')">
						<div class="row g-0">
							<div class="col-md-4">
								<img src="..." class="img-fluid rounded-start" alt="...">
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<h5 class="card-title">${list1[status.index].productName }</h5>
									<p class="card-text">
										<small class="text-muted">구매날짜 ${n.payDate }</small>
									</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${list.size() < 3 }">
				<br><br><br>
			</c:if>
		</section>
	</div>

	<form id="frm" action="paySelect.do" method="POST">
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