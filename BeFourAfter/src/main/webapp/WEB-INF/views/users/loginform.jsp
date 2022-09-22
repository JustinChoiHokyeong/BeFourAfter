<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<body>
            <!-- 네비바 -->
            <jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
            <!-- /네비바 -->
<div class="container">
	<h4>Sign in to start your session</h4>
	<form action="${pageContext.request.contextPath}/users/login.do" method="post">
		<c:choose>
			<c:when test="${ empty param.url }">
				<input type="hidden" name="url" value="${pageContext.request.contextPath}/"/>
			</c:when>
			<c:otherwise>
				<input type="hidden" name="url" value="${param.url }"/>
			</c:otherwise>
		</c:choose>
		<div>
			<label for="id"> </label>
			<input type="text" name="id" id="id" placeholder="아이디" autofocus/>
		</div>
		<div>
			<label for="pwd"> </label>
			<input type="password" name="pwd" id="pwd" placeholder="비밀번호"/>
		</div>
		<button type="submit">로그인</button>
		<a href="${pageContext.request.contextPath}/users/agree.do">회원가입</a>
	</form>
</div>
</body>
</html>