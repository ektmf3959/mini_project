<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Gym Template">
    <meta name="keywords" content="Gym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gym | Template</title>
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
	
		<!-- Section Team Start -->
		<br>

		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<div class="section-title">
						<div class="divider mb-3"></div>
						<h2>Our Trainer</h2>
					</div>
				</div>
			</div>
			
		</div>
		
		<br><br>
		
		<!-- Team Section Begin -->
    <section class="team-section team-page spad">
        <div class="container">
         <div class="row">
          <c:if test="${empty list}">
					<tr>
						<td colspan="3" align="center">게시글이 존재하지 않습니다.</td>
					</tr>
		  </c:if>
		  <c:if test="${not empty list }">
			 <c:forEach items="${list }" var="n">
           
                <div class="col-lg-4 col-sm-6">
                    <div class="ts-item set-bg" data-setbg="./fileUpload/${n.TRAINER_ATTACH_DIR }">
                        <div class="ts_text">
                            <div onClick="selectPt('${n.PRODUCT_NUM}')"><h4>${n.MEMBER_NAME }</h4></div>
                            <span>Fitness Trainer</span>
                            <span>${n.TRAINER_CAREER }</span>
                            <span>${n.TRAINER_SNS }</span>
                            
                        </div>
                    </div>
                </div>


       </c:forEach>
				</c:if>
           
            </div>
        </div>
    </section>
    <!-- Team Section End -->

		
		
		<div>
			<form id="frm" action="trainerSelect.do" method="post">
				<input type="hidden" id="num" name="num">
			</form>
		</div>

</div>
	
	<script type="text/javascript">
	function selectPt(num) {
		console.log(num);
		document.getElementById("num").value = num;
		frm.submit();
	}
</script>
    <!-- Js Plugins -->
    <script src="trainerCss/js/jquery-3.3.1.min.js"></script>
    <script src="trainerCss/js/bootstrap.min.js"></script>
    <script src="trainerCss/js/jquery.magnific-popup.min.js"></script>
    <script src="trainerCss/js/masonry.pkgd.min.js"></script>
    <script src="trainerCss/js/jquery.barfiller.js"></script>
    <script src="trainerCss/js/jquery.slicknav.js"></script>
    <script src="trainerCss/js/owl.carousel.min.js"></script>
    <script src="trainerCss/js/main.js"></script>
</body>
</html>