<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<style>
/* footer 하단 고정 [S] */
html, body {
    margin: 0;
    padding: 0;
    height: 100%;
}

#body-wrapper {
    min-height: 100%;
    position: relative;
}

#body-content {
    margin-top: 100px;
    padding-bottom: 100px; /* footer의 높이 */
}

footer {
    width: 100%;
    height: 100px; /* footer의 높이 */
    position: absolute;  
    bottom: 0;
    left: 0;
    background-color:grey;
}
/* footer 하단 고정 [E] */
</style>
   
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>	
	<div id="bodywrapper">
		<div id="body-cotent">
			<h1>여러분의 무거운 짐, 굿럭이 덜어드리겠습니다.</h1>
		</div>
			<!-- footer -->
			<jsp:include page="footer.jsp"></jsp:include>	
	</div>
</body>
</html>
