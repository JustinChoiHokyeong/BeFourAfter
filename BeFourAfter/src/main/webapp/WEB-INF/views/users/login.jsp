<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
</head>
<body>
<div class="container">

	<c:choose>
		<c:when test="${not empty sessionScope.id }">
			<script type="text/javascript">
				alert("로그인되었습니다.");
				location.href="${pageContext.request.contextPath }/";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("아이디 혹은 비밀번호가 틀립니다");
				location.href="loginform.do?url=${requestScope.encodedUrl }";
			</script>
			<!-- <p>
				아이디 혹은 비밀 번호가 틀려요
				<a href="loginform.do?url=${requestScope.encodedUrl }">다시 시도</a>  -->
			</p>
		</c:otherwise>
	</c:choose>
	
</div>	
</body>
</html>