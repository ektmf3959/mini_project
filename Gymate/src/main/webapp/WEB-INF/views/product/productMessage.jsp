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
<div align="center">
<div class="row justify-content-center">
					<div class="col-lg-8 text-center">
						<div class="section-title">
							<div class="divider mb-3"></div>
							<h2>${message}</h2>
						</div>
					</div>
				</div>
<div>
					<button type="button" onclick="subCall('H')">홈</button>&nbsp;&nbsp;
					<button type="button" onclick="subCall('M')">마이페이지</button>&nbsp;&nbsp;
				</div>
				<div>
					<form id="frm" method="post">
						<input type="hidden" id="num" name="num" value="${product.productNum }">
					</form>
				</div>
</div>
<script type="text/javascript">
		
		function subCall(str){
			if(str == 'H'){
				frm.action = "main.do"; // 메인
			}else if(str == 'M'){
				frm.action = "myInfo.do"; // 마이페이지
			}
			frm.submit();
		}
	</script>
</body>
</html>