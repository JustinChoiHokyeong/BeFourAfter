<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/agree.jsp</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
body {
    position: relative;
    width: 100%;
    background-image: url(https://i.imgur.com/PgGV6Qh.jpeg);
    z-index: 0;
    background-attachment: fixed;
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
    background-repeat: no-repeat;
    background-position: top center;
    z-index:-1
}
.container h2 {
    font-family: 'Oswald', sans-serif;
    font-size: 100px;
    letter-spacing: 10px;
    text-align: center;
    color: white;
    font-weight: 400;
    text-transform: uppercase;
    z-index: 10;
    opacity: .9;
}
</style>

</head>
<body>
<form action="signup_form.do" method="get" id="form1">

	<div class="container" style="text-align: center; margin-top:50px;">
		<h2 style="margin-top: 0px">
      		<a href="${pageContext.request.contextPath }"><img class="img-fluid" src="https://i.imgur.com/CVQ8ugn.png" alt="logo" style="width:100px;;"></a>
   		</h2>
		</br>
		<textarea style="width: 800px; height: 130px; display: inline-table; background: revert; font-weight: bolder;" disabled>
여러분을 환영합니다.
굿럭 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
본 약관은 다양한 굿럭 서비스의 이용과 관련하여 굿럭 서비스를 제공하는
굿럭 주식회사(이하 ‘굿럭’)와 이를 이용하는 굿럭 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 굿럭 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
		</textarea>
		<br>
		<label style="text-align:left;">
			<input type="checkbox" name="c1" id="c1"> 
			Good lugg 이용약관 동의(필수)
		</label>
		<br></br>
		<textarea style="width: 800px; height: 130px; display: inline-table; background: revert; font-weight: bolder;" disabled>
여러분을 환영합니다.
굿럭 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
본 약관은 다양한 굿럭 서비스의 이용과 관련하여 굿럭 서비스를 제공하는
굿럭 주식회사(이하 ‘굿럭’)와 이를 이용하는 굿럭 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 굿럭 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.		
		</textarea>
		<br>
		<label>
			<input type="checkbox" name="c2" id="c2"> 
			개인정보 수집 및 이용 동의(필수)
		</label>
		<br>
		</br>
		<textarea style="width: 800px; height: 130px; display: inline-table; background: revert; font-weight: bolder;" disabled>
여러분을 환영합니다.
굿럭 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
본 약관은 다양한 굿럭 서비스의 이용과 관련하여 굿럭 서비스를 제공하는
굿럭 주식회사(이하 ‘굿럭’)와 이를 이용하는 굿럭 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 굿럭 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.		
		</textarea>
		<br>
		<label>
			<input type="checkbox" name="c3" id="c3"> 
			위치기반서비스 이용약관 동의(선택)
		</label>
		<br>
		<label>
			<input type="checkbox" name="all" id="all">
			Good lugg 이용약관, 개인정보 수집 및 이용<br />
			위치기반서비스 이용약관(선택)에 모두 동의합니다.
		</label>
		<br><br />
		<div>
			<button style="border: none; background: none;"><a class="btn-cloud" type="submit" style="color:black">회원가입</a></button>
			<a class="btn-cloud2" type="button" href="${pageContext.request.contextPath }" style="color: white">돌아가기</a>
		</div>
	</div>

</form>
<script>
	var doc = document;
	var form1 = doc.getElementById('form1');
	var inputs = form1.getElementsByTagName('INPUT');
	var form1_data = {
		"c1" : false,
		"c2" : false,
		"c3" : false
	};

	var c1 = doc.getElementById('c1');
	var c2 = doc.getElementById('c2');
	var c3 = doc.getElementById('c3');

	function checkboxListener() {
		form1_data[this.name] = this.checked;

		if (this.checked) {
			// submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분. 
			this.parentNode.style.color = "#000";
		}
	}

	c1.onclick = c2.onclick = c3.onclick = checkboxListener;

	var all = doc.getElementById('all');

	all.onclick = function() {
		if (this.checked) {
			setCheckbox(form1_data, true);
		} else {
			setCheckbox(form1_data, false);
		}
	};

	function setCheckbox(obj, state) {
		for ( var x in obj) {
			obj[x] = state;

			for (var i = 0; i < inputs.length; i++) {
				if (inputs[i].type == "checkbox") {
					inputs[i].checked = state;
				}
			}

		}
	}

	form1.onsubmit = function(e) {
		e.preventDefault(); // 서브밋 될때 화면이 깜빡이지 않게 방지

		if (!form1_data['c1']) {
			alert('Good lugg 이용약관 동의를 하지 않았습니다');
			c1.parentNode.style.color = "#e50000";
			return false;
		}

		if (!form1_data['c2']) {
			alert('개인정보 수집 및 이용에 대한 안내를 선택하지 않았습니다.');
			c2.parentNode.style.color = "#e50000";
			return false;
		}

		this.submit();
	};
</script>
</body>
</html>