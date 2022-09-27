<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/reserve/ent_insertform.jsp</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
.input-group-text {
	justify-content: center;
	background-color: lightgray;
	border: 1px solid grey;
}

.form-control {
	border: 1px solid grey;
}

.input-group {
	margin-bottom: 5px;
}
</style>
</head>
<body style="background-color: rgb(226, 226, 226)">
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
	<div>
		<!--바로가기-->
		<jsp:include page="/WEB-INF/views/funcs/reserveMenu.jsp"></jsp:include>
		<!--/바로가기-->
		<!-- 본문 -->
		<div class="container" style="padding: 0 50px 50px 50px;">
			<div>
				<h1 class="text-center" style="margin: 0 30px 30px 30px;">입국
					서비스</h1>
				<div class="container" style="width: 600px; height: 600px">
					<h3 class="text-center" style="margin: 20 0 5 0;">예약 정보</h3>
					<form action="enter_insert.do" method="post" id="enter_insertform"
						style="text-align: -webkit-center;">
						<input class="form-control" type="hidden" name="ent_insertform"
							id="ent_insertform" value="ent_insertform" /> <input
							type="hidden" name="name" id="name" value="${dto.name }" /> <input
							type="hidden" name="phone" id="phone" value="${dto.phone }" /> <input
							type="hidden" name="id" id="id" value="${dto.id }" />

						<div class="input-group">
							<span class="input-group-text" for="name">예약자 이름</span> <input
								class="form-control" type="text" name="name" id="name"
								value="${dto.name }" disabled />
						</div>
						<div class="input-group">
							<span class="input-group-text" for="name">핸드폰 번호</span> <input
								class="form-control" type="text" name="phone" id="phone"
								value="${dto.phone }" disabled />
						</div>
						<div class="input-group">
							<label class="input-group-text" for="rsdate">맡길 날짜 및 시간</label> <input
								class="form-control" type="datetime-local" name="rsdate"
								id="rsdate" value="" />
						</div>
						<fieldset>
							<h3 class="text-center" style="margin-top: 48px">맡길 장소</h3>
							<label class="input-group-text" for="place"
								style="margin-bottom: 5px;"> <input type="radio"
								name="place" value="first" checked="checked" /> <span
								style="margin-right: 100px;">제 1 터미널</span> <input type="radio"
								name="place" value="second" /> <span>제 2 터미널</span>
							</label>
						</fieldset>
						<div class="input-group">
							<label class="input-group-text" for="basic" style="width: 120px;">기본
								수하물</label> <input class="form-control " type="number" name="basic"
								id="basic" value="0" min="0" placeholder="수량입력" /> <label
								class="input-group-text text-center" for="basic"
								style="width: 320px"> <small style="font-size: x-small;">(캐리어28인치
									이하, 백팩, 가방, 20kg 이하)</small>
							</label>
						</div>
						<div class="input-group">
							<label class="input-group-text" for="big" style="width: 120px;">대형
								수하물</label> <input class="form-control" type="number" name="big"
								id="big" value="0" min="0" placeholder="수량입력" /> <label
								class="input-group-text text-center" for="big"
								style="width: 320px"> <small style="font-size: x-small;">(캐리어28인치
									초과, 박스, 골프백, 20kg 초과)</small>
							</label>
						</div>
						<div class="input-group">
							<label class="input-group-text" for="over" style="width: 120px;">25kg
								초과</label> <input class="form-control" type="number" name="over"
								id="over" value="0" min="0" placeholder="수량입력" /> <label
								class="input-group-text" for="over" style="width: 320px">
								<small style="font-size: x-small;">(25kg 초과 물품 개당 5,000원
									추가)</small>
							</label>
						</div>
						<div>
							<label class="input-group-text" for="agree"> 개인정보수집 동의 <input
								class="form-control form-check-input" type="checkbox" name="agree" value=""
								id="agree"  type="checkbox" 
								 style="margin-left: 5px; margin-top: 0; padding: 8px;" />
							</label>
						</div>
						<button type="submit" class="btn"
							style="padding: 5px 30px 5px 30px; margin-top: 10px; background-color: white; border: grey 1px solid;">예약</button>
					</form>
				</div>
			</div>
		</div>

		<!-- /본문 -->
		<div style="width: 100%; min-height: 1px; height: 60px;"></div>


		<!-- 푸터 -->
		<footer>
			<jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
		</footer>
		<!-- /푸터 -->
</body>
<script>
	// 개인정보제공동의
	var checkbox2 = document.querySelector("input[name=agree]");

	// 입력 되지않은 정보가 있으면 제출 x
	document.querySelector("#ent_insertform").addEventListener("submit", function(e) {
		let basic = document.querySelector("#basic").value;
		let big = document.querySelector("#big").value;
		let over = document.querySelector("#over").value;

		let addr = document.querySelector("#addr").value;
		let rsdate = document.querySelector("#rsdate").value;

		if (basic + big + over <= 0 || addr == "" || rsdate == "") {
			alert("정보를 모두 입력해주세요.");
			e.preventDefault();
		}

		if (checkbox2.checked != true) {
			alert("개인정보 제공에 동의를 해주세요.");
			e.preventDefault();
		}
	});

	var now_utc = Date.now()
	var timeOff = new Date().getTimezoneOffset() * 60000;
	var today = new Date(now_utc - timeOff).toISOString().substring(0, 16);
	document.getElementById("rsdate").setAttribute("min", today);
</script>
</html>