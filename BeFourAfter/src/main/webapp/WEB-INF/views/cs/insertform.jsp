<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/insertform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
<div class="container">
		<div class="p-5">
		   <h3 class="text-center">문의하기</h3>
		   <form action="${pageContext.request.contextPath}/cs/insert.do" method="post" id="insertForm">
		      <div class="mb-3">
		         <label for="title">제목</label>
		         <input class="form-control" type="text" name="title" id="title"/>
		      </div>
		      <div class="mb-3">
		         <label for="content">내용</label>
		         <textarea class="form-control" style="height:300px;" name="content" id="content"></textarea>
		      </div>
		      <div class="mb-3 form-check">
		         <input type="hidden" name="isSecret" id="isSecret"/>
		         <input class="form-check-input" type="checkbox" id="isSecretchbox"/>
		         <label for="isSecret">비밀글로 문의하기</label>
		         <p class="fw-light"><i class="bi bi-info-lg"></i>비밀글 적용 시 작성자 본인 및 관리자에게만 공개됩니다.</p>
		      </div>
		      <button class="btn btn-outline-secondary" type="submit">문의 등록</button>
		   </form>
		</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
		$("#isSecretchbox").change(function(){
			if($("#isSecretchbox").is(":checked")){
				$("#isSecret").val('Yes');
			}else{
				$("#isSecret").val('No');
			}
		})
    </script>
</div>

</body>
</html>