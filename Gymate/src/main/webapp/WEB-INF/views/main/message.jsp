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
                  <li class="list-inline-item"><a href="index.html"
                     class="text-sm letter-spacing text-white text-uppercase font-weight-bold">Home</a></li>
                  <li class="list-inline-item"><span class="text-white">|</span></li>
                  <li class="list-inline-item"><a href="#"
                     class="text-color text-uppercase text-sm letter-spacing">Team</a></li>
               </ul>
            </div>
         </div>
      </div>
   </section>
   <section class="login py-5 border-top-1">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">
               <div class="border">
                  <h3 class="bg-gray p-4">확인하세요</h3>
                  <fieldset class="p-4">
                  <p>${message }</p>
                     <div class="text-center">
                        <button type="button" onclick="location.href='memberLoginForm.do'"
                           class="btn btn-main mt-3" >돌아가기</button>
                     </div>
                  </fieldset>
               </div>
            </div>
         </div>
      </div>
   </section>
</body>
</html>