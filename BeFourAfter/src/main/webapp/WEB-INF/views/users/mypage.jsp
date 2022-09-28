<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/mypage.jsp</title>
<%-- bootstrap 읽어오기 --%>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
.accordion-button {
   flex-direction: column;
}

.accordion { -
   -bs-accordion-btn-icon-width: 0; -
   -bs-accordion-btn-focus-box-shadow: #fff;
}

.btn-outline-secondary { -
   -bs-btn-hover-bg: #fff; -
   -bs-btn-hover-color: #000;
   color: #000; -
   -bs-btn-active-color: #000; -
   -bs-btn-active-bg: #fff; -
   -bs-btn-focus-shadow-rgb: #fff;
}

.btn-group-vertical {
   padding: 6px 30px 6px 30px;
   width: 400px;
}

/* 프로필 이미지를 작은 원형으로 만든다 */
#profileImage {
   width: 100px;
   height: 100px;
   border: 1px solid #cecece;
   border-radius: 50%;
}

#tb {
   text-decoration: none;
   color: black;
   margin: 20px;
}

#ar {
   float: right;
   margin-right: 20px;
}

#hr {

   border-bottom : 2px;
   color: white;
}

body {
   position: relative;
   width: 100%;
   background-image: url(https://i.imgur.com/PgGV6Qh.jpeg);
   z-index: 0;
   background-attachment: fixed;
   background-size: cover;
   -moz-background-size: cover;
   -webkit-background-size: cover;
   background-repeat: no-repeat;
   background-position: top center;
   z-index: -1
}

.accordion-item {
   border: 20px solid #dee2e6;
}
</style>
</head>
<!-- 네비바 -->
<jsp:include page="/WEB-INF/views/funcs/navbar2.jsp"></jsp:include>
<!-- /네비바 -->
<body class="float">
   <div class="parallax-one">
      <div class="container" style="padding: 20px;">
      	<table style="text-align: center; margin: auto; margin-top: 80px; margin-bottom: 80px;">
      		<thead>
      			<tr>
      				<th></th>
      				<th></th>
      			</tr>
      		</thead>
      		<tbody>
      			<tr>
      				<td>
      				<div>
      					<c:choose>
		                    <c:when test="${empty dto.profile }">
		                        <img id="profileImage" style="height: 100%, width: 100%;"
		                           src="<c:url value='../images/로고1.png'/>">
		                    </c:when>
		                    <c:otherwise>
		                        <img id="profileImage" src="${pageContext.request.contextPath}${dto.profile}" />
		                    </c:otherwise>
	                  	</c:choose>
	                  	<br />
	                  	<strong class="fs-4">${id }님</strong> <br />
                  		<p class="text" style="margin-top: -5px">${dto.email }</p>
                  		</div>
                  		<fieldset>
                        <legend style="border-top: 1px solid white;"></legend>
                        <table> 
                           <tr>
                              <th>이름</th>
                              <td>${dto.name }</td>
                           </tr>
                           <tr>
                              <th>주소</th>
                              <td>(${dto.postcode }) ${dto.addr }<br />${dto.detailAddr }</td>
                           </tr>
                           <tr>
                              <th>연락처</th>
                              <td>${dto.phone }</td>
                           </tr>
                           <tr>
                              <th>가입일</th>
                              <td>${dto.regdate }</td>
                           </tr>
                        </table>
                     </fieldset>
      				</td>
      				<td>
      					<td style="text-align: -webkit-center; padding-left: 50px;">
                              <div class="accordion" id="accordionExample" style="width: 250px;">
                                 <div class="accordion-item" style="padding: 20px; border-top-left-radius: 100px; border-top-right-radius: 100px; border-bottom-width: 0px; background: linear-gradient(90deg, white, rgb(82 124 184/ 50%));">
                                    <a href="${pageContext.request.contextPath }/users/updateform.do" id="tb">내정보 수정</a>
                                 </div>
                                 <div class="accordion-item" style="padding: 20px; border-bottom-width: 0px; background: linear-gradient(90deg, white, rgb(82 124 184/ 50%));">
                                    <a href="${pageContext.request.contextPath}/users/pwd_updateform.do" id="tb">비밀번호 변경</a>
                                 </div>
                                 <div class="accordion-item" style="border-bottom-right-radius: 80px; border-bottom-left-radius: 80px; background: linear-gradient(90deg, white, rgb(82 124 184/ 50%));">
                                    <button class="accordion" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="color: #000; background: none; border:none; border-top:0px; border-bottom:0px; padding: 20px;">
					                              예약 신청 내역
					                </button>
                                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#collapseThree">
                                       <div class="accordion-body">
                                          <a href="${pageContext.request.contextPath }/reserve/list.do" id="tb">출국 신청 내역</a>
                                          <br /> <br /> 
                                          <a href="${pageContext.request.contextPath }/reserve/list.do" id="tb">입국 신청 내역</a>
                                       </div>
                                    </div>
                                    <div class="accordion-item" style="padding: 20px; border: none; background: none; border-bottom-left-radius: 80px; border-bottom-right-radius: 80px;">
                                       <a href="${pageContext.request.contextPath}/users/deleteform.do" id="tb">회원 탈퇴</a>
                                    </div>
                                 </div>
                              </div>
                           </td>
                      </td>
      			</tr>
      		</tbody>
      	</table>
      </div>
   </div>
</body>
<!-- 푸터 -->
<footer>
   <jsp:include page="/WEB-INF/views/funcs/footer2.jsp"></jsp:include>
</footer>
<!-- /푸터 -->
</html>