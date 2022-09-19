<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/updateform.jsp</title>
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
						src="<c:url value='../airplane_logo1.png'/>">
						</c:when>
				<c:otherwise>
					<img id="profileImage"
						src="${pageContext.request.contextPath}${dto.profile}" />
				</c:otherwise>
			</c:choose>
		</a>
		<form action="${pageContext.request.contextPath}/users/update.do"
			method="post">
			<input type="hidden" name="profile"
				value="${ empty dto.profile ? '' : dto.profile}" />
			<input type="hidden" name="name"
				value="${dto.name }" />
			<div>
				<label for="id">아이디</label> <input type="text" id="id"
					value="${id }" disabled />
			</div>
			<div>
				<label for="name">이름</label> <input type="text" name="name"
					id="name" value="${dto.name }" disabled/>
			</div>
			<div>
				<label for="phone">핸드폰 번호</label> <input type="text" name="phone"
					id="phone" value="${dto.phone }" maxlength="11" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"/>
			</div>
			<div>
				<label for="email">이메일</label> <input type="text" name="email"
					id="email" value="${dto.email }" />
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