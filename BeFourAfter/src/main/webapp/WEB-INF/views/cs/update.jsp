<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/update.jsp</title>
<style>
   body{
      background-image:url('../images/sky1.jpg');
      background-repeat: no-reapeat fixed;
      background-position: center center;
      background-attachment : fixed
   }
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

</head>
<body>
   <div class="container text-center pt-5">
   <div class="mx-auto bg-light bg-opacity-75 mt-5 pt-5 pb-5">
      <h3 class="text-center text-primary mb-4 ">문의주신 내용이 성공적으로 수정되었습니다.</h3>
      <div class="text-center text-dark mb-2">
         <p>GoodLugg을 이용해주시는 모든 고객 여러분께 깊은 감사를 드립니다.</p>
         <p>작성해주신 문의글은 성공적으로 업로드 되었습니다. 빠른시간내로 답변드릴 수 있도록 하겠습니다.</p>
         <p>코로나 때문에 힘들고 어려운 시기이지만 항상 건강 유의하시고</p>
         <p>오늘도 행복한 하루 보내시길 바랍니다.</p>
      </div>
      <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/">메인으로 이동</a>
      <a class="btn btn-outline-primary" href="${pageContext.request.contextPath}/cs/ask.do">질문게시판으로 이동</a>
   </div>
   </div>
</body>
</html>