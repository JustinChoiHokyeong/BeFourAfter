<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/review/upload_form.jsp</title>
<%-- bootstrap 읽어오기 --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
     .star-rating {
        display: flex;
        flex-direction: row-reverse;
        font-size: 2.25rem;
        line-height: 2.5rem;
        justify-content: space-around;
        padding: 0 0.2em;
        text-align: center;
        width: 5em;
      }
       
      .star-rating input {
        display: none;
      }
       
      .star-rating label {
        -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
        -webkit-text-stroke-width: 0.5px;
        -webkit-text-stroke-color: #858992;
        cursor: pointer;
      }
       
      .star-rating :checked ~ label {
        -webkit-text-fill-color: #ff0000;
      }
       
      .star-rating label:hover,
      .star-rating label:hover ~ label {
        -webkit-text-fill-color: #fffb0093;
      }
</style></head>
<body>
	<div class="container">
	   	<h1>리뷰 업로드 폼</h1>
         <form action="${pageContext.request.contextPath}/review/upload.do" method="post" enctype="multipart/form-data" id="insertForm">
            <div>
               <label for="title">리뷰 내용</label>
               <textarea name="title" id="title" placeholder="솔직한 이용 후기 부탁드립니다 :)"
               cols="40" rows="5" required></textarea> 
            </div>
            <div>
               <label for="image">이미지</label>
               <input type="file" name="image" id="image"
                  accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
            </div>
            <div>
            <fieldset style="max-width: 30%">
               <legend>예약 타입</legend>
               <label for="reservetype">
                  <input type="radio" name="reservetype" value="leave" checked="checked"/>출국 서비스
               </label>
               <label for="reservetype">
                  <input type="radio" name="reservetype" value="ent"/>입국 서비스
               </label>
            </fieldset>
            </div>
            <div>
            <fieldset style="max-width: 30%" >
            <legend>평점</legend>
            <div class="star-rating space-x-4 mx-auto" >
               <input type="radio" id="5-stars" name="rating" value="5점" v-model="ratings"/>
               <label for="5-stars" class="star">★</label>
               <input type="radio" id="4-stars" name="rating" value="4점" v-model="ratings"/>
               <label for="4-stars" class="star">★</label>
               <input type="radio" id="3-stars" name="rating" value="3점" v-model="ratings"/>
               <label for="3-stars" class="star">★</label>
               <input type="radio" id="2-stars" name="rating" value="2점" v-model="ratings"/>
               <label for="2-stars" class="star">★</label>
               <input type="radio" id="1-stars" name="rating" value="1점" v-model="ratings" />
               <label for="1-star" class="star">★</label>
            </div>
               
            </fieldset>
	      	</div>
	      	
	      	<button type="submit">리뷰 업로드</button>
	   	</form>
	</div>
	    <footer>
        <jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
    </footer>
	<script>
	//폼에 submit 이벤트가 일어났을때 실행할 함수 등록
	document.querySelector("#upload_form")
		.addEventListener("submit", function(e){
			
			//제목에 입력한 내용을 여기서 검증하고 
			const title=document.querySelector("#title").value;
			//만일 폼 제출을 막고 싶으면  
			//e.preventDefault();
			//을 수행하게 해서 폼 제출을 막아준다.
			if(title.length < 5){
				alert("제목을 5글자 이상 입력하세요!");
				e.preventDefault();
			}
			
			//별점을 입력안했을 때 preventDefault 함수
	         let star=document.querySelectorAll(".star")[4].click();
	         if(!star){
	            alert("별점을 입력해주세요.");
	            e.preventDefault();
	         }
			
		});
	
	</script>
</body>
</html>