<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<body>
<!-- 질문: 지금 id=body - wrapper를 넣은 이유는? 그리고 nav가 안에 자식요소로 있는 이유는? -->
	<div id="body-wrapper">
		<div id="body-content">
			<jsp:include page="navbar.jsp"></jsp:include>	
			<h1>여러분의 무거운 짐, 굿럭이 덜어드리겠습니다.</h1>
		</div>
		<li><a href="${pageContext.request.contextPath}/cs/list.do">고객게시판</a></li>

	</div>
</body>
</html>
