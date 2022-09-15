<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/detail.jsp</title>
</head>
<body>
	<h1>질문 게시글 detail</h1>
	<ul>
		<li>작성자와 아이디가 동이하면 보이는 버튼</li>
		<li><a href="${pageContext.request.contextPath}/cs/updateform.do">수정</a></li>
		<li><a href="${pageContext.request.contextPath}/cs/delete.do">삭제</a></li>
	</ul>
	<ul>
		<li>댓글</li>
		<li>댓글</li>
		<li>댓글</li>
		<li>댓글</li>
		<li>댓글</li>
	</ul>
</body>
</html>