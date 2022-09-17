<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/detail.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>
<body>
   <div class="container">
   <h1>Q&A</h1>
   <div>상품에 대한 문의를 남기는 공간입니다 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</div>
   <div>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항의 마이페이지 내 1:1문의에 남겨주세요</div>
   <table>
      <tr>
         <th>글번호</th>
         <td>${dto.num }</td>
      </tr>
      <tr>
         <th>작성자</th>
         <td>${dto.writer }</td>
      </tr>
      <tr>
         <th>제목</th>
         <td>${dto.title }</td>
      </tr>
      <tr>
         <th>등록일</th>
         <td>${dto.regdate }</td>
      </tr>
      <tr>
         <th>비밀글여부</th>
         <td>${dto.isSecret }</td>
      </tr>

      <tr>
         <td colspan="2">
            <div class="content">${dto.content }</div>
         </td>
      </tr>
   </table>
   <ul>
      <li><a href="list.do">목록보기</a></li>
      <c:if test="${dto.writer eq id }">
         <li><a href="updateform.do?num=${dto.num }">수정</a></li>
         <li><a href="delete.do?num=${dto.num }">삭제</a></li>
      </c:if>
   </ul>
   	<c:if test="${dto.prevNum ne 0 }">
		<a href="detail.do?num=${dto.prevNum }&keyword=${encodedK }&condition=${condition }">이전글</a>
	</c:if>
	<c:if test="${dto.nextNum ne 0 }">
		<a href="detail.do?num=${dto.nextNum }&keyword=${encodedK }&condition=${condition }">다음글</a>
	</c:if>
	<c:if test="${ not empty keyword }">
		<p>	
			<strong>${condition }</strong> 조건, 
			<strong>${keyword }</strong> 검색어로 검색된 내용 자세히 보기 
		</p>
	</c:if>
   댓글
   
   
</div>
</body>
</html>