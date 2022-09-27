<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
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
		<c:choose>
			<c:when test="${dto.reservetype eq 'leave_insertform'}">
				<h1>출국서비스</h1>
				
				<h2>예약 수정</h2>
				<div class="container">
					<form action="update.do" method="post" id="leave_insertform">
						<input type="hidden" name="leave_insertform" id="leave_insertform" value="leave_insertform"/>
						<input type="hidden" name="num" id="num" value="${dto.num }"/>
						<input type="hidden" name="name" id="name" value="${dto.name }"/>
						<input type="hidden" name="phone" id="phone" value="${dto.phone }"/>
						<p>
						<label for="name">예약자 이름</label>
						<input type="text" name="name" id="name" value="${dto.name }"disabled/>
						<br />
						<label for="phone">핸드폰 번호</label>
						<input type="text" name="phone" id="phone" value="${dto.phone }"disabled/>
						</p>
						<p>
						<label for="rname">수령인 이름</label>
						<input type="text" name="rname" id="rname" value="${dto.rname }" />
						<br />
						<label for="rphone">핸드폰 번호</label>
						<input type="text" name="rphone" id="rphone" value="${dto.rphone } " maxlength="11" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
						<br />
						<label for="same"> <small> 예약자와 동일 </small>
						<input type="checkbox" name="same" value="same" checked/>
						</label>
						</p>
						<p>
						<label for="rsdate">수령 날짜 및 시간</label><br />
						<input type="datetime-local" name="rsdate" id="rsdate" value="${dto.rsdate }"/>
						</p>
						<fieldset style="max-width: 30%">
							<legend>수령장소</legend>
							<c:choose>
								<c:when test="${dto.place eq 'first'}">
									<label for="place">
										<input type="radio" name="place" value="first" checked="checked"/>제 1 터미널
									</label>
									<label for="place">
										<input type="radio" name="place" value="second"/>제 2 터미널
									</label>
								</c:when>
								<c:otherwise>
									<label for="place">
										<input type="radio" name="place" value="first" />제 1 터미널
									</label>
									<label for="place">
										<input type="radio" name="place" value="second" checked="checked"/>제 2 터미널
									</label>
								</c:otherwise>
							</c:choose>
						</fieldset>
						<p>
						<label for="basic">기본 수하물</label>
						<input type="number" name="basic" id="basic" value="${dto.basic }" min="0"placeholder="수량입력"/>
						<br />
						<small>(캐리어28인치 이하, 백팩, 가방, 20kg 이하)</small>
						</p>
						<p>
						<label for="big">대형 수하물</label>
						<input type="number" name="big" id="big" value="${dto.big }" min="0"placeholder="수량입력"/>
						<br />
						<small>(캐리어28인치 초과, 박스, 골프백, 20kg 초과)</small>
						</p>
						<p>
						<label for="over">25kg 초과</label>
						<input type="number" name="over" id="over" value="${dto.over }" min="0"placeholder="수량입력"/>
						<br />
						<small>(개당 5,000원 추가)</small>
						</p>
						<p>
						<button type="submit" id="submit1">수정</button>
						</p>
					</form>
				</div>
				<script>
				// 회원정보 넘기기 수령인 정보에 예약자 정보 
				var checkbox = document.querySelector("input[name=same]");
				
				checkbox.addEventListener('change', function() {
				   if(checkbox.checked==true){
					   let name= document.getElementById('name').value;
					   let phone=document.getElementById('phone').value;
					   
					   document.getElementById('rname').value = name;
					   document.getElementById('rphone').value = phone;
				   } else {
					   document.getElementById('rname').value = "";
					   document.getElementById('rphone').value = "";
				   }
				   
				   });
				// (출국)입력 되지않은 정보가 있으면 제출 x
				document.querySelector("#leave_insertform").addEventListener("submit", function(e){
					let basic=document.querySelector("#basic").value;
					let big=document.querySelector("#big").value;
					let over=document.querySelector("#over").value;
					
					let rname=document.querySelector("#rname").value;
					let rphone=document.querySelector("#rphone").value;
					let rsdate=document.querySelector("#rsdate").value;
					
					if(basic+big+over<=0 || rname=="" || rphone=="" || rsdate==""){
						alert("정보를 모두 입력해주세요.");
						e.preventDefault();
					}
				});
				
				var now_utc = Date.now() 
				var timeOff = new Date().getTimezoneOffset()*60000;
				var today = new Date(now_utc-timeOff).toISOString().substring(0, 16);
				document.getElementById("rsdate").setAttribute("min", today);
				</script>
			</c:when>
			<c:otherwise>
				<h1>입국서비스</h1>
				
				<h2>예약 수정</h2>
				<div class="container">
					<form action="update2.do" method="post" id="ent_insertform">
						<input type="hidden" name="ent_insertform" id="ent_insertform" value="ent_insertform"/>
						<input type="hidden" name="num" id="num" value="${dto.num }"/>
						<input type="hidden" name="name" id="name" value="${dto.name }"/>
						<input type="hidden" name="phone" id="phone" value="${dto.phone }"/>
						<p>
						<label for="name">예약자 이름</label>
						<input type="text" name="name" id="name" value="${dto.name }"disabled/>
						<br />
						<label for="phone">핸드폰 번호</label>
						<input type="text" name="phone" id="phone" value="${dto.phone }"disabled/>
						</p>
						<p>
						<label for="rsdate">맡기는 날짜 및 시간</label><br />
						<input type="datetime-local" name="rsdate" id="rsdate" value="${dto.rsdate }"/>
						</p>
						<fieldset style="max-width: 30%">
							<legend>맡길장소</legend>
							<c:choose >
								<c:when test="${dto.place eq 'first'}">
									<label for="place">
										<input type="radio" name="place" value="first" checked="checked"/>제 1 터미널
									</label>
									<label for="place">
										<input type="radio" name="place" value="second"/>제 2 터미널
									</label>
								</c:when>
								<c:otherwise>
									<label for="place">
										<input type="radio" name="place" value="first" />제 1 터미널
									</label>
									<label for="place">
										<input type="radio" name="place" value="second" checked="checked"/>제 2 터미널
									</label>
								</c:otherwise>
							</c:choose>
						</fieldset>
						<p>
						<label for="addr">수하물 보낼 주소</label>
						<input type="text" name="addr" id="addr" value="${dto.addr}" placeholder="주소를 정확히 입력해주세요 (시/군/구 + 상세주소)" style="width: 400px"/>
						</p>
						<p>
						<label for="basic">기본 수하물</label>
						<input type="number" name="basic" id="basic" value="${dto.basic}" min="0"plceholder=""/>
						<br />
						<small>(캐리어28인치 이하, 백팩, 가방, 20kg 이하)</small>
						</p>
						<p>
						<label for="big">대형 수하물</label>
						<input type="number" name="big" id="big" value="${dto.big}" min="0"plceholder=""/>
						<br />
						<small>(캐리어28인치 초과, 박스, 골프백, 20kg 초과)</small>
						</p>
						<p>
						<label for="over">25kg 초과</label>
						<input type="number" name="over" id="over" value="${dto.over}" min="0"plceholder=""/>
						<br />
						<small>(개당 5,000원 추가)</small>
						</p>
						<p>
						<button type="submit" id="submit2">수정</button>
						</p>
					</form>
				</div>
				
				<script>
				
				// (입국)입력 되지않은 정보가 있으면 제출 x
				document.querySelector("#ent_insertform").addEventListener("submit", function(e){
					let basic=document.querySelector("#basic").value;
					let big=document.querySelector("#big").value;
					let over=document.querySelector("#over").value;
					
					let addr=document.querySelector("#addr").value;
					let rsdate=document.querySelector("#rsdate").value;
					
					if(basic+big+over<=0 || addr=="" || rsdate==""){
						alert("정보를 모두 입력해주세요.");
						e.preventDefault();
					}
				});
				
				var now_utc = Date.now()
				var timeOff = new Date().getTimezoneOffset()*60000;
				var today = new Date(now_utc-timeOff).toISOString().substring(0, 16);
				document.getElementById("rsdate").setAttribute("min", today);
				</script>
			</c:otherwise>
		</c:choose>
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
</html>