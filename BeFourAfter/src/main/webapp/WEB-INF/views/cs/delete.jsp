<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/delete.jsp</title>
</head>
<body>
	<h1>삭제되었씁니다</h1>
	<ul>
		<li><a href="${pageContext.request.contextPath}/">인덱스로가기</a></li>
		<li><a href="${pageContext.request.contextPath}/cs/ask.do">질문게시판가기</a></li>
	</ul>
</body>
</html>