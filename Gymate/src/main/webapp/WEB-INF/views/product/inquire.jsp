<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="GYm,fitness,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="Themefisher.com">

  <title>GymFit| Fitness template</title>


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
<br>

<!-- contact form start -->
<section class="contact-form section">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-8 text-center">
        <div class="section-title">
          <div class="divider mb-3"></div>
          <h2>PT 제작 문의</h2>
          <br>
          <p class="mt-3">미래의 파트너로 gymate를 선택해주셔서 감사합니다<br><br>
					   아래 양식을 작성해 주시면 빠른 기간 내 연락드리겠습니다.</p>
        </div>
      </div>
    </div>
    
    <div class="row justify-content-center pb-5">
      <div class="col-lg-9 text-center">
        <form id ="frm" action="ptInsert.do" method="post" enctype="multipart/form-data">
          <div class="form-row">
            <div class="col-lg-6 col-md-6 col-sm-12">
              <div class="form-group">

                <input id="productNum" name="productNum" type="number" class="form-control" value="${num }" readonly="readonly" style="height:50px;">
              
              </div>
            </div>
             <div class="col-lg-6 col-md-6 col-sm-12">
              <div class="form-group">
            
                <input  id="productName" name="productName" type="text" class="form-control" placeholder="PT TITLE" required="required">
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
              <div class="form-group">
                <input id="price" name="price" type="number" class="form-control" placeholder="PRICE" required="required" min="1">
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
              <div class="form-group">
                <input id="count" name="count" type="number" class="form-control" placeholder="COUNT" required="required" min="1">
              </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
              <div class="form-group-2">
                <textarea id="explain" name="explain" class="form-control" rows="8" placeholder="EXPLAIN ABOUT PT" required="required"></textarea>
              </div>
              <p></p>
              <div class="col-lg-12 col-md-12 col-sm-12">
              <div class="form-group-2">
                <input id="ptFile" name="ptFile" type="file" class="form-control" placeholder="PT 사진" required="required"">
              </div>
              </div>
              <div class="text-center">
                <button class="btn btn-main mt-3 " type="submit">등록</button> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <button class="btn btn-main mt-3 " type="reset">취소</button>
              </div>
            </div>
          </div>
          <div class="error" id="error">등록에 실패했습니다.</div>
          <div class="success" id="success">등록성공</div>
        </form>
      </div>
    </div>
  </div>
<br><br><br><br><br><br>

  <div class="container mt--170">
    <div class="row">
      <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
        <div class="card rounded-0 border-0 shadow-sm text-center py-5 px-4 contact-info">
          <i class="ti-mobile mb-3 text-lg text-color"></i>
          <span>Call us</span>
          <p class="lead text-black mb-0 mt-3">+23 45 67890</p>
          <p class="lead">9:00 am - 17:00 pm</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
        <div class="card rounded-0 border-0 shadow-sm text-center py-5 px-4 contact-info">
          <i class="ti-email mb-3 text-lg text-color"></i>
          <span>Email at</span>
          <p class="lead text-black mt-3 mb-0">support@themefisher.com</p>
          <p class="lead text-black ">support@gymfit.com</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
        <div class="card rounded-0 border-0 shadow-sm text-center py-5 px-4 contact-info">
          <i class="ti-home mb-3 text-lg text-color"></i>
          <span>Location</span>
          <p class="lead text-black mt-3">Fitness Center Bedford Heights,North London, USA</p>
        </div>
      </div>
    </div>
  </div>
</section>
		<br><br><br><br><br>
</body>
</html>