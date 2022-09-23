
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/reserve/list.jsp</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
   <head>
            <meta charset="UTF-8">
            <title>/views/reserve/list.jsp</title>
            <jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>

            <style>
                .page-ui a {
                    text-decoration: none;
                    color: #000;
                }

                .page-ui a:hover {
                    text-decoration: underline;
                }

                .page-ui a.active {
                    color: black;
                    font-weight: bold;
                    text-decoration: underline;
                }

                .page-ui ul {
                    list-style-type: none;
                    padding: 0;
                }

                .page-ui ul>li {
                    float: left;
                    padding: 5px;
                }

.page-ui ul>li {
	float: left;
	padding: 5px;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
	<!--바로가기-->
            <div>
                <div class="container p-5">
                    <div style="width: 100%; min-height: 1px; height: 60px;">
                        <a href="${pageContext.request.contextPath }/reserve/ent_insertform.do"><button class="btn">입국  서비스</button></a>
                        <a href="${pageContext.request.contextPath }/reserve/leave_insertform.do"><button class="btn">출국  서비스</button></a>
                        <div class="btn-group">
                            <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">  나의 예약
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item"
                                        href="${pageContext.request.contextPath }/reserve/list.do">출국 예약 확인</a></li>
                                <li><a class="dropdown-item"
                                        href="${pageContext.request.contextPath }/reserve/list2.do">입국 예약 확인</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--/바로가기-->
	<!-- 본문 -->
	<div class="container">
	<h2>출국서비스 예약 내역</h2>
	<div>
		<table class="table align-middle">
			<thead>
				<tr>
					<th><input type="checkbox" name="checkall" id="checkall" onclick="checkAll(this)"/></th>
					<th>예약자</th>
					<th>예약자 연락처</th>
					<th>수령자</th>
					<th>수령자 연락처</th>
					<th>수령일</th>
					<th>수령장소</th>
					<th>기본형</th>
					<th>대   형</th>
					<th>25kg초과</th>
					<th>요금</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tmp" items="${list }">
					<c:choose>
						<c:when test="${tmp.reservetype eq 'leave_insertform'}">
							<c:choose>
								<c:when test="${tmp.id eq sessionScope.id }">
									<tr>
										<td><input data-price="${tmp.price }" type="checkbox"  name="select" value="select" class="price"/></td>
										<td>${tmp.name }</td>
										<td>${tmp.phone }</td>	
										<td>${tmp.rname }</td>
										<td>${tmp.rphone }</td>
										<td>${tmp.rsdate }</td>
										<c:choose>
											<c:when test="${tmp.place eq 'first'}">
												<td>제 1 터미널</td>
											</c:when>
											<c:otherwise>
												<td>제 2 터미널</td>
											</c:otherwise>
										</c:choose>
										<td>${tmp.basic }개</td>
										<td>${tmp.big }개</td>
										<td>${tmp.over }개</td>
										<td><fmt:formatNumber  value="${tmp.price }" type="currency"/>원</td>
										<td><a href="${pageContext.request.contextPath }/reserve/updateform.do?num=${ tmp.num}">일정 수정</a></td>
										<td><a href="${pageContext.request.contextPath }/reserve/delete.do?num=${ tmp.num}" onclick="return confirm('예약을 취소하시겠습니까?')">삭제</a></td>
									</tr>
								</c:when>
							</c:choose>
						</c:when>
					</c:choose>
				</c:forEach>
			</tbody>
		</table>
		</div>
		<p style=float:right>결제할 금액 : ₩<strong id="price">0</strong>원</p>
		<p style=clear:both></p>
		<a class="btn btn-primary" style=float:right href="${pageContext.request.contextPath }/reserve/order.do" onclick="return confirm('결제하시겠습니까?')">결제하기</a>
		<br />
		<a href="${pageContext.request.contextPath }">홈으로</a>
		
	</div>
	<!-- 페이징 처리 -->
	<div class="container page-ui">
		<ul>
			<c:if test="${startPageNum ne 1 }">
				<li>
					<a href="list.do?pageNum=${startPageNum-1 }">Prev</a>
				</li>
			</c:if>
			<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
				<li>
					<c:choose>
						<c:when test="${pageNum eq i }">
							<a  class="active" href="list.do?pageNum=${i }">${i }</a>
						</c:when>
						<c:otherwise>
							<a href="list.do?pageNum=${i }">${i }</a>
						</c:otherwise>
					</c:choose>
				</li>
			</c:forEach>
			<c:if test="${endPageNum lt totalPageCount }">
				<li>
					<a href="list.do?pageNum=${endPageNum+1 }">Next</a>
				</li>
			</c:if>
		</ul>
	</div>
		<script>
		//모든 체크 박스의 참조값이 담긴 배열
		const checks=document.querySelectorAll(".price");
		//전부 체크 박스
		const checkall=document.querySelector("#checkall");
		
		//체크된 체크박스에 있는 가격의 총합을 계산하는 함수 
		function checkSum(){
			let sum=0;
			for(let i=0; i<checks.length; i++){
				//i번째 체크 박스를 불러와서 
				let tmp=checks[i];
				//만일 체크가 되었으면
				if(tmp.checked){
					sum = sum+Number(tmp.getAttribute("data-price"));
				}
			}
			document.querySelector("#price").innerText=sum.toLocaleString('ko-KR');
			}
		//페이지 로딩 시점에 일단 한번 호출하고
		checkSum();
		//체크박스의 체크상태가 변할때 마다 다시 호출
		for(let i=0; i<checks.length; i++){
			checks[i].addEventListener("change", function(){
				checkSum();
			});
		}
		
		function checkAll(checkAll)  {
			  
			for(let i=0; i<checks.length; i++){
				
				let tmp=checks[i];
				
				tmp.checked = checkAll.checked;
				checkSum();
			}
			
		};
	</script>
	<!-- /본문 -->
	<div style="width: 100%; min-height: 1px; height: 60px;"></div>
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
