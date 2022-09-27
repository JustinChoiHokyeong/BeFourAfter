<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<nav class="navbar navbar-dark  navbar-expand-lg" style="padding:0;">

	<div class="container-fluid" style="padding:20px 20px; background-color:#00123a;">
	      	<a href="${pageContext.request.contextPath}/home.do">
	      		<img src="https://i.imgur.com/cYddGt3.png" alt="logo" style="width:150px" />
	      	</a>
	    <button class="navbar-toggler " type="button" data-bs-toggle="collapse"  data-bs-target="#navbarNav" style="border:none">
  				<span> 
  					<img src="https://i.imgur.com/PYuobYS.png" alt="" style="width:50px;"/>
				</span>
   		</button>
   		<div class="collapse navbar-collapse " id="navbarNav" style="text-align: end; margin-left:20px">
		<ul class="navbar-nav me-auto">
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/info/info.do">이용 및 요금안내</a></li>
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/reserve/main.do">예약 하기</a>
			</li> 
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/review/list.do">리 뷰</a>
			</li>
			<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/cs/list.do">고객 센터</a>
			</li> 
			
			
		</ul >
		<div style="color:grey; padding-right:5px; display:flex;">
		<c:choose>
			<c:when test="${ empty sessionScope.id}">
				<a class="nav-link" href="${pageContext.request.contextPath}/users/agree.do" style="padding-right:15px" >회원가입</a>
				<a class="nav-link" href="${pageContext.request.contextPath}/users/loginform.do" >로그인</a>
			</c:when>
			<c:otherwise>
				<span class="navbar-text " style="color:grey;">
					<a href="${pageContext.request.contextPath}/users/mypage.do">${sessionScope.id }</a>님 환영합니다.
				</span>
				<a class="nav-link" href="${pageContext.request.contextPath}/users/logout.do" style="padding:8px 15px">로그아웃</a>
			</c:otherwise>
		</c:choose>
		</div>
	</div>
	</div>
</nav>
	

