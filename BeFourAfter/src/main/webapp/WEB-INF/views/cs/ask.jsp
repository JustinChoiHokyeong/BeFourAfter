<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/ask.jsp</title>
</head>
<body>
<div class="container">
	<a href="insertform.do">새글 작성</a>
	<h1>CS 게시판입니다.</h1>
		<table>
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="tmp" items="${list}">
			<tr>
				<td>${tmp.num }</td>
				<c:choose>
					<c:when test="${tmp.isSecret eq 'Yes' && tmp.writer ne id }">
						<td>
							비밀글 입니다.
						</td>	
					</c:when>
					<c:when  test="${tmp.isSecret eq 'Yes' && tmp.writer eq id }">
						<td>
							(비밀글)
							<a href="detail.do?num=${tmp.num }&keyword=${encodedK }&condition=${condition}">${tmp.title }</a>
						</td>
					</c:when>
					<c:otherwise>
						<td>
							<a href="detail.do?num=${tmp.num }&keyword=${encodedK }&condition=${condition}">${tmp.title }</a>
						</td>
					</c:otherwise>
				</c:choose>
				<td>${tmp.writer }</td>
				<td>${tmp.viewCount }</td>
				<td>${tmp.regdate }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="page-ui clearfix">
		<ul>
			<c:if test="${startPageNum ne 1 }">
				<li>
					<a href="ask.do?pageNum=${startPageNum-1 }&condition=${condition }&keyword=${encodedK }">Prev</a>
				</li>
			</c:if>
			<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
				<li>
					<c:choose>
						<c:when test="${pageNum eq i }">
							<a  class="active" href="ask.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a>
						</c:when>
						<c:otherwise>
							<a href="ask.do?pageNum=${i }&condition=${condition }&keyword=${encodedK }">${i }</a>
						</c:otherwise>
					</c:choose>
				</li>
			</c:forEach>
			<c:if test="${endPageNum lt totalPageCount }">
				<li>
					<a href="ask.do?pageNum=${endPageNum+1 }&condition=${condition }&keyword=${encodedK }">Next</a>
				</li>
			</c:if>
		</ul>
	</div>
	
	<div style="clear:both;"></div>
	
	<form action="ask.do" method="get"> 
		<label for="condition">검색조건</label>
		<select name="condition" id="condition">
			<option value="title_content" ${condition eq 'title_content' ? 'selected' : '' }>제목+내용</option>
			<option value="title" ${condition eq 'title' ? 'selected' : '' }>제목</option>
			<option value="writer" ${condition eq 'writer' ? 'selected' : '' }>작성자</option>
		</select>
		<input type="text" id="keyword" name="keyword" placeholder="검색어..." value="${keyword }"/>
		<button type="submit">검색</button>
	</form>	
	<c:if test="${ not empty condition }">
		<p>
			<strong>${totalRow }</strong> 개의 글이 검색 되었습니다.
		</p>
	</c:if>
</body>
</html>