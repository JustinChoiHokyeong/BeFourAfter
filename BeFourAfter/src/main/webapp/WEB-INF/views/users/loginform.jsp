<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
body {
    position: relative;
    width: 100%;
    background-image: url(https://i.imgur.com/PgGV6Qh.jpeg);
    z-index: 0;
    background-attachment: fixed;
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
    background-repeat: no-repeat;
    background-position: top center;
    z-index:-1
}
.parallax-one h2 {
    font-family: 'Oswald', sans-serif;
    font-size: 100px;
    letter-spacing: 10px;
    text-align: center;
    color: white;
    font-weight: 400;
    text-transform: uppercase;
    z-index: 10;
    opacity: .9;
}
</style>
</head>
<body>
<div class="parallax-one" style="padding:0px;">
	<h2 style="margin-top: 200px">
       <a href="${pageContext.request.contextPath }"><img class="img-fluid" src="https://i.imgur.com/CVQ8ugn.png" alt="logo" style="width:100px;;"></a>
   	</h2>
   	<form style="text-align: -webkit-center; margin-bottom: 150px;"action="${pageContext.request.contextPath}/users/login.do" method="post">
					<c:choose>
						<c:when test="${ empty param.url }">
							<input type="hidden" name="url" value="${pageContext.request.contextPath}/"/>
						</c:when>
						<c:otherwise>
							<input type="hidden" name="url" value="${param.url }"/>
						</c:otherwise>
					</c:choose>
					<div style="margin:5px;">
						<label for="id"></label>
						<input class="form-control" type="text" name="id" id="id" autofocus placeholder="아이디" style="width: 300px"/>
					</div>
					<div>
						<label for="pwd"></label>
						<input class="form-control" type="password" name="pwd" id="pwd" placeholder="비밀번호" style="width: 300px; margin-bottom: 10px;" />
					</div>
					<br />
					<button style="background: none; border: none;"><a class="btn-cloud" type="submit" style="color: black;">로그인</a></button>
					<a class="btn-cloud3" type="button" href="${pageContext.request.contextPath}/users/agree.do" style="color: white; text-decoration: unset;">회원가입</a>
				</form>
</div>
</body>
</html>