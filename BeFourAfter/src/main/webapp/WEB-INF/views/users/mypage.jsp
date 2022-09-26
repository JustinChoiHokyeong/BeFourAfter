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
.btn-outline-secondary{
	--bs-btn-hover-bg: #fff;
	--bs-btn-hover-color: #000;
	color: #000;
	--bs-btn-active-color: #000;
    --bs-btn-active-bg: #fff;
    --bs-btn-focus-shadow-rgb: #fff;
}
.btn-group-vertical {
    padding: 6px 30px 6px 30px;
    width:400px;
}

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
				마이 페이지
			</h1>
		</div>
	</div>
	<div class="container p-5">
		<table class="container" style="width: 800px" >
			<thead style="text-align:center">
				<tr>
					<th>
						<c:choose>
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
				<tr>
				<td style="text-align: -webkit-center;">
				<div class="btn-group-vertical" role="group" aria-label="Vertical button group">
						<button class="btn btn-outline-secondary"><a href="${pageContext.request.contextPath }/users/info.do" id="tb" >내정보 확인</a></button>
						<button class="btn btn-outline-secondary"><a href="${pageContext.request.contextPath }/users/pwd_updateform.do" id="tb" >비밀번호 변경</a></button>
						<button type="button" class="btn btn-outline-secondary" data-bs-toggle="dropdown" aria-expanded="false">
					      	예약신청 내역
					    </button>
					    <ul class="dropdown-menu dropdown-menu-end">
					      <li><a class="dropdown-item" href="${pageContext.request.contextPath }/reserve/list.do">출국 신청 내역</a></li>
					      <li><a class="dropdown-item" href="${pageContext.request.contextPath }/reserve/list2.do">입국 신청 내역</a></li>
					    </ul>
						<button class="btn btn-outline-secondary" ><a href="${pageContext.request.contextPath }/users/deleteform.do" id="tb" >탈퇴하기</a></button>
				</div>
				</td>
			</tr>
			</thead>	
		</table>
	</div>

	<!-- 푸터 -->
    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
	<!-- /푸터 -->

</body>
</html>