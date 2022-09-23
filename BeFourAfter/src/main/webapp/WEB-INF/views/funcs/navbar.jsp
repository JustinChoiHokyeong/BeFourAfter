<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<nav class="navbar navbar-light bg-light navbar-expand-lg" >
		<div class="container-fluid">
		    <a class="navbar-brand" href="${pageContext.request.contextPath}/">
		      	가벼운 여행 <strong>Good Lugg!</strong>
		    </a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
		    	data-bs-target="#navbarNav">
   				<span class="navbar-toggler-icon"></span>
    		</button>
    		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/info/info.do">이용 및 요금안내</a></li>
					<div class="dropdown">
					  <button class="btn dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="border:none; padding:8px;">
					 	예약서비스
					  </button>
					  <ul class="dropdown-menu">
					  	<li><a class="dropdown-item" href="${pageContext.request.contextPath }/reserve/leave_insertform.do">출국 신청</a></li>
					    <li><a class="dropdown-item" href="${pageContext.request.contextPath }/reserve/ent_insertform.do">입국 신청</a></li>
					    <li><br /></li>
					    <li><a class="dropdown-item" href="${pageContext.request.contextPath }/reserve/list.do">출국 예약신청 내역</a></li>
					    <li><a class="dropdown-item" href="${pageContext.request.contextPath }/reserve/list2.do">입국 예약신청 내역</a></li>
					  </ul>
					</div>
				<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath }/review/list.do">리 뷰</a></li> 
				<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/cs/list.do">고객 센터</a></li>
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
	

