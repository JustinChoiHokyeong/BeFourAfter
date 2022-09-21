<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/updateform.jsp</title>
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

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddr").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddr").value = '';
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
						src="<c:url value='../dd_logo.png'/>">
						</c:when>
				<c:otherwise>
					<img id="profileImage"
						src="${pageContext.request.contextPath}${dto.profile}" />
				</c:otherwise>
			</c:choose>
		</a>
		<form action="${pageContext.request.contextPath}/users/update.do"
			method="post">
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
				<label for="phone">핸드폰 번호</label> 
				<input type="text" name="phone" id="phone" value="${dto.phone }" />
			</div>
			<div>
				<label for="">주소</label>
				<input type="text" name="postcode" id="postcode" value="${dto.postcode }">
				<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" name="addr" id="addr" value="${dto.addr }"><br>
				<input type="text" name="detailAddr" id="detailAddr" value="${dto.detailAddr }">
				<input type="text" name="extraAddr" id="extraAddr">
			</div>
			<div>
				<label for="email">이메일</label>
				<input type="text" name="email" id="email" value="${dto.email }" />
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
</body>
</html>