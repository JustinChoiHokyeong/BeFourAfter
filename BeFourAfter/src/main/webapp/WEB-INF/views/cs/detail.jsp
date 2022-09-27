<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/cs/detail.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
   /* 댓글 프로필 이미지를 작은 원형으로 만든다. */
   .profile-image{
      width: 50px;
      height: 50px;
      border: 1px solid #cecece;
      border-radius: 50%;
   }   
   /* 댓글에 댓글을 다는 폼과 수정폼은 일단 숨긴다. */
   .comments .comment-form{
      display: none;

</style>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="/WEB-INF/views/funcs/navbar.jsp"></jsp:include>
	<!-- /네비바 -->
   <div class="container">
      <div class="p-5">
      </div>
      <h1 class="text-center">문의하기</h1>
   	  <table class="table">
	      <c:choose>
	      	<c:when test="${dto.isSecret eq 'Yes'}">
				<tr >
					<th style="width:100px;">제목</th>
					<td colspan="5"><span class="text-muted" style="font-size:12px;"><i class="bi bi-lock-fill"></i>비밀글</span> ${dto.title }</td>
	    		</tr>
	      	</c:when>
	      	<c:otherwise>
				<tr>
					<th style="width:100px;">제목</th>
					<td colspan="5">${dto.title }</td>
	    		</tr>
	      	</c:otherwise>
	      </c:choose>

	      <tr>
	         <th style="width:100px;">작성자</th>
	         <td>${dto.writer }</td>
	         <th style="width:100px;">등록일</th>
	         <td>${dto.regdate }</td>
	         <th style="width:100px;">문의 내용</th>
	         <c:choose>
	         	<c:when test="${dto.reserveType == 'ent'}">
		         	<td>[입국 예약]</td>	         	
	         	</c:when>
	         	<c:when test="${dto.reserveType == 'leave'}">
		         	<td>[출국 예약]</td>	         	
	         	</c:when>
	         	<c:when test="${dto.reserveType == 'delivery'}">
		         	<td>[배송 예약]</td>	         	
	         	</c:when>
	         	<c:when test="${dto.reserveType == 'etc'}">
		         	<td>[기타]</td>	         	
	         	</c:when>
	         	<c:otherwise>
					<td>[선택안함]</td>									
				</c:otherwise>
	         </c:choose>
	      </tr>	
	      <tr style="height:300px;">
	         <td colspan="6">
	            <div class="p-3">${dto.content }</div>
	         </td>
	      </tr>
	  </table>
      <div class="text-end">
         <span><a class="btn text-decoration-none text-dark btn-outline-secondary" href="${pageContext.request.contextPath}/cs/ask.do"><i class="bi bi-list"></i>목록보기</a></span>
         <c:if test="${dto.writer eq id || sessionScope.id eq 'GoodLugg'}">
            <sapn><a class="btn text-decoration-none text-dark btn-outline-secondary" href="${pageContext.request.contextPath}/cs/updateform.do?num=${dto.num }"><i class="bi bi-pencil-fill"></i>수정</a></span>
            <span><a class="btn text-decoration-none text-dark btn-outline-secondary" id="deleteBtn"><i class="bi bi-trash3"></i>삭제</a></span>
         </c:if>
      </div>
      <!-- 댓글 목록 -->
      <div class="comments" >
         <ul>
            <c:forEach var="tmp" items="${commentList }">
               <c:choose>
                  <c:when test="${tmp.deleted eq 'yes' }">
                     <p class="border rounded-pill text-center" style="background-color:rgba(181, 180, 180, 0.508);">
                     <i class="bi bi-exclamation-triangle"></i>요청에 의해 삭제된 댓글 입니다.</p>
                  </c:when>
                  <c:otherwise>
                  <%-- 만일 댓글의 글번호가 댓글의 그룹번호와 같다면(원글의 댓글이라면) --%>
                     <c:if test="${tmp.num eq tmp.comment_group }">
                        <p id="reli${tmp.num }">
                     </c:if>
                           <dl>
                              <dt class="float-start m-3">
			                     <%-- 만일 댓글의 글번호가 댓글의 그룹번호와 다르다면(댓글의 댓글이라면) 왼쪽 페딩을 50px 주어서 들여쓰기 효과를 주고  화살표 아이콘을 출력한다.--%>
			                     <c:if test="${tmp.num ne tmp.comment_group }">
			                        <p id="reli${tmp.num }" style="padding-left:50px;"><i class="bi bi-arrow-return-right"></i>
			                     </c:if>
                                 <%-- 만일 프로필 이미지가 없다면  기본 아이콘 출력 --%>
                                 <c:if test="${ empty tmp.profile }">
									<img class="profile-image" src="../airplane_logo1.png" alt="" />
                                 </c:if>
                                 <%-- 만일 프로필 이미지가 비지 않았다면(있다면) 프로필 이미지 출력 --%>
                                 <c:if test="${not empty tmp.profile }">
                                    <img class="profile-image" src="${pageContext.request.contextPath}${tmp.profile }"/>
                                 </c:if>
                              </dt>
                              <dt>
                                 <span >${tmp.writer }</span>
                                 <%-- 만일 글번호가 댓글의 그룹번호와 다르다면(댓글의 댓글이라면) 누구를 향한 댓글인지 출력하기 --%>
                                 <c:if test="${tmp.num ne tmp.comment_group }">
                                    @<i class="text-danger">${tmp.target_id }</i>
                                 </c:if>
                                 <span class="text-muted float-end ">${tmp.regdate}</span>
                              </dt>
                              <dd>
                                 <%-- 댓글은 textarea로 입력 받았기 때문에 tab, 공백, 개행 기호도 존재한다. html 에서 pre 요소는 tab, 공백, 개행 기호를 해석해주는 요소이기 때문에
                                     pre 요소의 innerText 로 댓글의 내용을 출력했다. 그리고 해당 댓글의 javascript로 바로 수정할 수 있도록 댓글 번호를 조합해서  아이디를 부여해 놓았다.
                                  --%>
                                 <pre id="pre${tmp.num }" class="p-3 border border-opacity-25 rounded-4">${tmp.content }</pre>                  
                              </dd>
                              <dt id="udr" class="text-muted float-end ">
                                 <%-- 만일 로그인을 했고 글 작성자가 로그인된 사용자와 같다면 수정, 삭제 링크를 출력한다. --%>
                                 <%-- 답글의 링크를 눌렀을때 해당댓글의 글번호를 얻어오기 위해 data-num 속성에 댓글의 번호 넣어두기 --%>                                 
                                 <c:if test="${tmp.writer eq sessionScope.id || sessionScope.id eq 'GoodLugg'}">
                                    <a data-num="${tmp.num }" class="update-link" href="javascript:">수정</a>
                                    <a data-num="${tmp.num }" class="delete-link" href="javascript:">삭제</a>
                                    <a data-num="${tmp.num }" href="javascript:" class="reply-link">답글</a>
                                 </c:if>
                              </dt>
                           </dl>
                           <%-- 댓글의 댓글 폼은 미리 만들어서 숨겨놓았다가 답글 링크를 누르면 보이도록 한다.
                                javascript 에서 폼을 선택할 수 있도록 댓글 번호를 좋바해서 아이디를 부여해 놓았다.
					                          댓글의 댓글은 고유한 댓글 그룹번호가 있으므로 form 전송될때 같이 전송되도록 해 놓았다.
					                           댓글의 그룹번호는 원글의 댓글 그번호이다.
                            --%>
                           <form id="reForm${tmp.num }" class="animate__animated comment-form re-insert-form" action="comment_insert.do" method="post">
                              <input type="hidden" name="ref_group" value="${dto.num }"/>
                              <input type="hidden" name="target_id" value="${tmp.writer }"/>
                              <input type="hidden" name="comment_group" value="${tmp.comment_group }"/>
                              <div class="input-group mb-3">
                              <textarea  class="form-control" name="content" placeholder="답변"></textarea>
                              <button type="submit" class="btn btn-outline-secondary">등록</button></div>
                           </form>
                        <%--
                        	 관리자 로그인 시 댓글 수정 폼도 미리 준비해 놓고  숨겨 둔다.
                            javascript 에서 폼을 바로 선택할 수 있도록 댓글 번호를 조합해서 아이디를 부여해 놓았다.
                         --%>   
                        <c:if test="${sessionScope.id eq 'GoodLugg' }">
                           <form id="updateForm${tmp.num }" class="comment-form update-form" action="comment_update.do" method="post">
                              <input type="hidden" name="num" value="${tmp.num }" />
                              <div class="input-group mb-3">
                              <textarea name="content" class="form-control">${tmp.content }</textarea>
                              <button type="submit"  class="btn btn-outline-secondary">수정</button></div>
                           </form>
                        </c:if>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
         </ul>
      </div>
      <!-- 원글에 댓글을 작성할 폼 -->
      <form class="comment-form insert-form" action="comment_insert.do" method="post">
         <!-- 원글의 글번호가 댓글의 ref_group 번호가 된다. -->
         <input type="hidden" name="ref_group" value="${dto.num }"/>
         <!-- 원글의 작성자가 댓글의 대상자가 된다. -->
         <input type="hidden" name="target_id" value="${dto.writer }"/>
         <!-- 관리자만 댓글 가능하도록 글작성자는 답글만 ID:GoodLugg  -->
         <c:if test="${sessionScope.id eq 'GoodLugg'}">
       	 <p>답변하기</p>
         <div class="input-group mb-3">
            <textarea class="form-control" style="height:100px;" name="content" ></textarea>
            <button type="submit" class="btn btn-outline-secondary" id="button-addon2">댓글 달기</button>
         </div>
         </c:if>
      </form>
   </div>
	<footer>
    	<jsp:include page="/WEB-INF/views/funcs/footer.jsp"></jsp:include>
	</footer>
   
   <script src="${pageContext.request.contextPath}/resources/js/gura_util.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script>
   	$(document).ready(function(){
   		$("#deleteBtn").click(function(){
      	  let isDelete=confirm("게시글을 삭제하시겠습니까?");
  			if(isDelete){
  				location.replace("${pageContext.request.contextPath}/cs/delete.do?num=${dto.num }" );
  			}else{
  				event.preventDefault();
  			}
   		})
   	});
   
      //클라이언트가 로그인 했는지 여부
      let isLogin=${ not empty id };
      //원글의 댓글 폼에 submit 이벤트가 일어났을때 실행할 함수 등록
      document.querySelector(".insert-form")
         .addEventListener("submit", function(e){
            //만일 로그인 하지 않았으면 
            if(!isLogin){
               //폼 전송을 막고 
               e.preventDefault();
               //로그인 폼으로 이동 시킨다.
               //로그인 성공후 다시 해당글 자세히 보기 페이지로 돌아올 수 있도록 url 정보를 같이 전달한다.
               location.href=
                  "${pageContext.request.contextPath}/users/loginform.do?url=${pageContext.request.contextPath}/cafe/detail.do?num=${dto.num}";
            }
         });

      /*
         detail 페이지 로딩 시점에 만들어진 1 페이지에 해당하는 댓글에 이벤트 리스너 등록 하기 
      */
      addUpdateFormListener(".update-form");
      addUpdateListener(".update-link");
      addDeleteListener(".delete-link");
      addReplyListener(".reply-link");
      
      
      //댓글의 현재 페이지 번호를 관리할 변수를 만들고 초기값 1 대입하기
      let currentPage=1;
      //마지막 페이지는 totalPageCount 이다.  
      let lastPage=${totalPageCount};
      
      //추가로 댓글을 요청하고 그 작업이 끝났는지 여부를 관리할 변수 
      let isLoading=false; //현재 로딩중인지 여부 
      
      /*
         window.scrollY => 위쪽으로 스크롤된 길이
         window.innerHeight => 웹브라우저의 창의 높이
         document.body.offsetHeight => body 의 높이 (문서객체가 차지하는 높이)
      */
      window.addEventListener("scroll", function(){
         //바닥 까지 스크롤 했는지 여부 
         const isBottom = 
            window.innerHeight + window.scrollY  >= document.body.offsetHeight;
         //현재 페이지가 마지막 페이지인지 여부 알아내기
         let isLast = currentPage == lastPage;   
         //현재 바닥까지 스크롤 했고 로딩중이 아니고 현재 페이지가 마지막이 아니라면
         if(isBottom && !isLoading && !isLast){
            //로딩바 띄우기
            document.querySelector(".loader").style.display="block";
            
            //로딩 작업중이라고 표시
            isLoading=true;
            
            //현재 댓글 페이지를 1 증가 시키고 
            currentPage++;
            
            /*
               해당 페이지의 내용을 ajax 요청을 통해서 받아온다.
               "pageNum=xxx&num=xxx" 형식으로 GET 방식 파라미터를 전달한다.
               pageNum 은 새로 받아올 댓글의 페이지 번호
               num은 원글의 글번호(ref_group 번호)
            */
            ajaxPromise("ajax_comment_list.do","get",
                  "pageNum="+currentPage+"&num=${dto.num}")
            .then(function(response){
               //json 이 아닌 html 문자열을 응답받았기 때문에  return response.text() 해준다.
               return response.text();
            })
            .then(function(data){
               //data 는 html 형식의 문자열이다. 
               console.log(data);
               // beforebegin | afterbegin | beforeend | afterend
               document.querySelector(".comments ul")
                  .insertAdjacentHTML("beforeend", data);
               //로딩이 끝났다고 표시한다.
               isLoading=false;
               //새로 추가된 댓글 li 요소 안에 있는 a 요소를 찾아서 이벤트 리스너 등록 하기 
               addUpdateListener(".page-"+currentPage+" .update-link");
               addDeleteListener(".page-"+currentPage+" .delete-link");
               addReplyListener(".page-"+currentPage+" .reply-link");
               //새로 추가된 댓글 li 요소 안에 있는 댓글 수정폼에 이벤트 리스너 등록하기
               addUpdateFormListener(".page-"+currentPage+" .update-form");
               
               //로딩바 숨기기
               document.querySelector(".loader").style.display="none";
            });
         }
      });
      
      //인자로 전달되는 선택자를 이용해서 이벤트 리스너를 등록하는 함수 
      function addUpdateListener(sel){
         //댓글 수정 링크의 참조값을 배열에 담아오기 
         //sel 은  ".page-xxx  .update-link" 형식의 내용이다 
         let updateLinks=document.querySelectorAll(sel);
         for(let i=0; i<updateLinks.length; i++){
            updateLinks[i].addEventListener("click", function(){
               //click 이벤트가 일어난 바로 그 요소의 data-num 속성의 value 값을 읽어온다. 
               const num=this.getAttribute("data-num"); //댓글의 글번호
               document.querySelector("#updateForm"+num).style.display="block";
               
            });
         }
      }
      function addDeleteListener(sel){
         //댓글 삭제 링크의 참조값을 배열에 담아오기 
         let deleteLinks=document.querySelectorAll(sel);
         for(let i=0; i<deleteLinks.length; i++){
            deleteLinks[i].addEventListener("click", function(){
               //click 이벤트가 일어난 바로 그 요소의 data-num 속성의 value 값을 읽어온다. 
               const num=this.getAttribute("data-num"); //댓글의 글번호
               const isDelete=confirm("댓글을 삭제 하시겠습니까?");
               if(isDelete){
                  // gura_util.js 에 있는 함수들 이용해서 ajax 요청
                  ajaxPromise("comment_delete.do", "post", "num="+num)
                  .then(function(response){
                     return response.json();
                  })
                  .then(function(data){
                     //만일 삭제 성공이면 
                     if(data.isSuccess){
                        //댓글이 있는 곳에 삭제된 댓글입니다를 출력해 준다. 
                        document.querySelector("#reli"+num).innerText="삭제된 댓글입니다.";
                     }
                  });
               }
            });
         }
      }
      function addReplyListener(sel){
         //댓글 링크의 참조값을 배열에 담아오기 
         let replyLinks=document.querySelectorAll(sel);
         //반복문 돌면서 모든 링크에 이벤트 리스너 함수 등록하기
         for(let i=0; i<replyLinks.length; i++){
            replyLinks[i].addEventListener("click", function(){
               
               if(!isLogin){
                  const isMove=confirm("로그인이 필요 합니다. 로그인 페이지로 이동 하시겠습니까?");
                  if(isMove){
                     location.href=
                        "${pageContext.request.contextPath}/users/loginform.do?url=${pageContext.request.contextPath}/cafe/detail.do?num=${dto.num}";
                  }
                  return;
               }
               
               //click 이벤트가 일어난 바로 그 요소의 data-num 속성의 value 값을 읽어온다. 
               const num=this.getAttribute("data-num"); //댓글의 글번호
               
               const form=document.querySelector("#reForm"+num);
               
               //현재 문자열을 읽어온다 ( "답글" or "취소" )
               let current = this.innerText;
               
               
               if(current == "답글" ){
                  //번호를 이용해서 댓글의 댓글폼을 선택해서 보이게 한다. 
                  form.style.display="block";
                  form.classList.add("animate__flash");
                  this.innerText="취소";   
                  form.addEventListener("animationend", function(){
                     form.classList.remove("animate__flash");
                  }, {once:true});
               }else if(current == "취소"){
                  form.classList.add("animate__fadeOut");
                  this.innerText="답글";
                  form.addEventListener("animationend", function(){
                     form.classList.remove("animate__fadeOut");
                     form.style.display="none";
                  },{once:true});
               }
            });
         }
      }
      
      function addUpdateFormListener(sel){
         //댓글 수정 폼의 참조값을 배열에 담아오기
         let updateForms=document.querySelectorAll(sel);
         for(let i=0; i<updateForms.length; i++){
            //폼에 submit 이벤트가 일어 났을때 호출되는 함수 등록 
            updateForms[i].addEventListener("submit", function(e){
               //submit 이벤트가 일어난 form 의 참조값을 form 이라는 변수에 담기 
               const form=this;
               //폼 제출을 막은 다음 
               e.preventDefault();
               //이벤트가 일어난 폼을 ajax 전송하도록 한다.
               ajaxFormPromise(form)
               .then(function(response){
                  return response.json();
               })
               .then(function(data){
                  if(data.isSuccess){
                     /*
                        document.querySelector() 는 html 문서 전체에서 특정 요소의 
                        참조값을 찾는 기능
                        
                        특정문서의 참조값.querySelector() 는 해당 문서 객체의 자손 요소 중에서
                        특정 요소의 참조값을 찾는 기능
                     */
                     const num=form.querySelector("input[name=num]").value;
                     const content=form.querySelector("textarea[name=content]").value;
                     //수정폼에 입력한 value 값을 pre 요소에도 출력하기 
                     document.querySelector("#pre"+num).innerText=content;
                     form.style.display="none";
                  }
               });
            });
         }
      }
   </script>
   
</body>
</html>