<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>/views/cs/list.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
</head>

<body>

	<body>
		<!-- 네비바 -->
		<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- /네비바 -->

		<!-- 본문 -->
		<div class="accordion-body">
			<div class="accordion">
				<h1>자주 묻는 질문</h1>
				<hr>
				<div class="container">
					<div class="label">[예약] 예약을 변경하고 싶어요</div>
					<div class="content" id="q1">
						여행 일정이 변경되셨나요?
						<br /><br />
						숙소명을 잘못 기재하셨거나 숙소 또는 이용일자에 변동이 있으신 경우 0000-0000 로 전화주시거나 카카오톡 채널 '굿럭' 으로 문의주시면 예약 내용을 도와드리겠습니다.
					</div>
				</div>
				<hr>
				<div class="container">
					<div class="label">[예약] 예약을 취소/환불 하고 싶어요</div>
					<div class="content" id="q2">여행 일정에 차질이 생기셨나요?<br> <br> 굿럭의 예약 취소/환불은 아래와 같이 이루어집니다.
						<ol>
							<li>홈페이지 예약 : 서비스 이용 전날 21시 전까지 예약을 취소한 경우, 결제 금액의 90%를
								환불받으실 수 있습니다. 서비스 이용 전날 21시 이후에는 취소는 가능하지만 환불은 불가합니다.</li>
							<li>굿럭 매장 현장접수: 영수증을 지참하신 경우 취소/환불이 가능합니다. 단, 고객님의 수화물 운송이
								시작되면 취소/환불이 불가합니다.</li>
						</ol>
					</div>
				</div>
				<hr>
				<div class="container">
					<div class="label">[예약] 굿럭 운송 예약 마감은 언제인가요?</div>
					<div class="content" id="q3">굿럭 운송예약은 아래와 같이 이루어 집니다 <br>
						<ol>
							<li>홈페이지 예약 : 서비스 이용 전날 21시까지 홈페이지에서 예약할 수 있습니다.</li>
							<li>
								당일 현장 접수 : 굿럭 매장에서 오후 3시 이전까지 현장 접수 가능합니다.
								<br>※당일 현장 접수의 경우 운송서비스가 조기 마감되면 이용이 불가할 수 있습니다.
							</li>
						</ol>
					</div>
				</div>
				<hr>
				<div class="container">
					<div class="label">질문4</div>
					<div class="content" id="q4">대답4</div>
				</div>
				<hr>
				<div class="container">
					<div class="label">질문5</div>
					<div class="content" id="q5">대답5</div>
				</div>
				<hr>
				<div class="container">
					<div class="label">질문6</div>
					<div class="content" id="q6">대답6</div>
				</div>
				<hr>
				<!-- 질문버튼 -->
				<a href="${pageContext.request.contextPath}/cs/ask.do">
					<button>질문 하기</button>
				</a>
		<!-- /질문버튼 -->
			</div>
			
		</div>
		<script src="${pageContext.request.contextPath}/resources/js/acdn.js" type="text/javascript"></script>



		<!-- 본문 -->

		<!-- 푸터 -->
		<footer class="container-fluid navbar-fixed-bottom">
			<jsp:include page="../footer.jsp"></jsp:include>
		</footer>
		<!-- /푸터 -->
	</body>
</body>

</html>