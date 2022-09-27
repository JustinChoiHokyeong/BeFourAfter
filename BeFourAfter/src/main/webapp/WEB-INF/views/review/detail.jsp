<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/review/detail.jsp</title>

<!-- 부트스트랩 -->
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>

<style>
	#star{
      	color:#FFB81C;
      	font-size:150%;
      }
</style>
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
			<c:set var="image" value="${dto.imagePath}" />
			<c:choose>
				<c:when test="${fn:contains(image, 'jpg')}">
					<img class="card-img-top" src="${pageContext.request.contextPath }${dto.imagePath}" />
				</c:when>
				<c:when test="${fn:contains(image, 'png')}">
					<img class="card-img-top" src="${pageContext.request.contextPath }${dto.imagePath}" />
				</c:when>
				<c:otherwise>
					<img class="card-img-top" src="<c:url value='../images/로고1.png'/>">
				</c:otherwise>
			</c:choose>

			<div class="card-body">
      			<c:choose>
					<c:when test="${dto.rating eq '5' }">
						<p id="star">★★★★★</p>
					</c:when>
					<c:when test="${dto.rating eq '4' }">
						<p id="star">★★★★☆</p>
					</c:when>
					<c:when test="${dto.rating eq '3' }">
						<p id="star">★★★☆☆</p>
					</c:when>
					<c:when test="${dto.rating eq '2' }">
						<p id="star">★★☆☆☆</p>
					</c:when>
					<c:when test="${dto.rating eq '1' }">
						<p id="star">★☆☆☆☆</p>
					</c:when>
				</c:choose>
         <p class="card-text">${dto.title}</p>
         <p>
			<small>${dto.reservetype}</small>
		 </p>
         <p class="card-text">by <strong>${dto.writer}</strong> | <small>${dto.regdate}</small></p>
				<p>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-hand-index" viewBox="0 0 16 16">
  					<path d="M6.75 1a.75.75 0 0 1 .75.75V8a.5.5 0 0 0 1 0V5.467l.086-.004c.317-.012.637-.008.816.027.134.027.294.096.448.182.077.042.15.147.15.314V8a.5.5 0 1 0 1 0V6.435a4.9 4.9 0 0 1 .106-.01c.316-.024.584-.01.708.04.118.046.3.207.486.43.081.096.15.19.2.259V8.5a.5.5 0 0 0 1 0v-1h.342a1 1 0 0 1 .995 1.1l-.271 2.715a2.5 2.5 0 0 1-.317.991l-1.395 2.442a.5.5 0 0 1-.434.252H6.035a.5.5 0 0 1-.416-.223l-1.433-2.15a1.5 1.5 0 0 1-.243-.666l-.345-3.105a.5.5 0 0 1 .399-.546L5 8.11V9a.5.5 0 0 0 1 0V1.75A.75.75 0 0 1 6.75 1zM8.5 4.466V1.75a1.75 1.75 0 1 0-3.5 0v5.34l-1.2.24a1.5 1.5 0 0 0-1.196 1.636l.345 3.106a2.5 2.5 0 0 0 .405 1.11l1.433 2.15A1.5 1.5 0 0 0 6.035 16h6.385a1.5 1.5 0 0 0 1.302-.756l1.395-2.441a3.5 3.5 0 0 0 .444-1.389l.271-2.715a2 2 0 0 0-1.99-2.199h-.581a5.114 5.114 0 0 0-.195-.248c-.191-.229-.51-.568-.88-.716-.364-.146-.846-.132-1.158-.108l-.132.012a1.26 1.26 0 0 0-.56-.642 2.632 2.632 0 0 0-.738-.288c-.31-.062-.739-.058-1.05-.046l-.048.002zm2.094 2.025z" />
					</svg> <small>${dto.viewCount}</small>
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


<!-- 푸터 -->
    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
<!-- /푸터 -->
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
</body>
</html>

