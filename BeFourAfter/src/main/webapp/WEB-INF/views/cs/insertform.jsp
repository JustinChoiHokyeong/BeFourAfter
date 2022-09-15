<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/insertform.jsp</title>
</head>
<body>
	<ul>
		<ol>제목</ol>
		<ol>본문</ol>
		<ol>첨부파일</ol>
		<ol>공개글/비밀글 여부</ol>
	</ul>
	<mark>비밀글 선택시 비밀번호 or ID 확인</mark>
	<br />
	<a href="${pageContext.request.contextPath}/cs/insert.do">질문 등록하기</a>
</body>
</html>