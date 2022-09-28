<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/updateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
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
/* 프로필 이미지를 작은 원형으로 만든다 */
#profileImage {
	width: 100px;
	height: 100px;
	border: 1px solid #cecece;
	border-radius: 50%;
}

#imageForm {
	display: none;
}

</style>
</head>
<body>
<div class="container">
	<h1>개인정보 수정</h1>
		<a id="profileLink" href="javascript:"> <c:choose>
						<c:when test="${empty dto.profile }">
						<img id="profileImage" style="height: 100%, width: 100%;"
						src="<c:url value='../images/로고1.png'/>">
						</c:when>
				<c:otherwise>
					<img id="profileImage"
						src="${pageContext.request.contextPath}${dto.profile}" />
				</c:otherwise>
			</c:choose>
		</a> 
		<form action="${pageContext.request.contextPath}/users/update.do" method="post" id="myForm">
			<input type="hidden" name="profile" value="${ empty dto.profile ? '' : dto.profile}" />
			<input type="hidden" name="name" value="${dto.name }" />
			<div>
				<label for="id">아이디</label>
				<input type="text" id="id" value="${id }" disabled />
			</div>
			<div>
				<label for="name">이름</label>
				<input type="text" name="name" id="name" value="${dto.name }" disabled/>
			</div>

			<div>
				<label for="">주소</label>
				<input type="text" name="postcode" id="postcode" value="${dto.postcode }" readonly="readonly">
				<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" readonly="readonly"><br>
				<input type="text" name="addr" id="addr" value="${dto.addr }" readonly="readonly" ><br>
				<input type="text" name="detailAddr" id="detailAddr" value="${dto.detailAddr }">
			</div>
			<div>
				<label for="email">이메일</label>
				<input type="text" name="email" id="email" value="${dto.email }" />
				<div class="invalid-feedback">이메일 형식을 확인해 주세요</div>
			</div>
			<div>
				<label for="phone">핸드폰 번호</label> <input type="text" name="phone"
					id="phone" value="${dto.phone }" />
				<small class="form-text text-muted">숫자로 입력해 주세요</small>
				<div class="invalid-feedback">'-'없이 번호만 입력해 주세요</div>
			</div>
			<button type="submit">수정</button>
		</form>

		<form
			action="${pageContext.request.contextPath}/users/ajax_profile_upload.do"
			method="post" id="imageForm" enctype="multipart/form-data">
			<input type="file" name="image" id="image"
				accept=".jpg, .jpeg, .png, .JPG, .JPEG, .gif" />
		</form>

	</div>
    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>

	<script
		src="${pageContext.request.contextPath}/resources/js/gura_util.js"></script>
	<script>
	
	
	//프로필 이미지 링크를 클릭하면 
	document.querySelector("#profileLink").addEventListener("click", function(){
		// input type="file" 을 강제 클릭 시킨다. 
		document.querySelector("#image").click();
	});
	//이미지를 선택했을때 실행할 함수 등록 
	document.querySelector("#image").addEventListener("change", function(){
		
		let form=document.querySelector("#imageForm");
		
		// gura_util.js 에 정의된 함수를 호출하면서 ajax 전송할 폼의 참조값을 전달하면 된다. 
		ajaxFormPromise(form)
		.then(function(response){
			return response.json();
		})
		.then(function(data){
			// data 는 {imagePath:"/upload/xxx.jpg"} 형식의 object 이다.
			console.log(data);
			let img=`<img id="profileImage" src="${pageContext.request.contextPath}\${data.imagePath}"/>`;
			document.querySelector("#profileLink").innerHTML=img;
			// input name="profile" 요소의 value 값으로 이미지 경로 넣어주기
			document.querySelector("input[name=profile]").value=data.imagePath;
		});
	});
</script>

<script>
//아이디, 비밀번호, 이메일의 유효성 여부를 관리한 변수 만들고 초기값 대입
	let isEmailValid=false;
	let isPhoneValid=false;

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
	let isFormValid = isEmailValid && isPhoneValid;
	
	if(!isPhoneValid){
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