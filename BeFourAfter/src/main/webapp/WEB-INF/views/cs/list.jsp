<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>/views/cs/list.jsp</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
</head>

<body>
   <!-- 네비바 -->
   <jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
   <!-- /네비바 -->

   <!-- 본문 -->
   <!-- 아코디언 메뉴 -->
   <div class="accordion container p-5" id="accordion">
      <div class=" accordion-item"
         style="border-top: none; border-left: none; border-right: none;">
         <h1 class="text-center" alt="FAQ">FAQ</h1>
         <div class="text-muted text-center fs-6" alt="자주 묻는 질문들 입니다.">
            자주 묻는 질문들 입니다. <br> <br>
         </div>
      </div>
      <div class=" accordion-item">
         <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button collapsed" type="button"
               data-bs-toggle="collapse" data-bs-target="#collapseOne"
               aria-expanded="false" aria-controls="collapseOne">[예약]
               예약을 변경하고 싶어요</button>


         </h2>
         <div id="collapseOne" class="accordion-collapse collapse collapse"
            aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body">
               <strong>여행 일정이 변경되셨나요?</strong> <br /> <br /> 숙소명을 잘못 기재하셨거나 숙소
               또는 이용일자에 변동이 있으신 경우 0000-0000 로 전화주시거나 카카오톡 채널 '굿럭' 으로 문의주시면 예약 내용을
               도와드리겠습니다.

            </div>
         </div>
      </div>
      <div class="accordion-item">
         <h2 class="accordion-header" id="headingTwo">
            <button class="accordion-button collapsed" type="button"
               data-bs-toggle="collapse" data-bs-target="#collapseTwo"
               aria-expanded="false" aria-controls="collapseTwo">[예약] 예약을
               취소/환불 하고 싶어요</button>
         </h2>
         <div id="collapseTwo" class="accordion-collapse collapse"
            aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body">
               <strong>여행 일정에 차질이 생기셨나요?</strong><br> <br>
               <p>굿럭의 예약 취소/환불은 아래와 같이 이루어집니다.
               <ol>
                  <li>홈페이지 예약 : 서비스 이용 전날 21시 전까지 예약을 취소한 경우, 결제 금액의 90%를
                     환불받으실 수 있습니다. 서비스 이용 전날 21시 이후에는 취소는 가능하지만 환불은 불가합니다.</li>
                  <li>굿럭 매장 현장접수: 영수증을 지참하신 경우 취소/환불이 가능합니다. 단, 고객님의 수화물 운송이
                     시작되면 취소/환불이 불가합니다.</li>
               </ol>
               </p>

            </div>
         </div>
      </div>
      <div class="accordion-item">
         <h2 class="accordion-header" id="headingThree">
            <button class="accordion-button collapsed" type="button"
               data-bs-toggle="collapse" data-bs-target="#collapseThree"
               aria-expanded="false" aria-controls="collapseThree">[예약]
               굿럭 운송 예약 마감은 언제인가요?</button>
         </h2>
         <div id="collapseThree" class="accordion-collapse collapse"
            aria-labelledby="headingThree" data-bs-parent="#accordionExample">
            <div class="accordion-body">
               <strong>굿럭 운송예약은 아래와 같이 이루어 집니다</strong>
               
               <ol>
                  <li>홈페이지 예약 : 서비스 이용 전날 21시까지 홈페이지에서 예약할 수 있습니다.</li>
                  <li>당일 현장 접수 : 굿럭 매장에서 오후 3시 이전까지 현장 접수 가능합니다. <br>※당일
                     현장 접수의 경우 운송서비스가 조기 마감되면 이용이 불가할 수 있습니다.
                  </li>
               </ol>
               

            </div>
         </div>
      </div>
      <div class="accordion-item">
         <h2 class="accordion-header" id="headingFour">
            <button class="accordion-button collapsed" type="button"
               data-bs-toggle="collapse" data-bs-target="#collapseFour"

               aria-expanded="false" aria-controls="collapseFour">[지역] 서울 말고 다른 지역에서도 신청할 수 있나요?</button>


         </h2>
         <div id="collapseFour" class="accordion-collapse collapse"
            aria-labelledby="headingFour" data-bs-parent="#accordionExample">
            <div class="accordion-body">

               <strong>굿럭의 서비스 지역입니다.</strong> <br><br>
               <p>현재 수도권을 제외한 다른 지역에서는 서비스를 제공하고 있지 않습니다. 추후 서비스 확대를 위해 노력하겠습니다.</p>

               <strong>당일날 서비스 이용이 가능한가요?</strong> <br />
               <br />
               <p>당일 서비스는 입/출국 최소 6시간 전에 전화나 카카오톡으로 문의를 주셔야 스케줄 확인 후 서비스 이용이 가능합니다.</p>
               <p> 단, 스케줄 상 예약이 차있어 서비스 이용이 불가능 할 수 있다는 점 미리 말씀드립니다.</p>



            </div>
         </div>
      </div>
      <div class="accordion-item">
         <h2 class="accordion-header" id="headingFive">
            <button class="accordion-button collapsed" type="button"
               data-bs-toggle="collapse" data-bs-target="#collapseFive"

               aria-expanded="false" aria-controls="collapseFive">[운송] 굿럭 운송 서비스는 호텔이나 숙소에서도 가능한가요?</button>


         </h2>
         <div id="collapseFive" class="accordion-collapse collapse"
            aria-labelledby="headingFive" data-bs-parent="#accordionExample">
            <div class="accordion-body">

               <strong>굿럭의 운송 서비스 안내입니다.</strong> <br><br>
               <p>굿럭 운송 서비스는 고객님의 집과 제휴호텔 이외에도 짐을 맡길 수 있는 어느 숙소이든지 이용이 가능합니다.</p>

               <strong>입국 서비스 이용 방법</strong>
               <br><br />
                  <ol>
                     <li>홈페이지를 통해 입국 예약 신청 시 담당자가 확인 후 연락을 드립니다.</li>
                        <p>이용 시간은 입국심사를 마친 예상 시간을 입력해주세요</p>
                        <p>   (ex. 입국시간07시 +입국심사 1시간예상 = 08시 입력)</p>
                     <li>서비스 신청 후 결제 까지 완료해야 예약이 확정됩니다.</li>
                     <br>               
                     <li>입국 후 지정된 장소에서 물품 전달하기.(장소는 문자로 전달)</li>
                     <br>
                     <li>배송은 빠르면 당일, 늦어도 1~2일 정도 소요됩니다.</li>
                        <p>(단, 교통상황에 따라 배송시간이 달라질 수 있다는 점 양해 바랍니다.)</p>
                     
                  </ol>

            </div>
         </div>
      </div>
      <div class="accordion-item">
         <h2 class="accordion-header" id="headingSix">
            <button class="accordion-button collapsed" type="button"
               data-bs-toggle="collapse" data-bs-target="#collapseSix"

               aria-expanded="false" aria-controls="collapseSix">[운송] 짐이 파손되거나 분실되면 어떡하나요?</button>


         </h2>
         <div id="collapseSix" class="accordion-collapse collapse"
            aria-labelledby="headingSix" data-bs-parent="#accordionExample">
            <div class="accordion-body">

               <strong>분실 및 손실에 대한 답변입니다.</strong> <br><br>
               <p>
                  수하물의 분실 및 손실이 발생한 경우, 굿럭의 실수로 발생한 것이 입증 되어야 하며, 입증시 보상의 최대 금액은 500,000원 입니다.
                  <br />
                  상세한 내용은 주문 신청시 약관을 참조해 주시거나 대표 이메일 혹은 전화 문의 바랍니다.
               </p>

               <strong>출국 서비스 이용 방법</strong>
               <br><br />
                  <ol>
                     <li>홈페이지를 통해 출국 예약 신청 시 담당자가 확인 후 연락을 드립니다.</li>
                     <br>
                     <li>서비스 신청 후 결제 까지 완료해야 예약이 확정됩니다.</li>
                     <br>
                     <li>이용 당일 오전에 안내받은 시간까지 가방을 숙소 프론트에 맡기고 [가방은여행중] 에서 픽업 예정이라고 미리 말씀 부탁드리겠습니다. </li>
                        <p>단, 이용 당일 안내 받으신 시간까지 가방이 맡겨져 있지않을 경우 예약이 취소 될 수 있으며, 이 경우에는 환불이 불가합니다.</p>
                     <br>
                     <li>안내받은 장소와 시간에 맞춰 물품 픽업하기</li>
                        <p>(단, 교통상황에 따라 배송시간이 달라질 경우 미리 연락 드리겠습니다.)</p>
                  </ol>

            </div>
         </div>
      </div>
      <!-- 아코디언 메뉴 -->
      <!-- 질문버튼 -->
      <div class="text-center">
      <br />
      <a href="${pageContext.request.contextPath}/cs/ask.do" style="text-decoration: none">

         <button class="btn" style="text-decoration: none">1:1 질문하기</button>

      </a>
      </div>
      <!-- /질문버튼 -->
   </div>
   <!-- 푸터 -->
    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
   <!-- /푸터 -->
</body>

</html>