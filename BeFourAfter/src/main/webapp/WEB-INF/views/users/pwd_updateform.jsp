<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/pwd_updateform.jsp</title>
<!-- 부트스트랩 -->
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
</head>
<body>
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
<!-- /네비바 -->
        <div class="container">
        <h1 class="logo">Good Lugg</h1>
		
		<form action="${pageContext.request.contextPath}/users/pwd_update.do"
			method="post" id="myForm">
			<div class="container">
				<label for="pwd" class="form-label">기존 비밀 번호</label> 
				<input type="password" name="pwd" id="pwd" class="form-control" aria-describedby="passwordHelpBlock" />
			</div>
			<div class="container">
				<label for="newPwd" class="form-label" >새 비밀번호</label> 
				<input type="password" id="newPwd" class="form-control" aria-describedby="passwordHelpBlock" />
			</div>
			<div class="container">
				<label for="newPwd2" class="form-label" >새 비밀번호 확인</label> 
				<input type="password" id="newPwd2" class="form-control" aria-describedby="passwordHelpBlock" />
			</div>
	  		<br>
	  		<div class="d-grid gap-2 d-md-block">
			<button class="btn btn-dark" class="account" type="submit">수정</button>
			<button class="btn btn-dark" class="account" type="button"><a href="${pageContext.request.contextPath }/users/mypage.do">취소</a></button>
		</form>
		</div>
	</div>
	    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
	<script>
		//폼에 submit 이벤트가 일어났을때 실행할 함수를 등록하고
		document.querySelector("#myForm").addEventListener("submit",
				function(e) {
					let pwd1 = document.querySelector("#newPwd").value;
					let pwd2 = document.querySelector("#newPwd2").value;
					//새 비밀번호와 비밀번호 확인이 일치하지 않으면 폼 전송을 막는다.
					if (pwd1 != pwd2) {
						alert("비밀번호를 확인 하세요!");
						e.preventDefault();//폼 전송 막기
					}
				});
	</script>
</body>
</html>