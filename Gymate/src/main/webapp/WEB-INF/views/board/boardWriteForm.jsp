<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.but {
	display: inline-block;
	color: #042a33;
	background-color: #ffffff;
	border: 1px solid #000000;
	border-radius: 4px;
	padding: 15px 18px 30px 15px cursor: pointer;
	width: 50px;
	height: 22px;
	font-size: 14px;
	box-shadow: 0 0 4px #999;
	background-position: center;
	transition: background 0.8s;
	height: 32px;
	display: inline-block;
}

.but:hover {
	background: #d5e7f7 radial-gradient(circle, transparent 1%, #d5e7f7 1%)
		center/15000%;
	color: white;
}

i {
	font-weight: 800;
	font-size: 20px;
}
</style>
</head>
<body>
	<div>
		<section class="page-title bg-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<ul class="list-inline mb-0">
							<li class="list-inline-item"><a href="boardSelectList.do"
								class="text-sm letter-spacing text-white text-uppercase font-weight-bold">Board</a>
							</li>
							<li class="list-inline-item"><span class="text-white">|</span></li>
							<li class="list-inline-item"><a href="#"
								class="text-color text-uppercase text-sm letter-spacing">write</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<br>
		<div class="container" align="center">
			<form id="frm" action="boardInsert.do" method="post">
				<c:if test="${memberAuthor eq 'ADMIN' }">
					<div align="left">
						공지사항 <input type="checkbox" name="checkType"
							onclick="isChecked(this)">
					</div>
				</c:if>
				<div class="form-group">
					<label for="title"><i>제목</i></label> <input type="text"
						class="form-control" id="boardTitle" placeholder="제목 입력(4-100)"
						name="boardTitle" maxlength="100" required="required"
						pattern=".{4,100}">
				</div>
				<div class="form-group">
					<label for="content"><i>내용</i></label>
					<textarea class="form-control" rows="20" id="boardContent"
						name="boardContent" placeholder="내용을 작성..."></textarea>
				</div>
				<br>
				<div>
					<input type="hidden" id="boardWriter" name="boardWriter"
						value="${memberId }"> <input type="hidden" id="boardType"
						name="boardType"> <input type="submit" class="but"
						value="등록">&nbsp;&nbsp;&nbsp; <input type="reset"
						class="but" value="취소">&nbsp;&nbsp;&nbsp; <input
						type="button" value="목록" class="but"
						onclick="location.href='boardSelectList.do'">&nbsp;&nbsp;&nbsp;
				</div>
				<br>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function isChecked(box) {
			if (box.checked) {
				document.getElementById("boardType").value = "NOTICE";
			} else {
				document.getElementById("boardType").value = "";
			}
		}
	</script>
</body>
</html>