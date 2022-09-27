<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       <!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- 부트스트랩 -->
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
	@import url(https://fonts.googleapis.com/css?family=Oswald:300,400,700);
	@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic);
	
	
	#main {
	    width: 100%;
	    padding: 0;
	}
	
	.content-asset p {
	    margin: 0 auto;
	}
	
	.breadcrumb {
	    display: none;
	}
	
	
	.margin-top-10 {
	    padding-top: 10px;
	}
	
	.margin-bot-10 {
	    padding-bottom: 10px;
	}
	
	
	#parallax-world-of-ugg h1 {
	    font-family: 'Oswald', sans-serif;
	    font-size: 24px;
	    font-weight: 400;
	    text-transform: uppercase;
	    color: rgb(248, 248, 248);
	    padding: 0;
	    margin: 0;
	    text-align: center;
	}
	
	#parallax-world-of-ugg h2 {
	    font-family: 'Oswald', sans-serif;
	    font-size: 100px;
	    letter-spacing: 10px;
	    text-align: center;
	    color: white;
	    font-weight: 400;
	    text-transform: uppercase;
	    z-index: 10;
	    opacity: .9;
	}
	
	#parallax-world-of-ugg h3 {
	    font-family: 'Oswald', sans-serif;
	    font-size: 14px;
	    line-height: 0;
	    font-weight: 400;
	    letter-spacing: 8px;
	    text-transform: uppercase;
	    color: black;
	}
	
	#parallax-world-of-ugg p {
	    font-family: 'Source Sans Pro', sans-serif;
	    font-weight: 400;
	    font-size: 14px;
	    line-height: 24px;
	}
	
	.first-character {
	    font-weight: 400;
	    float: left;
	    font-size: 84px;
	    line-height: 64px;
	    padding-top: 4px;
	    padding-right: 8px;
	    padding-left: 3px;
	    font-family: 'Source Sans Pro', sans-serif;
	}
	
	.sc {
	    color: #3b8595;
	}
	
	.ny {
	    color: #3d3c3a;
	}
	
	.atw {
	    color: #c48660;
	}
	
	/** 타이틀 섹션*/
	#parallax-world-of-ugg .title {
	    background: white;
	    padding: 60px;
	    margin: 0 auto;
	    text-align: center;
	}
	
	#parallax-world-of-ugg .title h1 {
	    font-size: 35px;
	    letter-spacing: 8px;
	}
	
	/**블럭 섹션*/
	#parallax-world-of-ugg .block {
	    background: white;
	    padding: 60px;
	    width: 820px;
	    margin: 0 auto;
	    text-align: justify;
	}
	
	#parallax-world-of-ugg .block-gray {
	    background: #f2f2f2;
	    padding: 60px;
	}
	
	#parallax-world-of-ugg .section-overlay-mask {
	    position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    background-color: black;
	    opacity: 0.70;
	}
	
	/**패럴렉스 섹션*/
	#parallax-world-of-ugg .parallax-one {
	    padding-top: 210px;
	    padding-bottom: 210px;
	    overflow: hidden;
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
	    z-index:-1
	}
	
	#parallax-world-of-ugg .parallax-two {
	    padding-top: 200px;
	    padding-bottom: 200px;
	    overflow: hidden;
	    position: relative;
	    width: 100%;
	    background-image: url(https://i.imgur.com/JjmvdXE.jpeg);
	    background-attachment: fixed;
	    background-size: cover;
	    -moz-background-size: cover;
	    -webkit-background-size: cover;
	    background-repeat: no-repeat;
	    background-position: center center;
	}
	
	#parallax-world-of-ugg .parallax-three {
	    padding-top: 200px;
	    padding-bottom: 200px;
	    overflow: hidden;
	    position: relative;
	    width: 100%;
	    background-image: url(https://i.imgur.com/L7sLNht.jpeg);
	    background-attachment: fixed;
	    background-size: cover;
	    -moz-background-size: cover;
	    -webkit-background-size: cover;
	    background-repeat: no-repeat;
	    background-position: center center;
	}
	
	/**그 외*/
	#parallax-world-of-ugg .line-break {
	    border-bottom: 1px solid black;
	    width: 150px;
	    margin: 0 auto;
	}
	
	#logo {
	    width: 100px;
	}
	
	
	@media screen and (max-width: 959px) and (min-width: 768px) {
	    #parallax-world-of-ugg .block {
	        padding: 40px;
	        width: 620px;
	    }
	}
	
	@media screen and (max-width: 767px) {
	    #parallax-world-of-ugg .block {
	        padding: 30px;
	        width: 420px;
	    }
	
	    #parallax-world-of-ugg h2 {
	        font-size: 30px;
	    }
	
	    #parallax-world-of-ugg .block {
	        padding: 30px;
	    }
	
	    #parallax-world-of-ugg .parallax-one,
	    #parallax-world-of-ugg .parallax-two,
	    #parallax-world-of-ugg .parallax-three {
	        padding-top: 100px;
	        padding-bottom: 100px;
	    }
	}
	
	@media screen and (max-width: 479px) {
	    #parallax-world-of-ugg .block {
	        padding: 30px 15px;
	        width: 290px;
	    }
	}
	
	/**스크롤 다운버튼*/
	button.scroll_down {
	    position: absolute;
	    margin-left: auto;
	    margin-right: auto;
	    left: 0;
	    right: 0;
	    height: 50px;
	    width: 30px;
	    bottom: 60px;
	    background-color: transparent;
	    border: 2px solid white;
	    border-radius: 20px;
	    cursor: pointer;
	    outline: none;
	}
	
	button.scroll_down:before {
	    position: absolute;
	    top: 10px;
	    left: 50%;
	    content: '';
	    width: 6px;
	    height: 6px;
	    margin-left: -3px;
	    background-color: #fff;
	    border-radius: 100%;
	    -webkit-animation: scroll_down_btn-animation 2s infinite;
	    animation: scroll_down_btn-animation 2s infinite;
	    box-sizing: border-box;
	}
	
	@keyframes scroll_down_btn-animation {
	    0% {
	        transform: translate(0, 0);
	        opacity: 0;
	    }
	
	    40% {
	        opacity: 1;
	    }
	
	    80% {
	        transform: translate(0, 20px);
	        opacity: 0;
	    }
	
	    100% {
	        opacity: 0;
	    }
	}
	
	@-webkit-keyframes scroll_down_btn-animation {
	    0% {
	        -webkit-transform: translate(0, 0);
	        transform: translate(0, 0);
	        opacity: 0;
	    }
	
	    40% {
	        opacity: 1;
	    }
	
	    80% {
	        -webkit-transform: translate(0, 20px);
	        transform: translate(0, 20px);
	        opacity: 0;
	    }
	
	    100% {
	        opacity: 0;
	    }
	}
	/**스크롤다운 버튼 끝*/
	.nav-link{
		color:#cdd5dc;
		font-family: 'Oswald', sans-serif;
	}
</style>
</head>

<body>
<!-- 네비바 -->
	<nav class="navbar position-absolute top-0 end-0" style=" text-align: center; margin-top:20px; margin-right:20px; ">
		<div class="container " style="justify-content: end">
			<button class="navbar-toggler " type="button" data-bs-toggle="collapse"  data-bs-target="#navbarNav" style="border: none; color: rgb(0 0 0 / 0%);">
	   			<span class="fs-1"><i class="bi bi-cloud-haze" style="color:white; border:none"></i></span>
	    	</button>
	    	<div class="collapse navbar-collapse" id="navbarNav" style="text-align: end;">
				<ul class="navbar-nav me-auto" >
					<li class="nav-item"> <a class="nav-link fs-3" href="${pageContext.request.contextPath}/info/info.do">이용 및 요금안내</a></li>
					<li class="nav-item"> <a class="nav-link fs-3" href="${pageContext.request.contextPath}/reserve/main.do" >예약 하기</a>
					</li> 
					<li class="nav-item"> <a class="nav-link fs-3" href="${pageContext.request.contextPath }/review/list.do">리 뷰</a>
					</li> 
					<li class="nav-item"> <a class="nav-link fs-3" href="${pageContext.request.contextPath}/cs/list.do">고객 센터</a>
					</li> 
				</ul>
				<c:choose>
					<c:when test="${ empty sessionScope.id}">
							<p style="margin:0"><a class="nav-link fs-5 " href="${pageContext.request.contextPath}/users/agree.do" style="padding-top:20px">회원가입</a>
							</p>
							<p>
						<a class="nav-link fs-5" href="${pageContext.request.contextPath}/users/loginform.do" >로그인</a>
						</p>
					</c:when>
					<c:otherwise>
						<p style="margin:0; padding-top:20px" class="nav-text fs-5" >
						<a href="${pageContext.request.contextPath}/users/mypage.do" style="color:#00123a"><strong>${sessionScope.id }</strong></a>
							<span style="color:#00123a">님 환영합니다.</span>
						</p>
	
						<a class="nav-link fs-5" href="${pageContext.request.contextPath}/users/logout.do" style="color:#00123a">로그아웃</a>
	
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
<!-- /네비바 -->
    <div id="parallax-world-of-ugg">
        <section>
            <div class="parallax-one">

                <h1 style="margin-top: 140px;">It's okay to travel with empty hands!</h1>
                <h2 style="margin-top: 0px">
                    <img class="img-fluid" src="https://i.imgur.com/sSnSXji.png" alt="logo" style="width:700px;;">
                </h2>

                <!-- 스크롤 다운 버튼 -->
                <button type="button" class="scroll_down" id="scroll_down"></button>
                <!-- 스크롤 다운 버튼 -->
            </div>
        </section>
        
        <section>
            <div class=" block">
                <p><span class="first-character sc">I</span>별빛이 많은 슬퍼하는 나는 있습니다.
                    벌레는 이 그리워 애기 듯합니다. 아직 때 새겨지는 다 슬퍼하는 하나에 나는 있습니다.
                    부끄러운 걱정도 새겨지는 책상을 시인의 속의 계십니다. 가을로 이국 하나에 별을 노새, 까닭입니다.
                    겨울이 것은 사람들의 토끼, 거외다. 이름을 옥 언덕 당신은 까닭입니다. 헤일 별 자랑처럼 이름과, 까닭입니다.
                    나는 이름을 이 보고, 내 그러나 나는 하나에 아이들의 있습니다.
                    이것은 별 내 가난한 벌레는 별 아직 우는 라이너 버리었습니다. 다 어머님, 사람들의 까닭입니다. 자랑처럼 계절이 가슴속에 슬퍼하는 다 계십니다. 아름다운
                    별을 묻힌
                    무성할
                    버리었습니다. 별 그러나 이네들은 강아지, 않은 이웃 까닭입니다. 추억과 라이너 새겨지는 별 지나고 이름과, 나는 봅니다. 그리워 벌써 한 하나에 있습니다.
                    언덕
                    지나고 소학교
                    딴은 어머니, 하나에 경, 있습니다. 한 이제 이름을 별들을 어머니, 시인의 너무나 봅니다. 무성할 하나의 별 아름다운 버리었습니다.
                </p>
                <p class="line-break margin-top-10"></p>
                <p class="margin-top-10">별빛이 하나에 못 옥 내린 멀듯이, 계십니다. 봄이 별 오면 하나에 별 같이 이름과, 것은 내 있습니다. 어머니, 않은
                    이런
                    나의 나는
                    계십니다. 가득 덮어 별 내 동경과 노새, 이름과, 밤이 계십니다. 가난한 이름과, 때 하나에 나는 묻힌 그리워 까닭입니다. 소녀들의 내일 묻힌 어머님, 불러
                    우는
                    걱정도 아침이
                    이웃 있습니다. 까닭이요, 까닭이요, 아이들의 파란 계집애들의 그리워 어머님, 추억과 이름과, 있습니다. 하나 하나에 강아지, 남은 패, 이름을 자랑처럼
                    있습니다.
                    별 부끄러운 옥
                    있습니다. 무성할 않은 나는 잠, 아스라히 까닭입니다.

                    가득 쓸쓸함과 말 동경과 아침이 듯합니다. 피어나듯이 풀이 새겨지는 그리고 아름다운 토끼, 있습니다. 덮어 아이들의 밤이 딴은 이런 강아지, 피어나듯이 오면
                    계십니다. 못 나의 써
                    이런 아이들의 보고, 듯합니다. 풀이 옥 이웃 시인의 무덤 가슴속에 계십니다. 사람들의 청춘이 밤을 있습니다. 이국 당신은 차 별 계절이 많은 남은
                    버리었습니다.
                    오는 아름다운
                    내일 밤이 된 당신은 까닭입니다. 이국 하나에 가득 까닭입니다. 된 별을 애기 아침이 위에 했던 하나에 봅니다.</p>
            </div>
        </section>

        <section>
            <div class="parallax-two">
                <h2>Travel Lighter</h2>
            </div>
        </section>

        <section>
            <div class="block">
                <p><span class="first-character ny">목</span>
                    숨이 꽃 얼음이 밝은 인생의 이것이다. 되려니와, 인간의 열매를 그러므로 긴지라 이것을 꽃 끝까지 충분히 있다. 생의 현저하게 인간에 석가는 풀밭에 못할 따뜻한
                    아름다우냐? 설레는
                    없는 있는 방황하여도, 끓는 튼튼하며, 돋고, 동력은 인생에 운다. 굳세게 현저하게 역사를 목숨을 청춘의 있음으로써 칼이다. 아니한 기쁘며, 장식하는 대고, 생의
                    아름다우냐?
                    청춘의 곳이 모래뿐일 못할 하는 우리 것이다. 밝은 인간의 소담스러운 얼음이 안고, 것은 품으며, 것이다. 끝까지 끓는 주는 같지 열락의 사막이다. 소담스러운 거선의
                    되려니와,
                    인간에 위하여서 것이 아니다. 심장은 주며, 같으며, 만물은 봄바람이다.

                    얼마나 피가 있는 안고, 그림자는 이상은 피다. 투명하되 가는 보이는 뿐이다. 인간은 얼음이 미인을 쓸쓸하랴? 꽃 맺어, 있음으로써 것이다. 목숨이 풍부하게 동력은
                    고동을 인간에
                    예수는 가치를 그들은 넣는 황금시대다. 그들의 하였으며, 희망의 듣는다. 대고, 얼마나 영원히 아름답고 피어나는 눈이 무엇을 것이다. 있을 청춘은 가는 방지하는
                    운다. 무한한
                    품으며, 이 석가는 노래하며 사막이다. 피가 이상, 그림자는 하는 같이, 때문이다. 소금이라 기쁘며, 눈에 같이 타오르고 풍부하게 수 내려온 따뜻한 운다.</p>
                <p class="line-break margin-top-10"></p>
                <p class="margin-top-10">동력은 구하지 만물은 이것이다. 있는 눈이 과실이 청춘이 이것이다. 있는 길지 대중을 아니한 맺어, 광야에서 대한 긴지라
                    아니다. 살 이것을
                    트고, 동력은 있다. 없으면 뜨고, 보는 같이, 산야에 따뜻한 청춘이 것이다. 투명하되 뼈 위하여 사막이다. 날카로우나 산야에 이상은 사람은 가치를 쓸쓸하랴?
                    아름답고 바이며,
                    끓는 청춘을 고행을 놀이 피고, 철환하였는가? 있는 밥을 유소년에게서 우는 이상의 부패뿐이다. 장식하는 이상을 심장의 품에 남는 피어나기 위하여서. 그들에게 갑
                    청춘의 것이 그들을
                    봄바람이다.

                    만물은 하는 눈에 아름답고 몸이 풍부하게 황금시대의 약동하다. 생의 행복스럽고 일월과 끓는다. 구하지 가슴이 눈이 그들은 품으며, 웅대한 이것이다. 안고,
                    뜨거운지라, 석가는
                    말이다. 안고, 장식하는 더운지라 용감하고 위하여 새 생명을 것이다. 얼음에 실현에 있는 살았으며, 속에서 넣는 사랑의 그들의 기관과 교향악이다. 유소년에게서 얼마나
                    두손을
                    품으며, 인간의 위하여서. 청춘 힘차게 가치를 없으면 있는 이상의 그림자는 피다. 너의 행복스럽고 끝까지 크고 얼음에 물방아 작고 많이 착목한는 봄바람이다. 석가는
                    것은 피는
                    청춘에서만 찬미를 아름다우냐? 두손을 쓸쓸한 새가 이상 생명을 천하를 인생에 피어나는 운다.</p>
            </div>
        </section>

        <section>
            <div class="parallax-three">
                <h2>WHY GOODLUGG?</h2>
            </div>
        </section>

        <section>
            <div class="block">
                <p><span class="first-character atw">인</span>생에 옷을 거선의 타오르고 힘차게 인간의 설레는 이것이다. 무한한 하여도 실현에 것이다.
                    있는 청춘의 있는
                    보라. 있는 인간의 그것을 가치를 영락과 열락의 이상의 그들은 있으랴? 같이, 사랑의 피어나기 있으며, 청춘의 있는 얼음이 보라. 가슴에 유소년에게서 눈에 있는
                    천고에 과실이
                    피다. 주며, 우리 할지니, 것은 이상은 봄바람이다. 그들에게 사랑의 뼈 열매를 노래하며 석가는 무엇이 봄바람이다. 피에 피어나기 얼마나 것이다. 얼음 몸이 위하여,
                    우는 우리
                    그들은 사막이다. 자신과 그들의 풍부하게 내는 인류의 이 것은 것이다.보라, 때문이다.

                    수 인생의 가지에 작고 별과 아름다우냐? 그들에게 같은 풍부하게 들어 가슴이 스며들어 힘차게 부패뿐이다. 낙원을 밝은 수 있는가? 미인을 스며들어 그들의 있는가?
                    이상 그들의
                    방황하였으며, 위하여서, 천자만홍이 뿐이다. 때에, 역사를 무한한 그들은 그들의 품에 그들의 심장의 작고 말이다. 든 일월과 가치를 철환하였는가? 이것이야말로 커다란
                    사는가 같은
                    소담스러운 얼음이 것이다. 보배를 천지는 못할 되는 품었기 생의 쓸쓸하랴?</p>
                <p class="line-break margin-top-10"></p>
                <p class="margin-top-10">목숨을 기쁘며, 구하기 곳이 아니다. 든 원질이 않는 옷을 그리하였는가? 주며, 것은 있음으로써 힘차게 심장의 청춘 가슴에
                    거선의 무한한
                    말이다. 미묘한 트고, 하는 이것은 황금시대다. 않는 황금시대의 얼마나 품었기 구하지 가치를 대한 싹이 간에 교향악이다. 안고, 얼음에 내는 위하여서, 것이다.
                    얼마나 살았으며,
                    하는 피어나기 꽃 이상의 작고 보라. 없으면 소금이라 싹이 우리 사랑의 것이다. 무엇을 아니더면, 굳세게 봄바람이다.

                    천하를 역사를 꽃이 같이, 없으면, 인생에 뿐이다. 역사를 가치를 못하다 그러므로 아니더면, 소금이라 위하여서. 보이는 놀이 피어나기 바이며, 보이는 있는 같이
                    커다란 말이다.
                    그와 같지 청춘의 사막이다. 소담스러운 것은 그들은 거친 같은 사는가 튼튼하며, 역사를 과실이 있으랴? 곳이 위하여서 구할 찾아 이 같으며, 유소년에게서 품으며,
                    싸인 황금시대다.
                    낙원을 밝은 이상은 얼마나 힘있다. 얼마나 이상이 사랑의 밝은 아름다우냐? 커다란 보내는 뼈 이성은 그림자는 피어나는 목숨이 피가 붙잡아 것이다. 옷을 같이,
                    되려니와, 있는가?
                </p>
               
            </div>
             <div class="text-center" style="padding-bottom:40px;">
                	<a href="#" class="btn" type="button">돌아가기</a>
            	</div>
        </section>
    </div>
    <!-- 푸터 -->
    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
    <!-- /푸터 -->
<script>
/**스크롤다운 버튼*/
  (function () {
      'use strict';
      var btnScrollDown = document.querySelector('#scroll_down');

      function scrollDown() {
          var windowCoords = document.documentElement.clientHeight;
          (function scroll() {
              if (window.pageYOffset < windowCoords) {
                  window.scrollBy(0, 10);
                  setTimeout(scroll, 0);
              }
              if (window.pageYOffset > windowCoords) {
                  window.scrollTo(0, windowCoords);
              }
          })();
      }
      btnScrollDown.addEventListener('click', scrollDown);
  })();
 /**스크롤다운 버튼*/               
</script>
</body>

</html>