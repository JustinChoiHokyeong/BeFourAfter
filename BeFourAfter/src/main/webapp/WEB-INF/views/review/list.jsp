<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/review/list.jsp</title>
<%-- bootstrap 읽어오기 --%>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
/* card 이미지 부모요소의 높이 지정 */
.img-wrapper {
	height: 250px;
	/* transform 을 적용할때 0.3s 동안 순차적으로 적용하기 */
	transition: transform 0.3s ease-out;
}
/* .img-wrapper 에 마우스가 hover 되었을때 적용할 css */
.img-wrapper:hover {
	/* 원본 크기의 1.1 배로 확대 시키기*/
	transform: scale(1.05);
}

.card .card-text {
	/* 한줄만 text 가 나오고  한줄 넘는 길이에 대해서는 ... 처리 하는 css */
	display: block;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.img-wrapper img {
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
</style>
</head>
<body>

	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
	<div class="container p-5">

		<div class="container">
			<br />
			<form action="list.do" method="get">
				<label for="condition">검색조건</label> <select name="condition"
					id="condition">
					<option value="reservetype"
						${condition eq 'reservetype' ? 'selected' : '' }>예약 타입</option>
					<option value="title" ${condition eq 'title' ? 'selected' : '' }>제목</option>
					<option value="rating" ${condition eq 'rating' ? 'selected' : '' }>평점</option>
				</select> <input type="text" id="keyword" name="keyword" placeholder="검색어..."
					value="${keyword }" />
				<button type="submit">검색</button>
			</form>
			<c:if test="${ not empty condition }">
				<p>
					<strong>${totalRow }</strong> 개의 글이 검색 되었습니다.
				</p>
			</c:if>

			<a href="${pageContext.request.contextPath}/review/upload_form.do">리뷰
				업로드 하러 가기</a><br /> <a href="${pageContext.request.contextPath}/">홈으로
				가기</a>
			<h1>리뷰 목록 입니다.</h1>
			<div class="row">
				<c:forEach var="tmp" items="${list }">
					<div class="col-6 col-md-4 col-lg-3">
						<div class="card mb-3">

							<a
								href="${pageContext.request.contextPath}/review/detail.do?num=${tmp.num}&keyword=${encodedK }&condition=${condition}">
								<div class="img-wrapper">
									<img class="card-img-top"
										src="${pageContext.request.contextPath }${tmp.imagePath}" />
								</div>
							</a>

							<div class="card-body">
								<p class="card-text">${tmp.title}</p>
								<p class="card-text">
									by <strong>${tmp.writer}</strong>
								</p>
								<p>
									<small>${tmp.regdate}</small>
								</p>
								<p>
									<small>${tmp.viewCount}</small>
								</p>

								<c:choose>
									<c:when test="${tmp.rating eq '5점' }">
										<p>5점</p>
									</c:when>
									<c:when test="${tmp.rating eq '4점' }">
										<p>4점</p>
									</c:when>
									<c:when test="${tmp.rating eq '3점' }">
										<p>3점</p>
									</c:when>
									<c:when test="${tmp.rating eq '2점' }">
										<p>2점</p>
									</c:when>
									<c:when test="${tmp.rating eq '1점' }">
										<p>1점</p>
									</c:when>
								</c:choose>

								<p>
									<small>${tmp.reservetype}</small>
								</p>

							</div>
						</div>
					</div>
				</c:forEach>
			</div>
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




	<%-- <script>
   // card 이미지의 부모 요소를 선택해서 imgLiquid  동작(jquery plugin 동작) 하기 
   $(".img-wrapper").imgLiquid();
</script> --%>
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




