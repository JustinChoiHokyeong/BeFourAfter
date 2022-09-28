<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/info.jsp</title>
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
	<div class="container">
	<fieldset>
			<a href="${pageContext.request.contextPath }/users/mypage.do"><svg
						xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="black" class="bi bi-arrow-left-short" viewBox="0 0 16 16">
	  		<path fill-rule="evenodd"
							d="M12 8a.5.5 0 0 1-.5.5H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5a.5.5 0 0 1 .5.5z" /></svg></a>
		<legend>내정보 확인</legend>
	</fieldset>
		<table>
			<tr>
				<td>
				<c:choose>
						<c:when test="${empty dto.profile }">
						<img id="profileImage" style="height: 100%, width: 100%;"
						src="<c:url value='../images/로고1.png'/>">
						</c:when>
						<c:otherwise>
							<img id="profileImage"
								src="${pageContext.request.contextPath}${dto.profile}" />
						</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</table>

<form action="#">
	<fieldset>
		<legend>기본 정보</legend>
		<table>
			<tr>
				<th>이름</th>
				<td>${dto.name }</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>(${dto.postcode }) ${dto.addr } ${dto.detailAddr }</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${dto.regdate }</td>
			</tr>
		</table>
	</fieldset>
</form>

<form action="#">
	<fieldset>
		<legend>연락처 정보</legend>
			<table>
				<tr>
					<th>이메일</th>
					<td>${dto.email }</td>
				</tr>
				<tr>
					<th>핸드폰 번호</th>
					<td>${dto.phone }</td>
				</tr>
			</table>
	</fieldset>
</form>
	<a href="${pageContext.request.contextPath }/users/updateform.do">개인정보수정</a>
	</div>
	    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
</body>
</html>