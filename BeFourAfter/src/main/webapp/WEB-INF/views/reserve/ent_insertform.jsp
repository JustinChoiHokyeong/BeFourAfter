<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/reserve/ent_insertform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<h1>입국서비스</h1>
	<h2>예약페이지</h2>
		<form action="ent_insert.do" method="post" id="ent_insertform">
			<input type="hidden" name="ent_insertform" id="ent_insertform" value="ent_insertform"/>
			<input type="hidden" name="name" id="name" value="최현호"/>
			<input type="hidden" name="phone" id="phone" value="01048462650"/>
			<p>
			<label for="name">예약자 이름</label>
			<input type="text" name="name" id="name" value="최현호" disabled/>
			<br />
			<label for="phone">핸드폰 번호</label>
			<input type="text" name="phone" id="phone" value="01048462650" disabled/>
			</p>
			<p>
			<label for="rsdate">맡기는 날짜 및 시간</label><br />
			<input type="datetime-local" name="rsdate" id="rsdate"/>
			</p>
			<fieldset style="max-width: 30%">
				<legend>맡길장소</legend>
				<label for="place">
					<input type="radio" name="place" value="first" checked="checked"/>제 1 터미널
				</label>
				<label for="place">
					<input type="radio" name="place" value="second"/>제 2 터미널
				</label>
			</fieldset>
			<p>
			<label for="addr">수하물 보낼 주소</label>
			<input type="text" name="addr" id="addr" value="" placeholder="주소를 정확히 입력해주세요 (시/군/구 + 상세주소)" style="width: 400px"/>
			</p>
			<p>
			<label for="basic">기본 수하물</label>
			<input type="number" name="basic" id="basic" value="0" min="0"plceholder=""/>
			<br />
			<small>(캐리어28인치 이하, 백팩, 가방, 20kg 이하)</small>
			</p>
			<p>
			<label for="big">대형 수하물</label>
			<input type="number" name="big" id="big" value="0" min="0"plceholder=""/>
			<br />
			<small>(캐리어28인치 초과, 박스, 골프백, 20kg 초과)</small>
			</p>
			<p>
			<label for="over">25kg 초과</label>
			<input type="number" name="over" id="over" value="0" min="0"plceholder=""/>
			<br />
			<small>(개당 5,000원 추가)</small>
			</p>
			<p>
			<label for="agree"> <small> 개인정보수집 동의 </small>
			<input type="checkbox" name="agree" value="agree"/>
			</label>
			</p>
			<p>
			<button type="submit">예약</button>
			</p>
			<a href="${pageContext.request.contextPath }/reserve/list.do">목록으로</a>
		</form>
	</div>
</body>
<script>
	// 개인정보제공동의
	var checkbox2 = document.querySelector("input[name=agree]");
	
	// 입력 되지않은 정보가 있으면 제출 x
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
		
		if(checkbox2.checked!=true){
			alert("개인정보 제공에 동의를 해주세요.");
			e.preventDefault();
		}
	});
	
	var now_utc = Date.now()
	var timeOff = new Date().getTimezoneOffset()*60000;
	var today = new Date(now_utc-timeOff).toISOString().substring(0, 16);
	document.getElementById("rsdate").setAttribute("min", today);
</script>
</html>