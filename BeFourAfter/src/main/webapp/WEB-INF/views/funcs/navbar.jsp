<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<nav class="navbar navbar-light  navbar-expand-lg">
	<div class="container-fluid" style=" margin-top: 20px; margin-right: 30px; margin-bottom: 20px" style="background-color:#0172ae">
	      	<img src="https://i.imgur.com/klC7ezj.png" alt="" style="width:100px" />
	    </a>
	    <button class="navbar-toggler " type="button" data-bs-toggle="collapse"  data-bs-target="#navbarNav" style="border:none">
  				<span> <img src="https://i.imgur.com/PYuobYS.png" alt="" style="width:50px;"/></span>
   		</button>
   		<div class="collapse navbar-collapse" id="navbarNav" style="text-align: end">
		<ul class="navbar-nav me-auto">
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/info/info.do">이용 및 요금안내</a></li>
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/reserve/main.do">예약 하기</a>
			</li> 
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/review/list.do">리 뷰</a>
			</li> 
			</li>
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/cs/list.do">고객 센터</a>
			</li> 
			
			
			
		</ul>
		<c:choose>
			<c:when test="${ empty sessionScope.id}">
					<a class="btn btn-outline-primary btn-sm me-2"
					href="${pageContext.request.contextPath}/users/agree.do">회원가입</a>
				<a class="btn btn-outline-success btn-sm me-2"
					href="${pageContext.request.contextPath}/users/loginform.do">로그인</a>
			</c:when>
			<c:otherwise>
				<span class="navbar-text me-2">
				<a href="${pageContext.request.contextPath}/users/mypage.do">${sessionScope.id }</a>
					님 환영합니다.
				</span>

				<a class="btn btn-outline-danger btn-sm me-2"
					href="${pageContext.request.contextPath}/users/logout.do">로그아웃</a>

			</c:otherwise>
		</c:choose>
	</div>
	</div>
</nav>
	
	
