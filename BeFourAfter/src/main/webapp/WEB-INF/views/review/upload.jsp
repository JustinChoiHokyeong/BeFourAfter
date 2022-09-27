<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/review/upload.jsp</title>
</head>
<body>
	<div class="container">
		<h1>리뷰가 등록되었습니다.</h1>
		<p>소중한 리뷰 남겨서주셔서 감사드립니다. 
		고객님의 정성스러운 리뷰는 GoodLugg의 서비스 개선에 큰 도움이 됩니다. 힘들고 어려운 시기이지만 항상 건강 유의하시고, 오늘도 행동한 하루 보내시길 바랍니다. </p>
		<ul>
			<li><a href="${pageContext.request.contextPath}/">인덱스로 가기</a></li>
			<li><a href="${pageContext.request.contextPath}/review/list.do">리뷰게시판 가기</a></li>
		</ul>
	</div>
</body>
</html>