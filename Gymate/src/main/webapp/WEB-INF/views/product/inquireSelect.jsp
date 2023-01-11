<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="GYm,fitness,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="Themefisher.com">

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
<br><br>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8 text-center">
				<div class="section-title">
					<div class="divider mb-3"></div>
					<h2>Our PT detail</h2>
				</div>
			</div>
		
	</div>
	
<!-- Section Course Start -->
<div id="page" class="section">
 <div class="section section-padding">
<section class="section course">
	<div class="container">
		<div class="row">
		
			<c:if test="${empty product}">
					<tr>
						<td colspan="5" align="center">게시글이 존재하지 않습니다.</td>
					</tr>
			</c:if>
			
			
			<c:if test="${not empty product}">
	
			<div class="col-lg-8 col-md-12">
				<div class="single-course">
					<img src="./fileUpload/${product.productAttachDir}" alt="" class="img-fluid">					
				</div>
			</div>

			<div class="col-lg-4">
				<div class= "course-widget border py-4 px-2 mt-5 mt-lg-0">
					<h3 class="text-center mb-3">${product.productName }</h3>
					<ul class="list-group  list-group-flush">
						
					  <li class="list-group-item d-flex justify-content-between align-items-center text-black">
					  	PRODUCT_NUMBER <span class="text-black-50">${product.productNum}</span>
					  </li>
					  <li class="list-group-item d-flex justify-content-between align-items-center text-black">
					   PRICE<span class="text-black-50">${product.price }</span>
					  </li>
					  <li class="list-group-item d-flex justify-content-between align-items-center text-black">
					   COUNT<span class="text-black-50">${product.count }</span>
					  </li>
					  <li class="list-group-item d-flex justify-content-between align-items-center text-black">
					  	EXPLAIN<span class="text-black-50">${product.explain }</span>
					  </li>
					  
					</ul>
					<div>
						<button class="btn btn-main mt-3" type="button" onclick="subCall('U')">승인</button>&nbsp;&nbsp;
						<button class="btn btn-main mt-3" type="button" onclick="subCall('D')">삭제</button>&nbsp;&nbsp;
						<button class="btn btn-main mt-3" type="button" onclick="subCall('L')">목록</button>&nbsp;&nbsp;
					</div>
				</div>
			</div>
			</c:if>
		</div>
	</div>
	</section>
	</div>
	</div>
</div>

	
</div>
	<br>
	<div>
		<form id="frm" method="post">
			<input type="hidden" id="num" name="num" value="${product.productNum }">
		</form>
	</div>
	
	<script type="text/javascript">
		
		function subCall(str){
			if(str == 'U'){
				frm.action = "inquireUpdate.do"; // 수정
			}else if(str == 'D'){
				frm.action = "productDelete.do"; // 삭제
			}else if(str == 'L'){
				frm.action = "inquireList.do"; // 목록
			}
			frm.submit();
		}
	</script>				
<!-- 
    Essential Scripts
    =====================================-->


   <!-- Main jQuery -->
   <script src="plugins/jquery/jquery.js"></script>
   <!-- Bootstrap 4.3.1 -->
   <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
   <!-- Slick Slider -->
   <script src="plugins/slick-carousel/slick/slick.min.js"></script>
   <!--  Magnific Popup-->
   <script src="plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
   <!-- Form Validator -->
   <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"></script>
   <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
   <!-- Google Map -->
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
   <script src="plugins/google-map/gmap.js"></script>

   <script src="js/script.js"></script>
</body>
</html>