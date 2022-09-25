<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/delete.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<body>
<div class="container">
	<h1>알림</h1>
	<p>
		<strong>${requestScope.id }</strong> 님 탈퇴 처리 되었습니다.
		<a href="${pageContext.request.contextPath}/home.do">확인</a>
	</p>
</div>
</body>
</html>




