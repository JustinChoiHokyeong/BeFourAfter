<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/ask.jsp</title>
<!-- 부트스트랩 -->
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
   #askTableNone{
      display:none;
   }
</style>
</head>
<body>
   <!-- 네비바 -->
   <jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
   <!-- /네비바 -->
   <!-- 본문 -->
   <div class="container">
      <div class="p-5">
         <h1 class="text-center">Q&A</h1>
         <div class="text-muted text-center fs-6">상품에 대한 문의를 남기는 공간입니다
            해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</div>
         <div class="text-muted text-center fs-6">배송관련, 주문(취소/교환/환불)관련

            문의 및 요청사항의 마이페이지 내 1:1문의에 남겨주세요</div>
         <br />
         <br />
         <div style="clear: both;"></div>
         <div class="text-end">
            <form action="ask.do" method="get" id="search">
            <span><a class="btn text-start" href="${pageContext.request.contextPath}/cs/insertform.do">새글 작성</a></span>

               <label for="condition" class="visually-hidden">검색</label> <select
                  class="form-select" style="width: 130px; display: inline;"
                  name="condition" id="condition">
                  <option value="title_content"
                     ${condition eq 'title_content' ? 'selected' : '' }>제목+내용</option>
                  <option value="title" ${condition eq 'title' ? 'selected' : '' }>제목</option>
                  <option value="writer" ${condition eq 'writer' ? 'selected' : '' }>작성자</option>
               </select> <input class="form-control" style="width: 250px; display: inline;"
                  type="text" id="keyword" name="keyword" placeholder="검색어를 입력해주세요"
                  value="${keyword }" />
               <button class="btn" type="submit" id="searchBtn">검색</button>
            </form>
            <c:if test="${ not empty condition }">
               <p class="text-start">
                  총 <span class="text-danger fw-bold " id="total">${totalRow }</span> 개의 글이 검색 되었습니다.
               </p>
            </c:if>
         </div>
         <!-- 검색결과가 없을 시 보여지는 화면 -->
         <div class="text-center" id="askTableNone"><br />
            <h2>"${keyword }"에 대한 검색 결과가 없습니다.</h2><br />
            <p>더 많은 검색결과를 원하신다면? <a href="${pageContext.request.contextPath}/cs/ask.do">통합검색 결과보기</a></p>
            <p>찾는 문의내용이 없다면? <a href="${pageContext.request.contextPath}/cs/insertform.do">1:1 문의 바로가기</a></p>
         </div>
         <br />
         <div id="askTable">
            <table class="table table-hover">
               <thead>
                  <tr class="text-center">
                     <th scope="col">글번호</th>
                     <th scope="col">문의내용</th>
                     <th scope="col">제목</th>
                     <th scope="col">작성자</th>
                     <th scope="col">조회수</th>
                     <th scope="col">등록일</th>
                     <th scope="col">답변</th>
                  </tr>
               </thead>
               <tbody>
                  <c:forEach var="tmp" items="${list}">
                     <tr>
                        <td class="text-center" scope="row">${tmp.num }</td>
                        <c:choose>
                           <c:when test="${tmp.reserveType == 'ent'}">
                              <td class="text-center text-muted" scope="row">[입국 예약]</td>                           
                           </c:when>
                           <c:when test="${tmp.reserveType == 'leave'}">
                              <td class="text-center text-muted" scope="row">[출국 예약]</td>                           
                           </c:when>
                           <c:when test="${tmp.reserveType == 'delivery'}">
                              <td class="text-center text-muted" scope="row">[배송 예약]</td>                           
                           </c:when>
                           <c:when test="${tmp.reserveType == 'etc'}">
                              <td class="text-center text-muted" scope="row">[ 기 타  ]</td>                           
                           </c:when>
                           <c:otherwise>
                              <td class="text-center text-muted" scope="row">[선택 안함]</td>                           
                           </c:otherwise>
                        </c:choose>
                        <!-- 
                           작성자와 로그인 아이디가 다르면 비공개 / 작성자와 로그인 아디가 동일하면 자물쇠 아이콘과 함께 본인에게만 공개 / 그 외에는 전부 공개
                         -->
                        <c:choose>
                           <c:when test="${tmp.isSecret eq 'Yes' && tmp.writer ne id  && sessionScope.id ne 'GoodLugg'}">
                              <td class="text-muted" scope="row"><i class="bi bi-lock-fill"></i> 비밀글입니다.</td>
                           </c:when>
                           <c:when test="${tmp.isSecret eq 'Yes' && tmp.writer eq id }">
                              <td scope="row"><i class="bi bi-lock-fill"></i>
                                 <a class="text-decoration-none text-dark"
                                 href="detail.do?num=${tmp.num }&keyword=${encodedK }&condition=${condition}">${tmp.title }</a>
                              </td>
                           </c:when>
                           <c:when test="${tmp.isSecret eq 'Yes' && sessionScope.id eq 'GoodLugg' }">
                              <td scope="row"><i class="bi bi-lock-fill"></i>
                                 <a class="text-decoration-none text-dark"
                                 href="detail.do?num=${tmp.num }&keyword=${encodedK }&condition=${condition}">${tmp.title }</a>
                              </td>
                           </c:when>
                           <c:otherwise>
                              <td scope="row">
                                 <a class="text-decoration-none text-dark"
                                 href="detail.do?num=${tmp.num }&keyword=${encodedK }&condition=${condition}">${tmp.title }</a>
                              </td>
                           </c:otherwise>
                        </c:choose>
                        <c:choose>
                           <c:when test="${tmp.isSecret eq 'Yes' && tmp.writer ne id  && sessionScope.id ne 'GoodLugg'}">
                              <td class="text-center text-muted" scope="row">비공개 처리</td>
                           </c:when>
                           <c:when test="${sessionScope.id eq 'GoodLugg'}">
                              <td class="text-center" scope="row">${tmp.writer}</td>
                           </c:when>
                           <c:otherwise>
                              <td class="text-center" scope="row">${tmp.writer}</td>
                           </c:otherwise>
                        </c:choose>
                        <td class="text-center" scope="row">${tmp.viewCount }</td>
                        <td class="text-center" scope="row">${tmp.regdate }</td>
                        <c:choose>
                           <c:when test="${tmp.commentCount > 0}">
                              <td class="text-center badge bg-primary m-2" scope="row">답변완료</td>
                           </c:when>
                           <c:otherwise>
                              <td class="text-center badge bg-secondary m-2 " scope="row">답변대기</td>
                           </c:otherwise>
                        </c:choose>
                     </tr>
                  </c:forEach>
               </tbody>
            </table>

         </div>
      </div>
      <div>
         <ul class="pagination justify-content-center">
            <c:if test="${startPageNum ne 1 }">
               <li class="page-item"><a class="page-link"
                  href="ask.do?pageNum=${startPageNum-1 }&condition=${condition }&keyword=${encodedK }"><i
                     class="bi bi-chevron-double-left"></i></a></li>
            </c:if>
            <c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
               <li class="page-item"><c:choose>
                     <c:when test="${pageNum eq i }">
                        <a class="active page-link"
                           href="ask.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a>
                     </c:when>
                     <c:otherwise>
                        <a class="page-link"
                           href="ask.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a>
                     </c:otherwise>
                  </c:choose></li>
            </c:forEach>
            <c:if test="${endPageNum lt totalPageCount }">
               <li class="page-item"><a class="page-link"
                  href="ask.do?pageNum=${endPageNum+1 }&condition=${condition }&keyword=${encodedK }"><i
                     class="bi bi-chevron-double-right"></i></a></li>
            </c:if>
         </ul>
      </div>
      </div>
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
      
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script>
         //검색결과
         const total=$("#total").text();
         //검색창에 입력한 값
         const keyword = $("#keyword").val();
         
         //검색결과가 0일경우 테이블을 안보이게 , 안내문이 보이도록 한다.
         //아무것도 검색하지 않았을 시 text()값 "" 도 제외시켜준다 
         if(total==0 && total!="" ){
            $("#askTableNone").css("display","block");
            $("#askTable").css("display","none");
         }

      </script>
</body>
</html>