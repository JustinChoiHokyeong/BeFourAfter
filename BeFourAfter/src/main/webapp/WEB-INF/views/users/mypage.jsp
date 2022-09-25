<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/mypage.jsp</title>
<%-- bootstrap 읽어오기 --%>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
/* 프로필 이미지를 작은 원형으로 만든다 */
#profileImage {
	width: 100px;
	height: 100px;
	border: 1px solid #cecece;
	border-radius: 50%;
}
#tb{
	text-decoration:none;
	color:black;
	margin:20px;
}
#ar{
 	float:right;
 	margin-right:20px;
}
svg{

}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body>
	<div class="container p-5">
		<div>
			<h1 class="text-center">
				<a href="javascript:history.back()" style="text-decoration: none; color:black">
					<i class="bi bi-arrow-bar-left"></i>
				</a> 
				마이 페이지
				<i class="bi bi-arrow-bar-left opacity-0"></i><!-- not visible -->
			</h1>
		</div>
	</div>
	<div class=" p-5 ">
		<table class="container" style="width: 800px" >
			<thead style="text-align:center">
				<tr>
					<th><c:choose>
							<c:when test="${empty dto.profile }">
								<img id="profileImage" style="height: 100%, width: 100%;" src="<c:url value='../images/로고1.png'/>">
							</c:when>
							<c:otherwise>
								<img id="profileImage" src="${pageContext.request.contextPath}${dto.profile}" />
							</c:otherwise>
						</c:choose>
					</th>
				</tr>
				<tr>
					<td>
						<strong class="fs-4">${id }님</strong> 
						<br /> 
						<p class="text-muted" style="margin-top: -5px">${dto.email }</p>
					</td>
				</tr>
			</thead>
			<tbody class=" border-top border-bottom fs-4 ">
				<tr class="border">
					<td>
						<a href="${pageContext.request.contextPath }/users/info.do" id="tb" >
							<span >내정보 확인</span>
							<span id="ar" class="fw-bold">></span>
						</a>
					</td>
				</tr >
				<tr class="border">
					<td>
						<a href="${pageContext.request.contextPath }/reserve/list.do" id="tb">
							<span>예약 내역 확인</span>
							<span id="ar" class="fw-bold">></span>
						</a> 
					</td>
				</tr>
				<tr class="border">
					<td>
						<a href="${pageContext.request.contextPath}/users/pwd_updateform.do" id="tb">
							<span>비밀번호 변경</span>
							<span id="ar" class="fw-bold">></span>
						</a>
					</td>
				</tr>
				<tr class="border">
					<td>
						<a href="${pageContext.request.contextPath }/users/deleteform.do" id="tb">
							<span>탈퇴하기</span>
							<span id="ar" class="fw-bold">></span>
						</a>	
					</td>
				</tr>


			</tbody>
		</table>
	</div>
</body>
</html>