<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/reserve/ent_insert.jsp</title>
</head>
<body>
	<h1>예약정보가 등록되었습니다</h1>
	
	<p>예약 목록에서 확정 버튼을 누르면 결제가 진행이 됩니다.
	<br />
	<small>확정 후에는 일정 수정이 불가하오니 신중하게 결정해주세요.</small>
	</p>
	
	<br />
	<a href="${pageContext.request.contextPath }/reserve/list.do">예약목록으로</a>
</body>
</html>