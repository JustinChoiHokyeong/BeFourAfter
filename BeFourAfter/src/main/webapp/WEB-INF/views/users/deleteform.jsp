<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.left { 10px;
	float: left;
}

.right { 10px;
	float: right;
	font-size: 16px;
	text-align: center;
}

.text-dark {
	font-size: 16px
}

#text {
	vertical-align: middle;
	text-align: left;
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
	<!-- 본문 -->
	<div class="container p-5">
		<div>
			<h1 class="text-center">
				탈퇴 안내 <i class="bi bi-arrow-bar-left opacity-0"></i>
			</h1>
		</div>
	</div>
	<div class=" p-5 ">
		<table class="container" style="width: 800px">
			<thead style="text-align: center">
				<tr>
					<th>
						<textarea name="" id="text" rows="5" cols="80" disabled>
회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요. 

탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.
회원정보 및 예약정보 등 개인형 서비스 이용기록은 모두 삭제되며,
삭제된 데이터는 복구되지 않습니다.
삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요.
   						</textarea>
   					</th>
				</tr>
				<tr>
					<td>
						<br>
						<p class="text-danger">
							탈퇴 후에는 <strong class="fs-4"> ${id }</strong>님으로 게시판형 서비스에 남아 있는 게시글은 삭제할 수 없습니다.
						</p> 
						<br />
					</td>
				</tr>
			</thead>
			<tbody class=" border-top border-bottom fs-4 " style="text-align: center">
				<tr class=>
					<td>
						<label> <input type="checkbox" name="checkbox" id="checkbox">
							<p class="text-dark">안내 사항을 모두 확인하였으며, 이에 동의합니다.</p>
						</label>
					</td>
				</tr>
				<tr>
					<td>

						<div class="left">
							<a href="${pageContext.request.contextPath }/users/mypage.do">
								<i class="bi bi-arrow-left-short"></i>
							</a>
						</div>
						<div class="right">
							<a class="btn" href="javascript:deleteConfirm()">탈퇴하기</a>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- /본문 -->
	<div style="width: 100%; min-height: 1px; height: 60px;"></div>
	<!-- 네비게이션 -->
	<jsp:include page="/WEB-INF/views/funcs/toTop.jsp"></jsp:include>
	<!-- /네비게이션  -->

	<!-- 푸터 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
	</footer>
	<!-- /푸터 -->
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