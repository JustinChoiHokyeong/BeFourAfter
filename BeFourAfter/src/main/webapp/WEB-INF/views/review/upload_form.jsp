<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/review/upload_form.jsp</title>
<%-- bootstrap 읽어오기 --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
</head>
<body>
	<div class="container">
	   	<h1>리뷰 업로드 폼</h1>
	   	<form action="${pageContext.request.contextPath}/review/upload.do" method="post" enctype="multipart/form-data">
	      	<div>
	         	<label for="title">제목</label>
	         	<input type="text" name="title" id="title"/>
	      	</div>
	      	<div>
	         	<label for="image">이미지</label>
	         	<input type="file" name="image" id="image"
	            	accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
	      	</div>
	      	<div>
				<fieldset style="max-width: 30%">
					<legend>예약 타입</legend>
					<label for="reservetype">
						<input type="radio" name="reservetype" value="leave" checked="checked"/>출국 서비스
					</label>
					<label for="reservetype">
						<input type="radio" name="reservetype" value="ent"/>입국 서비스
					</label>
				</fieldset>
	      	</div>
	      	<div>
	      		<fieldset style="max-width: 30%">
					<legend>평점</legend>
					<label for="rating">
						<input type="radio" name="rating" value="5점" checked="checked"/>5점
					</label>
					<label for="reservetype">
						<input type="radio" name="rating" value="4점"/>4점
					</label>
					<label for="reservetype">
						<input type="radio" name="rating" value="3점"/>3점
					</label>
					<label for="reservetype">
						<input type="radio" name="rating" value="2점"/>2점
					</label>
					<label for="reservetype">
						<input type="radio" name="rating" value="1점"/>1점
					</label>
				</fieldset>
	      	</div>
	      	
	      	<button type="submit">업로드</button>
	   	</form>
	</div>
	<script>
	//폼에 submit 이벤트가 일어났을때 실행할 함수 등록
	document.querySelector("#upload_form")
		.addEventListener("submit", function(e){
			
			//제목에 입력한 내용을 여기서 검증하고 
			const title=document.querySelector("#title").value;
			//만일 폼 제출을 막고 싶으면  
			//e.preventDefault();
			//을 수행하게 해서 폼 제출을 막아준다.
			if(title.length < 5){
				alert("제목을 5글자 이상 입력하세요!");
				e.preventDefault();
			}
			
		});
	
	</script>
</body>
</html>