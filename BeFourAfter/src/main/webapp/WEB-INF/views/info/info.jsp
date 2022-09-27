<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>

   #fixmenu{
   	  position:sticky;
	  top:0;
   }   
   .img1{
      height:50px;
      width:50px;
      margin-top: 6px;
      margin-right: 20px;
   }
   .img2{
      height:50px;
      width:50px;
      margin-right: 20px;
      margin-bottom: 20px;
   }
   .img3{
      height:60px;
      width:60px;
      margin-top: 6px;
      margin-right: 20px;
   }
   .box-container1{
      display:inline-flex;
   }
   .box-container2{
      display:flex;
   }
   .box-container3{
      display:inline-flex;
   }
   .box-container4{
      display:flex;
   }

</style>
</head>

<body>

   <!-- 네비바 -->
   <jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
   <!-- /네비바 -->

   <!-- 본문 <-->
   <div>
      <!--바로가기-->
		<div id="fixmenu">
			<div class="container p-5 text-center">
				<div style="width: 100%; min-height: 1px; height: 40px;" >
					<div class="scroll-container">
						<a href="#1"><button class="btn">예약방법</button></a> 
						<a href="#2"><button class="btn">요금안내</button></a> 
						<a href="#3"><button class="btn">취소 및 환불규정</button></a> 
						<a href="#4"><button class="btn">배송 스케줄</button></a>
						<a href="#5"><button class="btn">주의사항</button></a> 
					</div>
				</div>
			</div>
		</div>
      <!--예약방법-->
      <div class="bg-light" id="1">
         <div class="container p-5" >
            <div >
               <h3>예약방법</h3>
               <div class="box-container1">
                  <div>
                     <img class="img3" src="${pageContext.request.contextPath}/resources/동물원/icons/booking.png" alt="예약방법">
                  </div>
                  <div>
                     홈페이지를 통해 예약 신청 시 담당자가 확인 후 예약 확인 메시지를 보내드립니다. <br> 안내받으신 계좌번호로
                     입금하시고 메세지를 보내주세요 입금확인 되면 예약이 완료됩니다. <br> 예약자명과 입금자 명이 다를
                     경우에는 연락 부탁 드립니다.
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!--요금안내-->
      <div id="2">
         <div class="container p-5" >
            <div >
               <h3>요금안내</h3>
               <br>
               <div class="box-container1">
                  <div>
                     <img class="img1" src="${pageContext.request.contextPath}/resources/동물원/icons/suitcase.png" alt="기본 수하물">
                  </div>
                  <div>
                     <strong>기본 수하물</strong> <br>
                     <p>
                        캐리어28인치 이하, 백팩, 가방, 20kg 이하 <br> 15,000원
                     </p>
                  </div>
               </div>
               <div class="box-container2">
                  <div>
                     <img class="img1" src="${pageContext.request.contextPath}/resources/동물원/icons/suitcase (3).png" alt="대형 수하물">
                  </div>
                  <div>
                     <strong>대형 수하물</strong> <br>
                     <p>
                        캐리어28인치 초과, 박스, 골프백, 20kg 초과 <br> 25,000원
                     </p>
                  </div>
               </div>
               <div class="box-container3">
                  <div>
                     <img class="img2" src="${pageContext.request.contextPath}/resources/동물원/icons/number-25.png" alt="25kg초과">
                  </div>
                  <div>
                     <strong>25kg 초과</strong> <br>
                     <p>개당 5,000원 추가</p>
                  </div>
               </div>
               <div class="box-container4">
                  <div>
                     <img class="img2" src="${pageContext.request.contextPath}/resources/동물원/icons/golf-clubs.png" alt="기타물품">
                  </div>
                  <div>
                     <strong>기타물품</strong> <br>
                     <p>가격문의</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!--취소 및 환불규정-->
      <div class="bg-light" id="3">
         <div class="container p-5">
            <div >
               <h3>※취소 및 환불규정</h3>
               <table class="table">
                  <thead>
                     <tr>
                        <th>여행 2일전</th>
                        <th>여행 1일전</th>
                        <th>여행 당일</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <th>70%</th>
                        <th>50%</th>
                        <th>환불불가</th>
                     </tr>
                  </tbody>
               </table>
            </div>
         </div>
      </div>
      <!-- 배송 스케줄-->
      <div id="4">
         <div class="container p-5">
            <div >
               <h3>배송 스케줄</h3>
               <br />
               <div>
                  <h4>-입국</h4>
                  <ol>
                     <li>공항 픽업은 오전 7:00 부터 9:00까지 이용이 가능하며, 스케줄에 따라 최대 오전 9:30까지
                        이용이 가능합니다.</li>
                     <li>공항 도착 후 1층 1번 게이트에서 배송매니저님께 가방을 전달해 주시면 됩니다.</li>
                     <li>비행기 지연 시 출발 전 미리 연락 부탁드립니다. 사전에 연락 없이 예약시간에 늦으시는 경우 스케줄에
                        따라 예약이 취소될 수 있으며, 이 경우에는 환불이 불가합니다.</li>
                  </ol>
               </div>
               <div>
                  <h4>-출국</h4>
                  <ol>
                     <li>숙소 픽업 시간은 스케줄에 따라 순차적으로 이루어지고 있어 따로 시간 지정이 불가능합니다. 공항 전달
                        시간은 17:00 ~ 19:50 까지 이용이 가능하며, 스케줄에 따라 최대 16:00 부터 이용이 가능합니다. <br>09:00
                        ~ 18:00 사이 배송이 이루어지며 스케줄에 따라 최대 19:00까지 배송이 지연될 수 있습니다. 이 경우에는
                        미리 안내드리고 있습니다.
                     </li>
                     <li>이용 당일 오전에 안내받으신 시간까지 가방을 숙소 프론트에 꼭 맡겨주세요. 가방을 맡기실때는
                        [가방은여행중] 에서 픽업 예정이라고 미리 말씀 부탁드리겠습니다. 이용 당일 안내 받으신 시간까지 가방이 맡겨져
                        있지않을 경우 예약이 취소 될 수 있으며, 이 경우에는 환불이 불가합니다.</li>
                     <li>약속 된 시간을 꼭 지켜주시길 바라며 약속 된 시간이 지나도 연락이 안되는 경우에는 예약이 취소 될
                        수 있습니다. 이 경우에는 환불이 불가합니다.</li>
                  </ol>
               </div>
            </div>
         </div>
      </div>
      <!--기타-->
      <div id="5">
         <div class="bg-light">
            <div class="container p-5">
               <div>
                  <div>
                     <h6><strong>※주의 사항※</strong></h6>
                     <ol>
                        <li>숙소에서 짐 보관을 거절하거나, 짐을 보관할 장소가 없는 경우에는 이용이 불가능 할 수 있습니다.</li>
                        <li>예약전, 이용하실 숙소 사장님께 짐옮김이 서비스 이용이 가능한지 사전에 확인 바랍니다.</li>
                        <li>태풍,폭우,폭설 등 천재지변으로 인해 배송이 어려울 경우 불가피하게 당일 서비스 이용이 취소될 수 있습니다.</li>
                        <li>전자기기와 귀중품 등 파손위험이 있는 물품들은 고객님께서 별도 보관 바랍니다.</li>
                        <li>개인의 부주의로 인해 주의사항 미숙지 시 발생하는 문제는 책임지지 않습니다 :)</li>
                     </ol>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- /본문 -->


   <!-- 푸터 -->
    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
   <!-- /푸터 -->
</body>

</html>