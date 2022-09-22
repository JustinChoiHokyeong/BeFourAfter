<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/pwd_updateform.jsp</title>
<!-- 부트스트랩 -->
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>

</style>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
	<h1 class="container p-5">비밀 번호 변경</h1>
	<div class="container p-5 border" style="width: 800px; ">
		
		<form action="${pageContext.request.contextPath}/users/pwd_update.do"
			method="post" id="myForm">
			<div class="container">
				<label for="pwd">기존 비밀 번호</label> 
				<input type="password" name="pwd" id="pwd" style="" />
			</div>
			<div class="container">
				<label for="newPwd">새 비밀번호</label> 
				<input type="password" name="newPwd" id="newPwd" />
			</div>
			<div class="container">
				<label for="newPwd2">새 비밀번호 확인</label> 
				<input type="password" id="newPwd2" />
			</div>
			
			<a href="${pageContext.request.contextPath }/users/mypage.do">
			<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="black" class="bi bi-arrow-left-short" viewBox="0 0 16 16">
	  		<path fill-rule="evenodd" d="M12 8a.5.5 0 0 1-.5.5H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5a.5.5 0 0 1 .5.5z" /></svg>
	  		
			<button type="submit">수정하기</button>
			<button type="reset">다시 시도</button>
		</form>
	</div>
		<!-- 푸터 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
	</footer>
	<!-- /푸터 -->
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