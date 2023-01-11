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
<br>

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
		
			<c:if test="${empty list}">
					<tr>
						<td colspan="5" align="center">게시글이 존재하지 않습니다.</td>
					</tr>
			</c:if>
			
			
			<c:if test="${not empty list}">
				<c:forEach items="${list }" var="p">  
	
			<div class="col-lg-8 col-md-12">
				<div class="single-course">
					<img src="./fileUpload/${p.PRODUCT_ATTACH}" alt="" class="img-fluid">

					<ul class="list-group list-group-horizontal-sm mt-5 mb-4">
					  <li class="list-group-item "><span class="text-lg text-color">2.5</span> Hours</li>
					  <li class="list-group-item"><span class="text-lg text-color">600+</span> calories burnt</li>
					  <li class="list-group-item"><span class="text-lg text-color">75%</span> workout intensity</li>
					</ul>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae deserunt ducimus quod at quasi reiciendis expedita quae officia voluptatum nesciunt obcaecati suscipit eius, sequi, optio, saepe soluta accusamus. At, nam.</p>
					<p>when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</p>

					<div class="row mt-5" align="center">
						<div class="col-lg-12">
							<h3 class="mb-4">Schedule</h3>
						</div>
					  <div class="col-sm-4">
					    <div class="card bg-gray rounded-0">
					      <div class="card-body">
					        <h4 class="card-title mb-1"><i class="ti-timer mr-2"></i>Sunday</h4>
					        <p class="card-text">10am-12pm</p>
					      </div>
					    </div>
					  </div>
					  <div class="col-sm-4">
					    <div class="card bg-gray rounded-0">
					      <div class="card-body">
					        <h4 class="card-title mb-1"><i class="ti-timer mr-2"></i>Saturday</h4>
					        <p class="card-text">12am-2pm</p>
					      </div>
					    </div>
					  </div>
					  <div class="col-sm-4">
					    <div class="card bg-gray rounded-0">
					      <div class="card-body">
					        <h4 class="card-title mb-1"><i class="ti-timer mr-2"></i>wednesday</h4>
					        <p class="card-text">12am-2pm</p>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
			</div>

			<div class="col-lg-4">
				<div class= "course-widget border py-4 px-2 mt-5 mt-lg-0">
					<h3 class="text-center mb-3">${p.PRODUCT_NAME }</h3>
					<ul class="list-group  list-group-flush">
						
					  <li class="list-group-item d-flex justify-content-between align-items-center text-black">
					  	TRAINER <span class="text-black-50">${p.MEMBER_NAME}</span>
					  </li>
	 				  <li class="list-group-item d-flex justify-content-between align-items-center text-black">
					  	CAREER<span class="text-black-50">${p.TRAINER_CAREER }</span>
					  </li>
					  <li class="list-group-item d-flex justify-content-between align-items-center text-black">
					  	PRIZE<span class="text-black-50">${p.TRAINER_PRIZE }</span>
					  </li>
					  <li class="list-group-item d-flex justify-content-between align-items-center text-black">
					  	PRICE<span class="text-black-50">${p.PRICE }</span>
					  </li>
					</ul>
					<div class="text-center mt-3">
						<button class="btn btn-main mt-3" onclick="actionForm('P')">PAY</button>
                        <button class="btn btn-main mt-3" onclick="actionForm('L')">LIST</button>
						
					</div>
				</div>
			</div>
			</c:forEach>
			</c:if>
		</div>
	</div>
</section>
</div>
</div>
<!-- Section Course ENd -->
	</div>
	</div>


	<div>
		<form id="frm" method="post">
			<input type="hidden" id="num" name="num">
		</form>
	</div>
	
	<script type="text/javascript">
		function actionForm(str) {
			switch (str) {
			case 'P': // 바로결제
				frm.action = "paymentForm.do";
				frm.submit();
				break;
			default: // 목록보기
				location.href = "trainerSelectList.do";
			}
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