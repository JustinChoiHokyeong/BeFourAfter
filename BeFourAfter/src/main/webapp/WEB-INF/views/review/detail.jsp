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
<script type="text/javascript">
	function delBtn(){
	if (confirm("해당 리뷰를 삭제하시겠습니까?") == true) {
			//true는 확인버튼을 눌렀을 때 코드 작성
			location.href="delete.do?num=${dto.num }"
			alert("리뷰가 삭제되었습니다.")
		} else {
			//취소 버튼 눌렀을 때 아무 동작 없이 알림창 없어짐
			return false;
		}
	}
</script>
</head>
<body>
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
<!-- /네비바 -->

	

<div class="container-sm">

	<div id="liveAlertPlaceholder"></div>
	<a href="list.do" type="button" class="btn btn-success" id="listBtn">목록보기</a>
	<c:if test="${dto.writer eq id }">
			<a onclick="javascript:delBtn()" type="button" class="btn btn-primary">삭제</a>
	</c:if>

   <c:if test="${ not empty keyword }">
      <p>   
         <strong>${condition }</strong> 조건, 
         <strong>${keyword }</strong> 검색어로 검색된 내용 자세히 보기 
      </p>
   </c:if>
   <div class="card col-md-6">
      <img class="card-img-top" src="${pageContext.request.contextPath}${dto.imagePath}"/>
      <div class="card-body">
         <p class="card-text">${dto.title}</p>
         <p class="card-text">by <strong>${dto.writer}</strong></p>
         <p><small>${dto.regdate}</small></p>
				<p>
					<small>${dto.viewCount}</small>
				</p>
				<c:choose>
					<c:when test="${dto.rating eq '5점' }">
						<p>★★★★★</p>
					</c:when>
					<c:when test="${dto.rating eq '4점' }">
						<p>★★★★☆</p>
					</c:when>
					<c:when test="${dto.rating eq '3점' }">
						<p>★★★☆☆</p>
					</c:when>
					<c:when test="${dto.rating eq '2점' }">
						<p>★★☆☆☆</p>
					</c:when>
					<c:when test="${dto.rating eq '1점' }">
						<p>★☆☆☆☆</p>
					</c:when>
				</c:choose>
				<p>
					<small>${dto.reservetype}</small>
				</p>
			</div>
   </div>
   
    
	
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

