<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
	.main {
	    margin: 0;
	    height: 100vh;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    background-color: rgb(226, 226, 226);
	}
	
	.case {
	    width: 170px;
	    height: 250px;
	    float: left;
	    position: relative;
	    margin : 100px;
	}
	
	
	
	.case .title {
	    width: 175px;
	    position: absolute;
	    top: -90px;
	    text-align-last: center;
	    color:#00123a;
	}
	
	:root {
	    --font-size: 7px;
	}
	
	/** 1번 창문*/
	.toggle1 {
	    position: absolute;
	    filter: opacity(0);
	    width: 175px;
	    height: 250px;
	    font-size: var(--font-size);
	    cursor: pointer;
	    z-index: 3;
	}
	
	.window1 {
	    position: absolute;
	    box-sizing: border-box;
	    width: 25em;
	    height: 35em;
	    font-size: var(--font-size);
	    background-color: #d9d9d9;
	    border-radius: 5em;
	    box-shadow:
	        inset 0 0 8em rgba(0, 0, 0, 0.2),
	        0 0 0 0.4em #808080,
	        0 0 0 4em whitesmoke,
	        0 0 0 4.4em #808080,
	        0 2em 4em 4em rgba(0, 0, 0, 0.1);
	    overflow: hidden;
	}
	
	.window1 .curtain1 {
	    position: absolute;
	    width: inherit;
	    height: inherit;
	    background-color: whitesmoke;
	    top: -5%;
	    border-radius: 5em;
	    box-shadow:
	        0 0 0 0.4em #808080,
	        0 0 3em rgba(0, 0, 0, 0.4);
	    transition: 0.5s ease-in-out;
	    z-index: 2;
	}
	
	.toggle1:checked~.window1 .curtain1 {
	    top: -90%;
	}
	
	.window1 .curtain1::before {
	    content: '';
	    position: absolute;
	    width: 40%;
	    height: 0.8em;
	    background-color: #808080;
	    left: 30%;
	    bottom: 1.6em;
	    border-radius: 0.4em;
	}
	
	.window1 .curtain1::after {
	    content: '';
	    position: absolute;
	    width: 1.6em;
	    height: 0.8em;
	    bottom: 1.6em;
	    background-image: radial-gradient(orange, orangered);
	    left: calc((100% - 1.6em) / 2);
	    border-radius: 0.4em;
	}
	
	.toggle:checked~.window1 .curtain1::after {
	    background-image: radial-gradient(lightgreen, limegreen);
	}
	
	.window1 .clouds1 {
	    position: relative;
	    width: 20em;
	    height: 30em;
	    background-color: deepskyblue;
	    left: calc((100% - 20em) / 2);
	    top: calc((100% - 30em) / 2);
	    border-radius: 7em;
	    box-shadow: 0 0 0 0.4em #808080;
	    overflow: hidden;
	}
	
	.clouds1 span {
	    position: absolute;
	    width: 10em;
	    height: 4em;
	    background-color: white;
	    top: 20%;
	    border-radius: 4em;
	    animation: move1 6s linear infinite;
	}
	
	@keyframes move1 {
	    from {
	        left: -150%;
	        top: -150%
	    }
	
	    to {
	        left: 150%;
	        top: 150%
	    }
	}
	
	.clouds1 span::before,
	.clouds1 span::after {
	    content: '';
	    position: absolute;
	    width: 4em;
	    height: 4em;
	    background-color: white;
	    border-radius: 50%;
	}
	
	.clouds1 span::before {
	    top: -2em;
	    left: 2em;
	}
	
	.clouds1 span::after {
	    top: -1em;
	    right: 1em;
	}
	
	.clouds1 span:nth-child(2) {
	    top: 40%;
	    animation-delay: -1s;
	}
	
	.clouds1 span:nth-child(3) {
	    top: 60%;
	    animation-delay: -0.5s;
	}
	
	.clouds1 span:nth-child(4) {
	    top: 20%;
	    transform: scale(2);
	    animation-delay: -1.5s;
	}
	
	.clouds1 span:nth-child(5) {
	    top: 70%;
	    transform: scale(1.5);
	    animation-delay: -3s;
	}
	
	/**2번 창문*/
	.toggle2 {
	    position: absolute;
	    filter: opacity(0);
	    width: 175px;
	    height: 250px;
	    font-size: var(--font-size);
	    cursor: pointer;
	    z-index: 3;
	}
	
	.window2 {
	    position: absolute;
	    box-sizing: border-box;
	    width: 25em;
	    height: 35em;
	    font-size: var(--font-size);
	    background-color: #d9d9d9;
	    border-radius: 5em;
	    box-shadow:
	        inset 0 0 8em rgba(0, 0, 0, 0.2),
	        0 0 0 0.4em #808080,
	        0 0 0 4em whitesmoke,
	        0 0 0 4.4em #808080,
	        0 2em 4em 4em rgba(0, 0, 0, 0.1);
	    overflow: hidden;
	}
	
	.window2 .curtain2 {
	    position: absolute;
	    width: inherit;
	    height: inherit;
	    background-color: whitesmoke;
	    top: -5%;
	    border-radius: 5em;
	    box-shadow:
	        0 0 0 0.4em #808080,
	        0 0 3em rgba(0, 0, 0, 0.4);
	    transition: 0.5s ease-in-out;
	    z-index: 2;
	}
	
	.toggle2:checked~.window2 .curtain2 {
	    top: -90%;
	}
	
	.window2 .curtain2::before {
	    content: '';
	    position: absolute;
	    width: 40%;
	    height: 0.8em;
	    background-color: #808080;
	    left: 30%;
	    bottom: 1.6em;
	    border-radius: 0.4em;
	}
	
	.window2 .curtain2::after {
	    content: '';
	    position: absolute;
	    width: 1.6em;
	    height: 0.8em;
	    bottom: 1.6em;
	    background-image: radial-gradient(orange, orangered);
	    left: calc((100% - 1.6em) / 2);
	    border-radius: 0.4em;
	}
	
	.toggle:checked~.window2 .curtain2::after {
	    background-image: radial-gradient(lightgreen, limegreen);
	}
	
	.window2 .clouds2 {
	    position: relative;
	    width: 20em;
	    height: 30em;
	    background-color: deepskyblue;
	    left: calc((100% - 20em) / 2);
	    top: calc((100% - 30em) / 2);
	    border-radius: 7em;
	    box-shadow: 0 0 0 0.4em #808080;
	    overflow: hidden;
	}
	
	.clouds2 span {
	    position: absolute;
	    width: 10em;
	    height: 4em;
	    background-color: white;
	    top: 20%;
	    border-radius: 4em;
	    animation: move 5s linear infinite;
	}
	
	@keyframes move {
	    from {
	        right: 150%;
	        top: 150%
	    }
	
	    to {
	        right: -150%;
	        top: -150%
	    }
	}
	
	.clouds2 span::before,
	.clouds2 span::after {
	    content: '';
	    position: absolute;
	    width: 4em;
	    height: 4em;
	    background-color: white;
	    border-radius: 50%;
	}
	
	.clouds2 span::before {
	    top: -2em;
	    left: 2em;
	}
	
	.clouds2 span::after {
	    top: -1em;
	    right: 1em;
	}
	
	.clouds2 span:nth-child(2) {
	    top: 40%;
	    animation-delay: -1s;
	}
	
	.clouds2 span:nth-child(3) {
	    top: 60%;
	    animation-delay: -0.5s;
	}
	
	.clouds2 span:nth-child(4) {
	    top: 20%;
	    transform: scale(2);
	    animation-delay: -1.5s;
	}
	
	.clouds2 span:nth-child(5) {
	    top: 70%;
	    transform: scale(1.5);
	    animation-delay: -3s;
	}
	
	/**3번 창문*/
	.toggle3 {
	    position: absolute;
	    filter: opacity(0);
	    width: 175px;
	    height: 250px;
	    font-size: var(--font-size);
	    cursor: pointer;
	    z-index: 3;
	}
	
	.window3 {
	    position: absolute;
	    box-sizing: border-box;
	    width: 25em;
	    height: 35em;
	    font-size: var(--font-size);
	    background-color: #d9d9d9;
	    border-radius: 5em;
	    box-shadow:
	        inset 0 0 8em rgba(0, 0, 0, 0.2),
	        0 0 0 0.4em #808080,
	        0 0 0 4em whitesmoke,
	        0 0 0 4.4em #808080,
	        0 2em 4em 4em rgba(0, 0, 0, 0.1);
	    overflow: hidden;
	}
	
	.window3 .curtain3 {
	    position: absolute;
	    width: inherit;
	    height: inherit;
	    background-color: whitesmoke;
	    top: -5%;
	    border-radius: 5em;
	    box-shadow:
	        0 0 0 0.4em #808080,
	        0 0 3em rgba(0, 0, 0, 0.4);
	    transition: 0.5s ease-in-out;
	    z-index: 2;
	}
	
	.toggle3:checked~.window3 .curtain3 {
	    top: -90%;
	}
	
	.window3 .curtain3::before {
	    content: '';
	    position: absolute;
	    width: 40%;
	    height: 0.8em;
	    background-color: #808080;
	    left: 30%;
	    bottom: 1.6em;
	    border-radius: 0.4em;
	}
	
	.window3 .curtain3::after {
	    content: '';
	    position: absolute;
	    width: 1.6em;
	    height: 0.8em;
	    bottom: 1.6em;
	    background-image: radial-gradient(orange, orangered);
	    left: calc((100% - 1.6em) / 2);
	    border-radius: 0.4em;
	}
	
	.toggle:checked~.window3 .curtain3::after {
	    background-image: radial-gradient(lightgreen, limegreen);
	}
	
	.window3 .clouds3 {
	    position: relative;
	    width: 20em;
	    height: 30em;
	    background-color: deepskyblue;
	    left: calc((100% - 20em) / 2);
	    top: calc((100% - 30em) / 2);
	    border-radius: 7em;
	    box-shadow: 0 0 0 0.4em #808080;
	    overflow: hidden;
	}
	
	.clouds3 span {
	    position: absolute;
	    width: 10em;
	    height: 4em;
	    background-color: white;
	    top: 20%;
	    border-radius: 4em;
	    animation: move3 8s linear infinite;
	}
	
	@keyframes move3 {
	    from {
	        left: -150%;
	
	    }
	
	    to {
	        left: 150%;
	
	    }
	}
	
	.clouds3 span::before,
	.clouds3 span::after {
	    content: '';
	    position: absolute;
	    width: 4em;
	    height: 4em;
	    background-color: white;
	    border-radius: 50%;
	}
	
	.clouds3 span::before {
	    top: -2em;
	    left: 2em;
	}
	
	.clouds3 span::after {
	    top: -1em;
	    right: 1em;
	}
	
	.clouds3 span:nth-child(2) {
	    top: 40%;
	    animation-delay: -1s;
	}
	
	.clouds3 span:nth-child(3) {
	    top: 60%;
	    animation-delay: -0.5s;
	}
	
	.clouds3 span:nth-child(4) {
	    top: 20%;
	    transform: scale(2);
	    animation-delay: -1.5s;
	}
	
	.clouds3 span:nth-child(5) {
	    top: 70%;
	    transform: scale(1.5);
	    animation-delay: -3s;
	}
	/**4번창문 */
	        .toggle4 {
	    position: absolute;
	    filter: opacity(0);
	    width: 175px;
	    height: 250px;
	    font-size: var(--font-size);
	    cursor: pointer;
	    z-index: 3;
	}
	
	.window4 {
	    position: absolute;
	    box-sizing: border-box;
	    width: 25em;
	    height: 35em;
	    font-size: var(--font-size);
	    background-color: #d9d9d9;
	    border-radius: 5em;
	    box-shadow:
	        inset 0 0 8em rgba(0, 0, 0, 0.2),
	        0 0 0 0.4em #808080,
	        0 0 0 4em whitesmoke,
	        0 0 0 4.4em #808080,
	        0 2em 4em 4em rgba(0, 0, 0, 0.1);
	    overflow: hidden;
	}
	
	.window4 .curtain4 {
	    position: absolute;
	    width: inherit;
	    height: inherit;
	    background-color: whitesmoke;
	    top: -5%;
	    border-radius: 5em;
	    box-shadow:
	        0 0 0 0.4em #808080,
	        0 0 3em rgba(0, 0, 0, 0.4);
	    transition: 0.5s ease-in-out;
	    z-index: 2;
	}
	
	.toggle4:checked~.window4 .curtain4 {
	    top: -90%;
	}
	
	.window4 .curtain4::before {
	    content: '';
	    position: absolute;
	    width: 40%;
	    height: 0.8em;
	    background-color: #808080;
	    left: 30%;
	    bottom: 1.6em;
	    border-radius: 0.4em;
	}
	
	.window4 .curtain4::after {
	    content: '';
	    position: absolute;
	    width: 1.6em;
	    height: 0.8em;
	    bottom: 1.6em;
	    background-image: radial-gradient(orange, orangered);
	    left: calc((100% - 1.6em) / 2);
	    border-radius: 0.4em;
	}
	
	.toggle:checked~.window4 .curtain4::after {
	    background-image: radial-gradient(lightgreen, limegreen);
	}
	
	.window4 .clouds4 {
	    position: relative;
	    width: 20em;
	    height: 30em;
	    background-color: deepskyblue;
	    left: calc((100% - 20em) / 2);
	    top: calc((100% - 30em) / 2);
	    border-radius: 7em;
	    box-shadow: 0 0 0 0.4em #808080;
	    overflow: hidden;
	}
	
	.clouds4 span {
	    position: absolute;
	    width: 10em;
	    height: 4em;
	    background-color: white;
	    top: 20%;
	    border-radius: 4em;
	    animation: move3 8s linear infinite;
	}
	
	@keyframes move3 {
	    from {
	        left: -150%;
	
	    }
	
	    to {
	        left: 150%;
	
	    }
	}
	
	.clouds4 span::before,
	.clouds4 span::after {
	    content: '';
	    position: absolute;
	    width: 4em;
	    height: 4em;
	    background-color: white;
	    border-radius: 50%;
	}
	
	.clouds4 span::before {
	    top: -2em;
	    left: 2em;
	}
	
	.clouds4 span::after {
	    top: -1em;
	    right: 1em;
	}
	
	.clouds4 span:nth-child(2) {
	    top: 40%;
	    animation-delay: -1s;
	}
	
	.clouds4 span:nth-child(3) {
	    top: 60%;
	    animation-delay: -0.5s;
	}
	
	.clouds4 span:nth-child(4) {
	    top: 20%;
	    transform: scale(2);
	    animation-delay: -1.5s;
	}
	
	.clouds4 span:nth-child(5) {
	    top: 70%;
	    transform: scale(1.5);
	    animation-delay: -3s;
	}
    </style>
</head>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->

	<!-- 본문 -->
	<div class="main">
	    <div class="case">
	        <h2 class="title">출국 서비스</h2>
	        <input type="checkbox" class="toggle1" onclick="link1()">
	        <figure class="window1">
	            <div class="curtain1"></div>
	            <div class="clouds1">
	                <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	            </div>
	        </figure>
	    </div>
	    <div class="case">
	        <h2 class="title">입국 서비스</h2>
	        <input type="checkbox" class="toggle2" onclick="link2()">
	        <figure class="window2">
	            <div class="curtain2"></div>
	            <div class="clouds2">
	                <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	            </div>
	        </figure>
	    </div>
	    <div class="case">
	        <input type="checkbox" class="toggle3" onclick="link3()">
	        <h2 class="title">출국 예약</h2>
	        <figure class="window3">
	            <div class="curtain3"></div>
	            <div class="clouds3">
	                <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	            </div>
	        </figure>
	    </div>
	    <div class="case">
	        <input type="checkbox" class="toggle4" onclick="link4()">
	        <h2 class="title">입국 예약</h2>
	        <figure class="window4">
	            <div class="curtain4"></div>
	            <div class="clouds4">
	                <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	            </div>
	        </figure>
	    </div>
	</div>
	<!-- /본문 -->
	<!-- 푸터 -->
    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
	<!-- /푸터 -->
	 <script>
        function link1() {
            setTimeout(function () {
                location.href = "${pageContext.request.contextPath }/reserve/leave_insertform.do";
            }, 1000)
        }
        function link2() {
            setTimeout(function () {
                location.href = "${pageContext.request.contextPath }/reserve/ent_insertform.do";
            }, 1000)
        }
        function link3() {
            setTimeout(function () {
                location.href = "${pageContext.request.contextPath }/reserve/list.do";
            }, 1000)
        }
        function link4() {
            setTimeout(function () {
                location.href = "${pageContext.request.contextPath }/reserve/list2.do";
            }, 1000)
        }
    </script>
</body>
</html>