<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="body-wrapper">

<section class="page-title bg-2">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
          <ul class="list-inline mb-0">
            <li class="list-inline-item"><a href="main.do" class="text-sm letter-spacing text-white text-uppercase font-weight-bold">Home</a></li>
            <li class="list-inline-item"><span class="text-white">|</span></li>
            <li class="list-inline-item"><a href="#" class="text-color text-uppercase text-sm letter-spacing">Team</a></li>
          </ul>
      </div>
    </div>
  </div>
</section>
	
	
	
<section class="login py-5 border-top-1">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-5 col-md-8 align-item-center">
        <div class="border border">
          <h3 class="bg-gray p-4">Register Now</h3>
           	<form id="frm" action="memberInsert.do" method="post" onsubmit="return formCheck()">
            <fieldset class="p-4">
              <input class="form-control mb-3" type="text" id="memberId" name="memberId" placeholder="ID*" required="required">&nbsp;
              <div class="loggedin-forgot d-inline-flex my-3">
                <input type="checkbox" id="registering" class="mt-1" id="btn" value="No" onclick="idChek()">
                <label for="registering" class="px-2">Check your ID</label>
              </div>
<!-- 				<button type="button" class="btn btn-primary font-weight-bold mt-3" id="btn" value="No" onclick="idChek()">중복체크</button> -->
              <input class="form-control mb-3" type="password" id="memberPw" name="memberPw" placeholder="Password*" required="required">
              <input class="form-control mb-3" type="password" id="pwc" placeholder="Confirm Password*" required="required">
              <input class="form-control mb-3" type="text" id="memberName" name="memberName" placeholder="Name*" required="required">
              <input class="form-control mb-3" type="text" id="memberNickName" name="memberNickName" placeholder="NickName*" >
              <input class="form-control mb-3" type="date" id="memberAge" name="memberAge" placeholder="Birth*" >
              <input class="form-control mb-3" type="text" id="memberTel" name="memberTel" placeholder="Tel*" required="required">
              <select class="form-control mb-3" id="memberAuthor" name="memberAuthor">
              	<option disabled selected>선택하세용</option>
              	<option value="CUSTOMER">일반회원</option>
              	<option value="TRAINER">트레이너</option>
              </select>
				<br>
              <button type="submit" class="btn btn-main mt-3">Register Now</button>
              <button type="reset" class="btn btn-main mt-3">Cancel</button>
              <button type="button" class="btn btn-main mt-3" onclick="location.href='main.do'">Main</button>
            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
	
	<script type="text/javascript">
	function formCheck() {
		let pass1 = document.getElementById("memberPw").value;
		let pass2 = document.getElementById("pwc").value;
		let idChecked = document.getElementById("btn").value;
		
		if(idChecked == 'No') {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		
		if(pass1 != pass2) {
			alert("패스워드가 일치하지 않습니다.");
			document.getElementById("memberPw").value = "";
			document.getElementById("pwc").value = "";
			document.getElementById("memberPw").focus();
			return false;
		}	
		return true;
	}
	
	function idChek(){  //Ajax를 이용해서 id 중복체크를 한다.
		let id = document.getElementById("memberId").value;
		fetch('ajaxMemberIdCheck.do?id='+id)
			.then(response => response.text())
			.then(data=> respnseResult(data)); //이곳에 Call Back함수를 작성하면 됨
	}
	
	function respnseResult(data){  //fetch처리 CallBack함수
		if(data == '1') {
        	alert("사용할 수 있는 아이디 입니다.");
    		document.getElementById("btn").value = "Yes";
    		document.getElementById("memberPw").focus();
        }else{
        	alert("사용할 수 없는 아이디 입니다.");
        	document.getElementById("memberId").value = "";
        	document.getElementById("memberId").focus();
        }
	}
	function checkOnlyOne(element) {
		  
		  const checkboxes 
		      = document.getElementsByName("memberAuthor");
		  
		  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
		}
</script>
</body>
</html>