<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		</section>
<div class="row justify-content-center">
	<div class="col-lg-8 text-center">
		<div class="section-title">
			<div class="divider mb-3"></div>
			<h2>[ADMIN] 상품 수정</h2>
		</div>
	</div>
</div>
<div align="center">
			<div>
	<form id="frm" action="productUpdate.do" method="post" enctype="multipart/form-data">
		<div>	
			<table border="1">
				<tr>
					<th width="100">제품번호</th>
					<td><input type="number" id="productNum" name="productNum" value="${vo.productNum }" readonly="readonly"> </td>
				</tr>
				<tr>					
					<th>가격</th>
					<td><input type="number" id="price" name="price" value="${vo.price }"></td>
				</tr>
				<tr>
					<th>수량</th>
					<td><input type="number" id="count" name="count" value="${vo.count }"></td>
				</tr>
				<tr>	
					<th>상품이름</th>
					<td><input type="text" id="productName" name="productName" value="${vo.productName }"></td>
				</tr>
				<tr>	
					<th>상품설명</th>
					<td>
					<textarea rows="10" cols="80" id="explain" name="explain">${vo.explain }</textarea>
					</td>
				</tr>
				<tr>
					<th>상품사진</th>
					<td colspan="5"><input type="file" id="productFile" name="productFile" value="${vo.productAttach}"></td>
					</tr>	
			</table>
		</div><br>
	<div>
	
		<input type="submit" value="수정">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="취소">&nbsp;&nbsp;&nbsp;
		<input type="button" value="목록" onclick="location.href='productSelectList.do'">
	</div>
	</form>	
	</div>
		</div>

</body>
</html>