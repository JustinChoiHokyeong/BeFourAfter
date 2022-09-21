<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/review/detail.jsp</title>
<%-- bootstrap --%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" >

<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>

</head>
<body>
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
<!-- /네비바 -->

<div class="container">
   <nav>
      <ul class="breadcrumb">
         <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath }/">Home</a>
         </li>
         <li class="breadcrumb-item">
            <a href="${pageContext.request.contextPath }/review/list.do">리뷰 목록</a>
         </li>
         <li class="breadcrumb-item active">상세보기</li>
      </ul>
   </nav>
   <c:if test="${ not empty keyword }">
      <p>   
         <strong>${condition }</strong> 조건, 
         <strong>${keyword }</strong> 검색어로 검색된 내용 자세히 보기 
      </p>
   </c:if>
   <div class="card mb-3">
      <img class="card-img-top" src="${pageContext.request.contextPath}${dto.imagePath}"/>
      <div class="card-body">
         <p class="card-text">${dto.title}</p>
         <p class="card-text">by <strong>${dto.writer}</strong></p>
         <p><small>${dto.regdate}</small></p>
         <p><small>${dto.viewCount}</small></p>
         <p><small>${dto.rating}</small></p>
      </div>
   </div>
   
     
    <div id="liveAlertPlaceholder"></div>
	<a href="list.do" type="button" class="btn btn-success" id="listBtn">목록보기</a>
	<c:if test="${dto.writer eq id }">
			<a href="delete.do?num=${dto.num }" type="button" class="btn btn-primary" id="deleteBtn">삭제</a>
	</c:if>
	
		
	
   <nav>
      <ul class="pagination justify-content-center">
         <c:choose>
         	<c:when test="${dto.prevNum ne 0 }">
         		<li class="page-item mr-3">
               		<a class="page-link" href="${pageContext.request.contextPath}/review/detail.do?num=${dto.prevNum}">&larr; Prev</a>
            	</li>
         	</c:when>
         	<c:otherwise>
         		<li class="page-item disabled mr-3">
               		<a class="page-link" href="javascript:">Prev</a>
            	</li>
         	</c:otherwise>
         </c:choose>
         <c:choose>
         	<c:when test="${dto.nextNum ne 0 }">
         		<li class="page-item">
               		<a class="page-link" href="${pageContext.request.contextPath}/review/detail.do?num=${dto.nextNum}">Next &rarr;</a>
            	</li>
         	</c:when>
         	<c:otherwise>
         		<li class="page-item disabled">
               		<a class="page-link" href="javascript:">Next</a>
            	</li>
         	</c:otherwise>
         </c:choose>         
      </ul>
   </nav>      
</div>


	

<!-- 네비게이션 -->
<jsp:include page="/WEB-INF/views/funcs/toTop.jsp"></jsp:include>	
<!-- /네비게이션  -->

<!-- 푸터 -->
<footer class="container-fluid navbar-fixed-bottom">
    <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
</footer>
<!-- /푸터 -->

</body>
</html>

