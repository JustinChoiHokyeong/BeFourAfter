<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/reserve/leave_insertform.jsp</title>
<jsp:include page="/WEB-INF/views/funcs/bs.jsp"></jsp:include>
<style>
.input-group-text {
    justify-content: center;
    background-color: ;
    border: 1px solid black;
    background: bisque;
}
.form-control {
   background:none;
   justify-content: center;
   background: none;
   border: 1px solid black;
}

.input-group {
   margin-bottom: 5px;
}
</style>
</head>
<body style="background-color: white;">
   <!-- 네비바 -->
   <jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
   <!-- /네비바 -->
   <div>
      <!--바로가기-->
      <jsp:include page="/WEB-INF/views/funcs/reserveMenu.jsp"></jsp:include>
      <!--/바로가기-->
      <!-- 본문 -->
      <div class="container" style="padding: 0px 50px 50px 50px;
    background: none;
    box-shadow: 5px 5px 5px 5px grey;
    width: 600px;
    height: 720px;
    margin-bottom: 50px;
    margin-right: 35%;
    background-image: url('https://pixabay.com/get/g6cfc64d3614d90c12122103043a28041573c7326396c1f1ca6f969bb6cf0a55673bab018adf5ea5ad1c894475e727f63ac6b8dbfc251b5d11b404494c8943e12b54020f408fdb183e4fbc980e2a10f27_1280.jpg');
    background-size: cover;
    position: relative;">
         <div>
            <h1 class="text-center" style=" margin: 0px 30px 30px 30px;
										    padding-top: 20px;
										    padding-left: 80px;">출국
               서비스</h1>
            <div class="container" style="width: 540px;
										  height: 600px;
										  padding-left: 50px;">
               <h3 style="padding-left: 180px;">예약 정보</h3>
               <form action="leave_insert.do" method="post" id="leave_insertform"
                  style="text-align: -webkit-center;">
                  <input class="form-control" type="hidden" name="leave_insertform"
                     id="leave_insertform" value="leave_insertform" /> <input
                     type="hidden" name="name" id="name" value="${dto.name }" /> <input
                     type="hidden" name="phone" id="phone" value="${dto.phone }" /> <input
                     type="hidden" name="id" id="id" value="${dto.id }" />

                  <div class="input-group">
                     <span class="input-group-text" for="name">예약자 이름</span> <input
                        class="form-control" type="text" name="name" id="name"
                        value="${dto.name }" disabled style="background: none;"/>
                  </div>
                  <div class="input-group">
                     <span class="input-group-text" for="name">핸드폰 번호</span> <input
                        class="form-control" type="text" name="phone" id="phone"
                        value="${dto.phone }" disabled style="background: none;"/>
                  </div>
                  <div class="input-group">
                     <label class="input-group-text" for="rname">수령인 이름</label> <input
                        class="form-control" type="text" name="rname" id="rname"
                        value="" /> <br /> <label class="input-group-text" for="same" style="background: none;">
                        예약자와 동일 <input name="same" value="same" type="checkbox" 
                         style="margin-left: 5px;
							    margin-top: 0;
							    padding: 8px;
							    background: unsetset;
							    accent-color: crimson;
							    border: 1px solid black;
							    mix-blend-mode: multiply;
							    width: 20px;
							    height: 20px;" />
                     </label>
                  </div>
                  <div class="input-group">
                     <label class="input-group-text" for="rphone">핸드폰 번호</label> <input
                        class="form-control" type="text" name="rphone" id="rphone"
                        value="" maxlength="11"
                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />

                  </div>
                  <div class="input-group">
                     <label class="input-group-text" for="rsdate">수령 날짜 및 시간</label> <input
                        class="form-control" type="datetime-local" name="rsdate"
                        id="rsdate" value="" />
                  </div>


                  <fieldset>
                     <h3 class="text-center" style="margin-top: 48px;">수령 장소</h3>
                     <label class="input-group-text" for="place"
                        style="margin-bottom: 5px; background: none;"> <input type="radio"
                        name="place" value="first" checked="checked" style="accent-color: crimson;"/> <span
                        style="margin-right: 100px;">제 1 터미널</span> <input type="radio"
                        name="place" value="second" style="accent-color: crimson;"/> <span>제 2 터미널</span>
                     </label>
                  </fieldset>
                  <div class="input-group">
                     <label class="input-group-text" for="basic" style="width: 120px; ">기본
                        수하물</label> <input class="form-control " type="number" name="basic"
                        id="basic" value="0" min="0" placeholder="수량입력" /> <label
                        class="input-group-text text-center" for="basic"
                        style="width: 280px; background: none; border: 1px solid black;"> <small style="font-size: 13px">캐리어28인치
                           이하, 백팩, 가방, 20kg 이하</small>
                     </label>
                  </div>
                  <div class="input-group">
                     <label class="input-group-text" for="big" style="width: 120px;">대형
                        수하물</label> <input class="form-control" type="number" name="big"
                        id="big" value="0" min="0" placeholder="수량입력" /> <label
                        class="input-group-text text-center" for="big"
                        style="width: 280px; background: none; border: 1px solid black;"> <small style="font-size: 13px">캐리어28인치
                           초과, 박스, 골프백, 20kg 초과</small>
                     </label>
                  </div>
                  <div class="input-group">
                     <label class="input-group-text" for="over" style="width: 120px;">25kg
                        초과</label> <input class="form-control" type="number" name="over"
                        id="over" value="0" min="0" placeholder="수량입력" /> <label
                        class="input-group-text" for="over" style="width: 280px; background: none; border: 1px solid black;">
                        <small style="font-size: 14px">25kg 초과 물품 개당 5,000원
                           추가</small>
                     </label>
                  </div>
                  <div>
                     <label class="input-group-text" for="agree" style="background: none;"> 개인정보수집 동의 <input
                        type="checkbox" name="agree" value=""
                        id="agree"  type="checkbox" 
                         style="margin-left: 5px;
							    margin-top: 0;
							    padding: 8px;
							    background: unsetset;
							    accent-color: crimson;
							    border: 1px solid black;
							    mix-blend-mode: multiply;
							    width: 20px;
							    height: 20px;" />
                     </label>
                  </div>
                  <button type="submit" class="btn"
                     style="padding: 5px 30px 5px 30px; margin-top: 10px; background:none; border: black 1px solid;">예약</button>
               </form>
            </div>
         </div>
      </div>
   </div>

   <!-- 푸터 -->
   <footer>
      <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
   </footer>
   <!-- /푸터 -->
</body>
<script>
   //1. 회원정보 넘기기 수령인 정보에 예약자 정보 
   var checkbox = document.querySelector("input[name=same]");

   checkbox.addEventListener('change', function() {
      if (checkbox.checked == true) {
         let name = document.getElementById('name').value;
         let phone = document.getElementById('phone').value;

         document.getElementById('rname').value = name;
         document.getElementById('rphone').value = phone;
      } else {
         document.getElementById('rname').value = "";
         document.getElementById('rphone').value = "";
      }

   });

   //2. 개인정보제공동의
   var checkbox2 = document.querySelector("input[name=agree]");

   //3. 입력 되지않은 정보가 있으면 제출 x
   document.querySelector("#leave_insertform").addEventListener("submit", function(e) {
      let basic = document.querySelector("#basic").value;
      let big = document.querySelector("#big").value;
      let over = document.querySelector("#over").value;

      let rname = document.querySelector("#rname").value;
      let rphone = document.querySelector("#rphone").value;
      let rsdate = document.querySelector("#rsdate").value;

      if (basic + big + over <= 0 || rname == "" || rphone == "" || rsdate == "") {
         alert("정보를 모두 입력해주세요.");
         e.preventDefault();
      }

      if (checkbox2.checked != true) {
         alert("개인정보 제공에 동의를 해주세요.");
         e.preventDefault();
      }

   });

   var now_utc = Date.now()
   var timeOff = new Date().getTimezoneOffset() * 60000;
   var today = new Date(now_utc - timeOff).toISOString().substring(0, 16);
   document.getElementById("rsdate").setAttribute("min", today);
</script>

</html>