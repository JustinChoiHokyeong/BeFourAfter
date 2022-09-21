<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/mypage.jsp</title>
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
		<h1>마이 페이지</h1>
		<table>
			<tr></th>
				<td><c:choose>
						<c:when test="${empty dto.profile }">
						<img id="profileImage" style="height: 100%, width: 100%;"
						src="<c:url value='../airplane_logo1.png'/>">
						</c:when>
						<c:otherwise>
							<img id="profileImage"
								src="${pageContext.request.contextPath}${dto.profile}" />
						</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${id }</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
				<a href="${pageContext.request.contextPath}/users/pwd_updateform.do">비밀번호 변경</a></td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${dto.name }</td>
			</tr>
			<tr>
				<th>핸드폰 번호</th>
				<td>${dto.phone }</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${dto.email }</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${dto.regdate }</td>
			</tr>
		</table>
		<a href="${pageContext.request.contextPath }/reserve/list.do">예약 정보 확인</a>
		<a href="${pageContext.request.contextPath }/users/updateform.do">개인정보수정</a>
		<a href="${pageContext.request.contextPath }/users/test.do">test</a>
		<a href="javascript:deleteConfirm()">탈퇴</a>
	</div>
	<script>
		function deleteConfirm() {
			const isDelete = confirm("${id} 님 탈퇴 하시겠습니까?");
			if (isDelete) {
				location.href = "${pageContext.request.contextPath}/users/delete.do";
			}
		}
	</script>
</body>
</html>