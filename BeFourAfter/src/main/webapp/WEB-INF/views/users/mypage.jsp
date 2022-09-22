<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/mypage.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<style>
/* 프로필 이미지를 작은 원형으로 만든다 */
img {
	width: 100px;
	height: 100px;
}
#profileImage {
	width: 100px;
	height: 100px;
	border: 1px solid #cecece;
	border-radius: 50%;
}
</style>
</head>
<body>
            <!-- 네비바 -->
            <jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
            <!-- /네비바 -->
	<div class="container">
		<h1>마이 페이지</h1>
		<table>
			<tr>
				</th>
				<td><c:choose>
						<c:when test="${empty dto.profile }">
							<img id="profileImage" style="height: 100%, width: 100%;"
								src="<c:url value='../dd_logo.png'/>">
						</c:when>
						<c:otherwise>
							<img id="profileImage"
								src="${pageContext.request.contextPath}${dto.profile}" />
						</c:otherwise>
					</c:choose>
			
			<tr>
				<th></th>
				<td>${id }님</td>
			</tr>

			<tr>
				<th></th>
				<td>${dto.email }</td>
			</tr>

		</table>
		<a href="${pageContext.request.contextPath }/users/info.do">내정보 확인</a>
		<br>
		<a href="${pageContext.request.contextPath }/reserve/list.do">예약 내역 확인</a>
		<br>
		<a href="${pageContext.request.contextPath}/users/pwd_updateform.do">비밀번호 변경</a>
		<br>
		<a href="${pageContext.request.contextPath }/users/deleteform.do">탈퇴하기</a>
		<br>
		<a href="${pageContext.request.contextPath }/users/test.do">test</a>
	</div>

</body>
</html>