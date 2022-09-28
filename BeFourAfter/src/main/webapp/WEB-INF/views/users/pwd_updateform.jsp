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

<p>
	비밀 번호 변경
	</p>
	<h1 class="logo">Good Lugg</h1>
		<form action="${pageContext.request.contextPath}/users/pwd_update.do" method="post" id="myForm">
		<div>
			<label for="pwd">기존 비밀 번호</label>
			<input type="password" name="pwd" id="pwd"/>
		</div>
		<div>
			<label for="newPwd">새 비밀번호</label>
			<input type="password" name="newPwd" id="newPwd"/>
		</div>
		<div>
			<label for="newPwd2">새 비밀번호 확인</label>
			<input type="password" id="newPwd2"/>
		</div>
		<button type="submit">수정하기</button>
		<button type="reset">지우고 다시 입력</button>
		<a href="${pageContext.request.contextPath}/users/mypage.do">마이페이지로 돌아가기</a>
	</form>
<script>
	//폼에 submit 이벤트가 일어났을때 실행할 함수를 등록하고 
	document.querySelector("#myForm").addEventListener("submit", function(e){
		let pwd1=document.querySelector("#newPwd").value;
		let pwd2=document.querySelector("#newPwd2").value;
		//새 비밀번호와 비밀번호 확인이 일치하지 않으면 폼 전송을 막는다.
		if(pwd1 != pwd2){
			alert("비밀번호를 확인 하세요!");
			e.preventDefault();//폼 전송 막기 
		}
	});
</script>

</body>
</html>