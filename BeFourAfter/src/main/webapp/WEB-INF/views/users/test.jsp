<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/view/users/test.jsp</title>
</head>
<body>
<div class="form-floating">
    <div class="btn btn-link">
        <input type="checkbox" id="checkAll" name="checkAll"> 
            <label for="checkAll"> 약관 전체 동의하기</label>
    </div>
    <p></p>
    <div class="btn btn-link">
        <input type="checkbox" id="AgreeCheckbox1" name="AgreeCheckbox1" class="normal">
             <label for="AgreeCheckbox1"> [필수] 개인정보 수집 및 이용 동의 </label> 
        <button class="d-inline-block border rounded-pill text-primary px-4 mb-3" onclick="javascript:openWin1()" >자세히</button>

    </div>
    <div class="btn btn-link">
        <input type="checkbox" id="AgreeCheckbox2" name="AgreeCheckbox2" class="normal">
             <label for="AgreeCheckbox2"> [필수] Good lugg 이용 악관 </label>
        <button class="d-inline-block border rounded-pill text-primary px-4 mb-3" onclick="javascript:openWin2()">자세히</button>
    </div>


    <div class="btn btn-link">
        <input type="checkbox" id="AgreeCheckbox3" name="AgreeCheckbox3"  class="normal">
             <label for="AgreeCheckbox3"> [선택] 마케팅 활용 및 광고성 정보 수신 동의 </label>
                <button class="d-inline-block border rounded-pill text-primary px-4 mb-3" onclick="javascript:openWin3()">자세히</button>
    </div>

    <br/>
    <span id="vaildEssential"></span>

</div>
</body>
</html>