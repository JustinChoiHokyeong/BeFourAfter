<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>

</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
	<!--바로가기-->
    <jsp:include page="/WEB-INF/views/funcs/reserveMenu.jsp"></jsp:include>
	<!--/바로가기-->
	<!-- 본문 -->

	<div>
		<div>
			<a href="https://ibb.co/7vxXbww"><img src="https://i.ibb.co/PxsNt77/11.png" alt="11" border="0"></a>
		</div>
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
</body>
</html>