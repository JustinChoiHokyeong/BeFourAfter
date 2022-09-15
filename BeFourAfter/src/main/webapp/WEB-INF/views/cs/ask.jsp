<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/ask.jsp</title>
</head>
<body>
	<h1>CS 게시판입니다.</h1>
	<br />
	<ul>
		<li>게시글 테이블이 있다고 가정</li>
		<li>게시글은 공개글/비밀글 두 종류로 작성가능</li>
		<li>질문게시판입니다.</li>
		<li>질문게시판입니다.</li>
		<li>질문게시판입니다.</li>
		<li><a href="${pageContext.request.contextPath}/cs/detail.do">질문게시판입니다.</a></li>
		<li><a href="${pageContext.request.contextPath}/cs/delete.do">삭제하기</a></li>
	</ul>
	<mark>답변확인 완료여부</mark>
	
	<a href="${pageContext.request.contextPath}/cs/insertform.do">질문하기</a>
</body>
</html>