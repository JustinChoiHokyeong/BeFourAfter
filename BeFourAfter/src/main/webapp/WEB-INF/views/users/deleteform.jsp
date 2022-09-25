<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<body>
	<h3>탈퇴 안내</h3>
	<textarea name="" id="">
	회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.
	
	탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.
	회원정보 및 예약정보 등 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.
	삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요.
	</textarea>
<br>
	<p>
	탈퇴 후에는 아이디 ${id } 로 게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.
	</p>
	<label> 
		<input type="checkbox" name="checkbox" id="checkbox">
		안내 사항을 모두 확인하였으며, 이에 동의합니다.
	</label>
	
		<br>
		<a href="javascript:deleteConfirm()">탈퇴하기</a>

	</div>

	<script>
		function deleteConfirm() {
			const isDelete = confirm("${id} 님 탈퇴 하시겠습니까?");
			if (isDelete) {
				location.href = "${pageContext.request.contextPath}/users/delete.do";
			}
		}
	</script>
</body>
</html>