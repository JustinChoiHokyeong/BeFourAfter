<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>/views/cs/list.jsp</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
</head>

<body>

	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
	<!-- 네비게이션 -->
	<jsp:include page="/WEB-INF/views/funcs/toTop.jsp"></jsp:include>
	<!-- /네비게이션  -->

	<!-- 본문 -->
	<!-- 아코디언 메뉴 -->
	<div class="accordion container p-5" id="accordion">
		<div class=" accordion-item"
			style="border-top: none; border-left: none; border-right: none;">
			<h1 class="text-center" alt="FAQ">FAQ</h1>
			<div class="text-muted text-center fs-6" alt="자주 묻는 질문들 입니다.">
				자주 묻는 질문들 입니다. <br> <br>
			</div>
		</div>
		<div class=" accordion-item">
			<h2 class="accordion-header" id="headingOne">
				<button class="accordion-button collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseOne"
					aria-expanded="false" aria-controls="collapseOne">[예약]
					예약을 변경하고 싶어요</button>


			</h2>
			<div id="collapseOne" class="accordion-collapse collapse collapse"
				aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<strong>여행 일정이 변경되셨나요?</strong> <br /> <br /> 숙소명을 잘못 기재하셨거나 숙소
					또는 이용일자에 변동이 있으신 경우 0000-0000 로 전화주시거나 카카오톡 채널 '굿럭' 으로 문의주시면 예약 내용을
					도와드리겠습니다.

				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="headingTwo">
				<button class="accordion-button collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseTwo"
					aria-expanded="false" aria-controls="collapseTwo">[예약] 예약을
					취소/환불 하고 싶어요</button>
			</h2>
			<div id="collapseTwo" class="accordion-collapse collapse"
				aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<strong>여행 일정에 차질이 생기셨나요?</strong><br> <br>
					<p>굿럭의 예약 취소/환불은 아래와 같이 이루어집니다.
					<ol>
						<li>홈페이지 예약 : 서비스 이용 전날 21시 전까지 예약을 취소한 경우, 결제 금액의 90%를
							환불받으실 수 있습니다. 서비스 이용 전날 21시 이후에는 취소는 가능하지만 환불은 불가합니다.</li>
						<li>굿럭 매장 현장접수: 영수증을 지참하신 경우 취소/환불이 가능합니다. 단, 고객님의 수화물 운송이
							시작되면 취소/환불이 불가합니다.</li>
					</ol>
					</p>

				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="headingThree">
				<button class="accordion-button collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseThree"
					aria-expanded="false" aria-controls="collapseThree">[예약]
					굿럭 운송 예약 마감은 언제인가요?</button>
			</h2>
			<div id="collapseThree" class="accordion-collapse collapse"
				aria-labelledby="headingThree" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<strong>굿럭 운송예약은 아래와 같이 이루어 집니다</strong>
					<p>
					<ol>
						<li>홈페이지 예약 : 서비스 이용 전날 21시까지 홈페이지에서 예약할 수 있습니다.</li>
						<li>당일 현장 접수 : 굿럭 매장에서 오후 3시 이전까지 현장 접수 가능합니다. <br>※당일
							현장 접수의 경우 운송서비스가 조기 마감되면 이용이 불가할 수 있습니다.
						</li>
					</ol>
					</p>

				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="headingFour">
				<button class="accordion-button collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseFour"
					aria-expanded="false" aria-controls="collapseFour">질문4</button>
			</h2>
			<div id="collapseFour" class="accordion-collapse collapse"
				aria-labelledby="headingFour" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<strong>질문4 말입니까?</strong> <br>
					<p>대답4</p>


				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="headingFive">
				<button class="accordion-button collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseFive"
					aria-expanded="false" aria-controls="collapseFive">질문5</button>
			</h2>
			<div id="collapseFive" class="accordion-collapse collapse"
				aria-labelledby="headingFive" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<strong>질문5 말입니까?</strong> <br>
					<p>대답5</p>
				</div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="headingSix">
				<button class="accordion-button collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseFive"
					aria-expanded="false" aria-controls="collapseSix">질문6</button>
			</h2>
			<div id="collapseSix" class="accordion-collapse collapse"
				aria-labelledby="headingSix" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<strong>질문6 말입니까?</strong> <br>
					<p>대답6</p>
				</div>
			</div>
		</div>
		<!-- 아코디언 메뉴 -->
		<!-- 질문버튼 -->
		<a href="${pageContext.request.contextPath}/cs/ask.do">
			<button class="btn">질문 하기</button>
		</a>
		<!-- /질문버튼 -->
	</div>
	<!-- 푸터 -->
	<footer class="container-fluid navbar-fixed-bottom">
		<jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
	</footer>
	<!-- /푸터 -->
</body>

</html>