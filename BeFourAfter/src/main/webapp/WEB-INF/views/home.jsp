<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="/CSS/css.jsp" rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- /네비바 -->


	<div class="col-sm-0 page" id="wrapper">
		<h1>여러분의 무거운 짐, 굿럭이 덜어드리겠습니다.</h1>
	</div>
	<!-- /본문 -->

	<!-- 네비게이션 -->
	<jsp:include page="toTop.jsp"></jsp:include>	
	<!-- /네비게이션  -->
	
	<!-- 푸터 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- /푸터 -->

</body>
</html>
