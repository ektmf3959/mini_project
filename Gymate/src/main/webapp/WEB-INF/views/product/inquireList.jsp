<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
		</section>>
<div align="center">
	<div class="row justify-content-center">
			<div class="col-lg-8 text-center">
				<div class="section-title">
					<div class="divider mb-3"></div>
					<h2>[ADMIN] 문의 List</h2>
				</div>
			</div>
	</div>
<div>
<br><br>
	
	<div class="row justify-content-center pb-5">
      <div class="col-lg-9 text-center">
    	<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col">제품번호</th>
			      <th scope="col">제품이름</th>
			      <th scope="col">가격</th>
			      <th scope="col">수량</th>
			      <th scope="col">멤버Id</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:if test="${empty product}">
					<tr>
						<td colspan="5" align="center">게시글이 존재하지 않습니다.</td>
					</tr>
				</c:if>
				<c:if test="${not empty product}">
					<c:forEach items="${product }" var="p">  
						
						<tr class="table-light" onMouseover="this.style.backgroundColor='yellow';"
 						onMouseout="this.style.backgroundColor='white';"
 						onClick = "selectInquire('${p.productNum}')">
							<td align="center">${p.productNum }</td>
							<td align="center">${p.productName }</td>
							<td align="center">${p.price }</td>
							<td align="center">${p.count }</td>
							<td align="center">로그인한 멤버 id</td>
						</tr>
					</c:forEach>
				</c:if>
			   
			  </tbody>
	</table>	
      </div>
    </div>

  </div>
<br><br><br><br><br><br>
	
	
	<div>
		<form id="frm" action="inquireSelect.do" method="post">
			<input type="hidden" id="productNum" name="productNum">
		</form>
	</div>

</div>
<script type="text/javascript">
	function selectInquire(productNum) {
		document.getElementById("productNum").value = productNum;
		frm.submit();
	}
</script>
</body>
</html>