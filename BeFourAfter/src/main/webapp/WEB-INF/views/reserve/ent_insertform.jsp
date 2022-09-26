<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/reserve/ent_insertform.jsp</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("addr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr").focus();

                
            }
        }).open();
}
</script>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
	<!--바로가기-->
	<jsp:include page="/WEB-INF/views/funcs/reserveMenu.jsp"></jsp:include>
	<!--/바로가기-->
	<!-- 본문 -->
	<div class="bg-light">
	<div class="container">
		<h1>입국서비스</h1>
		<h2>예약자 정보</h2>
		<form action="ent_insert.do" method="post" id="ent_insertform">
			<input type="hidden" name="ent_insertform" id="ent_insertform" value="ent_insertform"/>
			<input type="hidden" name="name" id="name" value="${dto.name}"/>
			<input type="hidden" name="phone" id="phone" value="${dto.phone}"/>
			<input type="hidden" name="id" id="id" value="${dto.id}"/>
			<p>
			<label for="name">예약자 이름</label>
			<input type="text" name="name" id="name" value="${dto.name}" disabled/>
			<br />
			<label for="phone">핸드폰 번호</label>
			<input type="text" name="phone" id="phone" value="${dto.phone}" disabled/>
			</p>
			<fieldset style="max-width: 30%">
				<legend>맡길 장소 및 날짜</legend>
				<label for="place"> <input type="radio" name="place"
					value="first" checked="checked" />제 1 터미널
				</label> <label for="place"> <input type="radio" name="place"
					value="second" />제 2 터미널
				</label>
			</fieldset>
			<p>
				<label for="rsdate">맡기는 날짜 및 시간</label><br /> <input
					type="datetime-local" name="rsdate" id="rsdate" />
			</p>
			<div><span style="font-size: 20px;">수하물 보내는 주소</span><br />
				<input type="button" onclick="execDaumPostcode()" value="주소 검색" readonly="readonly"><br>
				<input type="text" name="addr" id="addr" placeholder="주소 및 상세 주소" style="width: 500px">
				<br /><small>Ex) 서울특별시 강남구 테헤란로 124 삼원타워 5층  501호</small><br>
			</div>
			</p>
			<p>
				<label for="basic">기본 수하물</label> <input type="number" name="basic"
					id="basic" value="0" min="0" plceholder="" /> <br /> <small>(캐리어28인치
					이하, 백팩, 가방, 20kg 이하)</small>
			</p>
			<p>
				<label for="big">대형 수하물</label> <input type="number" name="big"
					id="big" value="0" min="0" plceholder="" /> <br /> <small>(캐리어28인치
					초과, 박스, 골프백, 20kg 초과)</small>
			</p>
			<p>
				<label for="over">25kg 초과</label> <input type="number" name="over"
					id="over" value="0" min="0" plceholder="" /> <br /> <small>(개당
					5,000원 추가)</small>
			</p>
			<p>
				<label for="agree"> <small> 개인정보수집 동의 </small> <input
					type="checkbox" name="agree" value="agree" />
				</label>
			</p>
			<p>
				<button type="submit" class="btn">예약</button>
			</p>
			
		</form>
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
<script>
	// 개인정보제공동의
	var checkbox2 = document.querySelector("input[name=agree]");

	// 입력 되지않은 정보가 있으면 제출 x
	document.querySelector("#ent_insertform").addEventListener("submit",
			function(e) {
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