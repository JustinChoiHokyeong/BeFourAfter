<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/review/list.jsp</title>

<!-- 부트스트랩 -->
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>

   /* card 이미지 부모요소의 높이 지정 */
   .img-wrapper{
      height: 250px;
      /* transform 을 적용할대 0.3s 동안 순차적으로 적용하기 */
      transition: transform 0.3s ease-out;
   }
   /* .img-wrapper 에 마우스가 hover 되었을때 적용할 css */
   .img-wrapper:hover{
      /* 원본 크기의 1.1 배로 확대 시키기*/
      transform: scale(1.1);
   }
   
   .card .card-text{
      /* 한줄만 text 가 나오고  한줄 넘는 길이에 대해서는 ... 처리 하는 css */
      display:block;
      white-space : nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
   }
      .img-wrapper img{
         width: 100%;
         height: 100%;
         /* fill | contain | cover | scale-down | none(default) */
         /*   
            cover - 부모의 크기에 맞게 키운 후, 자른다. 비율은 일정하게 증가한다. 
            contain - 안잘린다. 대신 빈 공간이 남을 수 있다.
            fill - 부모의 크기에 딱 맞게, 비율 관계 없이 맞춘다.(이미지가 일그러질 수 있다.)
            scale-down - 가로, 세로 중에 큰 것을 부모의 크기에 맞춘 상태까지만 커지거나 작아지고, 비율은 일정하다.
         */
      object-fit: contain;   
      }
      
      #star{
      	color:#FFB81C;
      	font-size:150%;
      }

      
</style>
<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
</head>
<body>
	<div class="container p-5">
		<div class="container"><br>
		<br><h1>리뷰 목록 입니다.</h1>
		<div style="width: 100%; min-height: 1px; height: 60px;"></div>
			<div class="text-end" style="margin-bottom:20px;">
				<!-- 업로드 버튼  -->
				<c:choose>
					<c:when test="${isReserved }">
						<a class="btn " href="${pageContext.request.contextPath}/review/upload_form.do">리뷰 업로드 하기</a><br>
					</c:when>
				</c:choose>
				<br>
				<!-- 검색 기능  -->
				<form action="list.do" method="get">
					<label for="condition" class="visually-hidden">검색</label> 
					<select class="form-select" style="width: 130px; display: inline;" name="condition" id="condition">
						<option value="reservetype" ${condition eq 'reservetype' ? 'selected' : '' }>예약 타입</option>
						<option value="title" ${condition eq 'title' ? 'selected' : '' }>제목</option>
					</select> 
					<input class="form-control" style="width: 250px; display: inline;" type="text" id="keyword" name="keyword" placeholder="검색어를 입력해주세요" value="${keyword }" />
					<button class="btn" type="submit">검색</button>
				</form>
			</div>
		

			<!-- /검색폼  -->
			<c:if test="${ not empty condition }">
				<p>
					<strong>${totalRow }</strong> 개의 글이 검색 되었습니다.
				</p>
			</c:if>

			<div class="row"  style=" place-content: center;">
			
				<div class="row">

				<c:forEach var="tmp" items="${list }">
					<div class="col-6 col-md-4 col-lg-3">
						<div class="card mb-3">
						
							<a href="${pageContext.request.contextPath}/review/detail.do?num=${tmp.num}&keyword=${encodedK }&condition=${condition}">
								<div class="img-wrapper">
									<c:set var = "image" value = "${tmp.imagePath}" />
									<c:choose>
										<c:when test="${fn:contains(image, 'jpg')}">
											<img class="card-img-top" src="${pageContext.request.contextPath }${tmp.imagePath}" />
										</c:when>
										<c:when test="${fn:contains(image, 'png')}">
											<img class="card-img-top" src="${pageContext.request.contextPath }${tmp.imagePath}" />
										</c:when>
										<c:otherwise>
											<img class="card-img-top" src="<c:url value='../images/로고1.png'/>">
										</c:otherwise>
									</c:choose>
								</div>
							</a>
							
							<div class="card-body">
							<c:choose>
                                <c:when test="${tmp.rating eq '5' }">
                                   <p id="star">★★★★★</p>
                                 </c:when>
                                 <c:when test="${tmp.rating eq '4' }">
                                    <p id="star">★★★★☆</p>
                                 </c:when>
                                 <c:when test="${tmp.rating eq '3' }">
                                    <p id="star">★★★☆☆</p>
                                 </c:when>
                                 <c:when test="${tmp.rating eq '2' }">
                                    <p id="star">★★☆☆☆</p>
                                 </c:when>
                                 <c:when test="${tmp.rating eq '1' }">
                                    <p id="star">★☆☆☆☆</p>
                                 </c:when>
                              </c:choose>
								<p class="card-text">${tmp.title}</p>
								<p><small>${tmp.reservetype}</small></p>
								<p class="card-text"> by <strong>${tmp.writer}</strong> | <small>${tmp.regdate}</small></p>
								<p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-index" viewBox="0 0 16 16">
  								<path d="M6.75 1a.75.75 0 0 1 .75.75V8a.5.5 0 0 0 1 0V5.467l.086-.004c.317-.012.637-.008.816.027.134.027.294.096.448.182.077.042.15.147.15.314V8a.5.5 0 1 0 1 0V6.435a4.9 4.9 0 0 1 .106-.01c.316-.024.584-.01.708.04.118.046.3.207.486.43.081.096.15.19.2.259V8.5a.5.5 0 0 0 1 0v-1h.342a1 1 0 0 1 .995 1.1l-.271 2.715a2.5 2.5 0 0 1-.317.991l-1.395 2.442a.5.5 0 0 1-.434.252H6.035a.5.5 0 0 1-.416-.223l-1.433-2.15a1.5 1.5 0 0 1-.243-.666l-.345-3.105a.5.5 0 0 1 .399-.546L5 8.11V9a.5.5 0 0 0 1 0V1.75A.75.75 0 0 1 6.75 1zM8.5 4.466V1.75a1.75 1.75 0 1 0-3.5 0v5.34l-1.2.24a1.5 1.5 0 0 0-1.196 1.636l.345 3.106a2.5 2.5 0 0 0 .405 1.11l1.433 2.15A1.5 1.5 0 0 0 6.035 16h6.385a1.5 1.5 0 0 0 1.302-.756l1.395-2.441a3.5 3.5 0 0 0 .444-1.389l.271-2.715a2 2 0 0 0-1.99-2.199h-.581a5.114 5.114 0 0 0-.195-.248c-.191-.229-.51-.568-.88-.716-.364-.146-.846-.132-1.158-.108l-.132.012a1.26 1.26 0 0 0-.56-.642 2.632 2.632 0 0 0-.738-.288c-.31-.062-.739-.058-1.05-.046l-.048.002zm2.094 2.025z"/>
								</svg> <small>${tmp.viewCount}</small></p>
							</div>
							
						</div>
					</div>
				</c:forEach>
			</div>

			<c:choose>
				<c:when test="${isReserved }">
					<a class="btn" href="${pageContext.request.contextPath}/review/upload_form.do">리뷰 올리기</a>
					<a class="btn" href="${pageContext.request.contextPath}/">홈으로 가기</a>
				</c:when>
				<c:otherwise>
					<a class="btn" href="${pageContext.request.contextPath}/">홈으로 가기</a>
				</c:otherwise>
			</c:choose>

			<nav>
				<ul class="pagination justify-content-center">
					<c:choose>
						<c:when test="${startPageNum ne 1 }">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/review/list.do?pageNum=${startPageNum - 1}">Prev</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item disabled"><a class="page-link"
								href="javascript:">Prev</a></li>
						</c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
						<c:choose>
							<c:when test="${i eq pageNum }">
								<li class="page-item active"><a class="page-link"
									href="${pageContext.request.contextPath}/review/list.do?pageNum=${i}">${i }</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="${pageContext.request.contextPath}/review/list.do?pageNum=${i}">${i}</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${endPageNum lt totalPageCount }">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/review/list.do?pageNum=${endPageNum + 1}">Next</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item disabled"><a class="page-link"
								href="javascript:">Next</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</div>
	</div>
</div>
	<%-- <script>
   // card 이미지의 부모 요소를 선택해서 imgLiquid  동작(jquery plugin 동작) 하기 
   $(".img-wrapper").imgLiquid();
</script> --%>
	<!-- 푸터 -->
    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
	<!-- /푸터 -->
</body>
</html>




