<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/signup_form.jsp</title>
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
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("addr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddr").focus();

                
            }
        }).open();
}
</script>
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
.parallax-one h2 {
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
small{
	color: white;
}
.control-label{
	color: seashell;
    font-size: larger;
}
.form-control{
	background: round;
    border-width: initial;
    background-color: seashell;
}
.form-control:focus {
    color: black;
    background-color: aliceblue;
    border-color: azure;
    outline: 0;
    box-shadow: 0 0 0 0.25rem rgb(13 110 253 / 25%);
}

</style>
</head>
<body>
<div class="container">
	<div class="parallax-one" style="padding:0px;">
		<h2 style="margin-top:0px">
	       <a href="${pageContext.request.contextPath }"><img class="img-fluid" src="https://i.imgur.com/CVQ8ugn.png" alt="logo" style="width:100px;;"></a>
	   	</h2>
		<form class="animate__animated animate__bounceInDown" action="${pageContext.request.contextPath}/users/signup.do" method="post" id="myForm" style="width: 400px; margin: auto; font-weight: 600;">
			
			<div>
				<label class="control-label" for="id">아이디</label>
				<input class="form-control" type="text" name="id" id="id" placeholder="ID" autofocus/>
				<small >5~10자의 영문소문자, 숫자만 사용 가능합니다</small>
				<div class="invalid-feedback">사용할 수 없는 아이디입니다</div>
			</div>
			<div>
				<label class="control-label" for="pwd">비밀번호</label>
				<input class="form-control" type="password" name="pwd" id="pwd" placeholder="Password"/>
				<small >5글자~10글자 이내로 입력해 주세요</small>
				<div class="invalid-feedback">비밀번호를 확인해 주세요</div>
			</div>
			<div>
				<label class="control-label" for="pwd2">비밀번호 재확인</label>
				<input class="form-control" type="password" name="pwd2" id="pwd2" placeholder="Confirm Password"/>
				<div class="invalid-feedback">비밀번호가 일치하지 않습니다</div>
			</div>
			<div>
				<label class="control-label" for="name">이름</label>
				<input class="form-control" type="text" name="name" id="name" placeholder="Name"/>
				<small >한글과 영문명으로 입력해 주세요</small>
				<div class="invalid-feedback">이름을 확인해 주세요</div>
			</div>
			<div>
				<input class="form-control" type="text" name="postcode" id="postcode" placeholder="우편번호" readonly="readonly" style="width: 200px; display: inline;">
				<input class="btn-cloud3" type="button" onclick="execDaumPostcode()" value="주소 검색" readonly="readonly" style="padding: 10px; margin-bottom: 6px;  color: white; border: none;">
				<input class="form-control" type="text" name="addr" id="addr" placeholder="주소" readonly="readonly">
				<input class="form-control" type="text" name="detailAddr" id="detailAddr" placeholder="상세주소">
			</div>
			<div>	
				<label class="control-label" for="phone">핸드폰 번호</label>
				<input class="form-control" type="text" name="phone" id="phone" maxlength="11" placeholder="01000000000"/>
				<div class="invalid-feedback">'-'없이 번호만 입력해 주세요</div>
				<small>숫자로 입력해 주세요</small>
				
			</div>
			<div>
				<label class="control-label" for="email">이메일</label>
				<input class="form-control" type="text" name="email" id="email" placeholder="Email" style="margin-bottom: 5px;"/>
				<div class="invalid-feedback">이메일 형식을 확인해 주세요</div>
			</div><br />
			<div style="text-align: center;">
				<button class="btn-cloud" type="submit" style="border: none; color: black;">가입하기</button>
				<button class="btn-cloud2" type="button" style="border: none; "><a href="${pageContext.request.contextPath }/users/agree.do" style="color: white; text-decoration: none;">뒤로가기</a></button>
			</div>
		</form>
	</div>	
</div>
<script src="${pageContext.request.contextPath}/resources/js/gura_util.js"></script>
<script>
	//아이디, 비밀번호, 이메일의 유효성 여부를 관리한 변수 만들고 초기값 대입
	let isIdValid=false;
	let isPwdValid=false;
	let isEmailValid=false;
	let isNameValid=false;
	let isPhoneValid=false;

	//아이디를 입력했을때(input) 실행할 함수 등록 
	document.querySelector("#id").addEventListener("input", function(){
		//일단 is-valid,  is-invalid 클래스를 제거한다.
		document.querySelector("#id").classList.remove("is-valid");
		document.querySelector("#id").classList.remove("is-invalid");
		
		//1. 입력한 아이디 value 값 읽어오기  
		let inputId=this.value;
		//입력한 아이디를 검증할 정규 표현식
		const reg_id=/^[a-zA-z0-9]{5,10}$/g;
		//만일 입력한 아이디가 정규표현식과 매칭되지 않는다면
		if(!reg_id.test(inputId)){
			isIdValid=false; //아이디가 매칭되지 않는다고 표시하고 
			// is-invalid 클래스를 추가한다. 
			document.querySelector("#id").classList.add("is-invalid");
			return; //함수를 여기서 끝낸다 (ajax 전송 되지 않도록)
		}
		
		//2. util 에 있는 함수를 이용해서 ajax 요청하기
		ajaxPromise("${pageContext.request.contextPath}/users/checkid.do", "get", "inputId="+inputId)
		.then(function(response){
			return response.json();
		})
		.then(function(data){
			console.log(data);
			//data 는 {isExist:true} or {isExist:false} 형태의 object 이다.
			if(data.isExist){//만일 존재한다면
				//사용할수 없는 아이디라는 피드백을 보이게 한다. 
				isIdValid=false;
				// is-invalid 클래스를 추가한다. 
				document.querySelector("#id").classList.add("is-invalid");
			}else{
				isIdValid=true;
				document.querySelector("#id").classList.add("is-valid");
			}
		});
	});
	
	//비밀 번호를 확인 하는 함수 
	function checkPwd(){
		document.querySelector("#pwd").classList.remove("is-valid");
		document.querySelector("#pwd").classList.remove("is-invalid");
		
		const pwd=document.querySelector("#pwd").value;
		const pwd2=document.querySelector("#pwd2").value;
		
		// 최소5글자 최대 10글자인지를 검증할 정규표현식
		const reg_pwd=/^.{5,10}$/;
		if(!reg_pwd.test(pwd)){
			isPwdValid=false;
			document.querySelector("#pwd").classList.add("is-invalid");
			return; //함수를 여기서 종료
		}
		
		document.querySelector("#pwd2").classList.remove("is-valid");
		document.querySelector("#pwd2").classList.remove("is-invalid");
		
		if(pwd != pwd2){//비밀번호와 비밀번호 확인란이 다르면
			//비밀번호를 잘못 입력한것이다.
			isPwdValid=false;

			document.querySelector("#pwd2").classList.add("is-invalid");
		}else{
			isPwdValid=true;
			document.querySelector("#pwd").classList.add("is-valid");
			document.querySelector("#pwd2").classList.add("is-valid");
		}
	}
	
	//비밀번호 입력란에 input 이벤트가 일어 났을때 실행할 함수 등록
	document.querySelector("#pwd").addEventListener("input", checkPwd);
	document.querySelector("#pwd2").addEventListener("input", checkPwd);
	
	//이메일을 입력했을때 실행할 함수 등록
	document.querySelector("#email").addEventListener("input", function(){
		document.querySelector("#email").classList.remove("is-valid");
		document.querySelector("#email").classList.remove("is-invalid");
		
		//1. 입력한 이메일을 읽어와서
		const inputEmail=this.value;
		//2. 이메일을 검증할 정규 표현식 객체를 만들어서  // /@/;
		const reg_email=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		
		//3. 정규표현식 매칭 여부에 따라 분기하기
		if(reg_email.test(inputEmail)){//만일 매칭된다면
			isEmailValid=true;
			document.querySelector("#email").classList.add("is-valid");
		}else{
			isEmailValid=false;
			document.querySelector("#email").classList.add("is-invalid");
		}
	});
	
	//Name 함수 등록 
	document.querySelector("#name").addEventListener("input", function(){
		//일단 is-valid,  is-invalid 클래스를 제거한다.
		document.querySelector("#name").classList.remove("is-valid");
		document.querySelector("#name").classList.remove("is-invalid");
		
		//1. value 값 읽어오기  
		const inputName=this.value;
		//입력한 아이디를 검증할 정규 표현식
		const reg_name=/^[가-힣a-zA-Z]+$/;
		//만일 입력값이 정규표현식과 매칭되지 않는다면
		if(reg_name.test(inputName)){
			isNameValid=true;
			document.querySelector("#name").classList.add("is-valid");
		}else{
			isNameValid=false;
			document.querySelector("#name").classList.add("is-invalid");
		}
	});
	
	//Phone 함수 등록 
	document.querySelector("#phone").addEventListener("input", function(){
		//일단 is-valid,  is-invalid 클래스를 제거한다.
		document.querySelector("#phone").classList.remove("is-valid");
		document.querySelector("#phone").classList.remove("is-invalid");
		
		//1. value 값 읽어오기  
		const inputPhone=this.value;
		//입력한값을 검증할 정규 표현식
		const reg_phone=/^(01[0]{1})[0-9]{4}[0-9]{4}$/;

		//만일 입력값이 정규표현식과 매칭되지 않는다면
		if(reg_phone.test(inputPhone)){
			isPhoneValid=true;
			document.querySelector("#phone").classList.add("is-valid");
		}else{
			isPhoneValid=false;
			document.querySelector("#phone").classList.add("is-invalid");
		}
	});
	
	        
	   //폼에 submit 이벤트가 발생했을때 실행할 함수 등록
   	document.querySelector("#myForm").addEventListener("submit", function(e){
       //폼 전체의 유효성 여부 알아내기  
       let isFormValid = isIdValid && isPwdValid && isEmailValid && isNameValid && isPhoneValid;

       //만일 아이디가 유효하지 않는다면
       if(!isIdValid){
            //아이디 입력란에 포커스 주기
            document.querySelector("#id").focus();
       }else if(!isPwdValid){//만일 비밀번호가 유효하지 않는다면
            //비밀번호 입력란에 포커스 주기
            document.querySelector("#pwd").focus();
       }else if(!isNameValid){
          document.querySelector("#name").focus();
       }else if(!isPhoneValid){
          document.querySelector("#phone").focus();
       }else if(!isEmailValid){//만일 이메일이 유효하지 않는다면
             //비밀번호 입력란에 포커스 주기
            document.querySelector("#email").focus();
       }

       if(!isFormValid){//폼이 유효하지 않으면
          //폼 전송 막기 
          e.preventDefault();
       }

    });
	   
	   

</script>
</body>
</html>