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
		<br>
<div align="center">
	<div class="row justify-content-center">
			<div class="col-lg-8 text-center">
				<div class="section-title">
					<div class="divider mb-3"></div>
					<h2>[ADMIN] μν μΆκ°</h2>
				</div>
			</div>
	</div>
	<br>
<div>
	<div class="row justify-content-center pb-5">
      <div class="col-lg-9 text-center">
        <form id ="frm" action="productInsert.do" method="post" enctype="multipart/form-data">
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
                <input id="productFile" name="productFile" type="file" class="form-control" placeholder="PT μ¬μ§" required="required"">
              </div>
              </div>
              <div class="text-center">
                <button class="btn btn-main mt-3 " type="submit">λ±λ‘</button> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <button class="btn btn-main mt-3 " type="reset">μ·¨μ</button> &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
				<button class="btn btn-main mt-3 " type="button" onclick="location.href='productSelectList.do'">λͺ©λ‘</button>
              </div>
            </div>
          </div>
          <div class="error" id="error">λ±λ‘μ μ€ν¨νμ΅λλ€.</div>
          <div class="success" id="success">λ±λ‘μ±κ³΅</div>
        </form>
      </div>
    </div>
	</div>
	</div>

</body>
</html>