<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>인덱스 페이지</h1>
<ul>
	<li><a href="">로그인</a></li>
	<li><a href="">예약</a></li>
	<li><a href="">리뷰</a></li>
	<li><a href="${pageContext.request.contextPath}/cs/list.do">고객센터</a></li>
</ul>


</body>
</html>
