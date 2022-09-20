<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Home</title>
            <jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
        </head>

        <body>
            <!-- 네비바 -->
            <jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
            <!-- /네비바 -->


            <div class="col-sm-0 page" id="wrapper">
                <h1>여러분의 무거운 짐, 굿럭이 덜어드리겠습니다.</h1>
            </div>
            <!-- /본문 -->
            <div>
                <div>
                    <img src="https://i.ibb.co/xDyjWKV/2.png" style="width: 45%;">
                </div>
            </div>
            <!-- 네비게이션 -->
            <jsp:include page="/WEB-INF/views/funcs/toTop.jsp"></jsp:include>
            <!-- /네비게이션  -->

            <!-- 푸터 -->
            <footer class="container-fluid navbar-fixed-bottom">
                <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
            </footer>
            <!-- /푸터 -->

        </body>

        </html>