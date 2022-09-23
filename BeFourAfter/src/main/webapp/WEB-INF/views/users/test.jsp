<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/test.jsp</title>
<style>
body {
    background: url("../swimming_pool.jpg");
    background-size: 1000px;
    margin: 10;
    padding: 10;
}

#form-container {
    height: 500px;
    display: flex;
    justify-content: center;
    align-items: center;
}

#form-inner-container {
    background-color: white;
    max-width: 70%;
    border-radius: 8px;
    box-shadow: 0 0 20px gainsboro;
}

#sign-up-container, #sign-in-container {
    padding: 20px 50px;
    width: 520px;
    display: inline-block;
}

form input:not(:last-of-type) {
    display: block;
    margin-bottom: 20px;
    border: 1px solid #E5E9F5;
    background-color: #F6F7FA;
    padding: 20px;
    margin-top: 10px;
    border-radius: 10px;
    width: 100%;
}

#form-controls {
    margin-bottom: 0px;
}


h3 {
    color: black;
    font-size: 150%;
    font-weight: 500;
}

label {
    color: #7369AB;
}

::placeholder {
    color: #C0C7DB;
    font-size: larger;
    letter-spacing: 1.2px;
}

#form-controls button {
    border: none;
    font-size: 120%;
}

#form-controls button:hover {
    cursor: pointer;
}

button[type="submit"] {
    padding: 16px 75px;
    background-color: black;
    border-radius: 10px;
    color: white;
}

button[type="submit"]:hover {
    background-color: gray;
}

button[type="button"] {
    padding: 16px 0 16px 35px;
    background-color: transparent;
    color: #7295CA;
}

#terms {
    width: 30px;
    height: 30px;
    appearance: none;
    border: 2px solid #7369AB;
    border-radius: 4px;
    position: relative;
}

#terms:checked:after {
    content: '\2713';
    color: #7369AB;
    font-size: 24px;
    position: absolute;
    top: 0;
    left: 3px;
}

label[for="terms"] {
    display: inline-block;
    width: 60%;
    margin-left: 10px;
}

.termsLink {
    color: #EF7886;
    text-decoration: none;
}

.hide {
    display: none!important;
}

/* responsive display */

@media(max-width:1438px) {
    lottie-player {
        width: 300px!important;
    }
}

@media(max-width:1124px) {
    #animation-container {
        display: none;
    }

    #form-inner-container{
        display: flex;
        justify-content: center;
    }
}

@media(max-width: 684px) {
    #form-controls {
        text-align: center;
        margin: 0;
        padding: 0;
    }

    button {
        width: 100%;
    }

    form input:not(:last-of-type) {
        width: 85%;
    }

    #toggleSignIn, #toggleSignUp {
        padding: 16px 75px;
    }

    #terms {
        width: 210px;
        height: 20px;
    }
    
    label[for="terms"] {
        display: inline-block;
        font-size: smaller;
    }
}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
</head>
<body>
<div style='background-size:contain;'></div>
  <div id="form-container">
      <div id="form-inner-container">
        <!-- Sign up form -->
        <div id="sign-up-container">
          <h3>Good Lugg </h3>
          <form>
            <label for="id">ID</label>
            <input type="text" name="id" id="id" placeholder="ID">

            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;&#9679;">

            <div id="form-controls">
              <button type="submit">Sign Up</button>
              <button type="button" id="toggleSignIn">Sign In</button>
            </div>

            <input type="checkbox" name="terms" id="terms">
            <label for="terms">I agree to the <a href="#" class="termsLink">Terms of service</a> and <a href="#" class="termsLink">Privacy Policy</a>.</label>
          </form>
        </div>

  <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
  <script type="text/JavaScript" src="./my-script.js"></script>

</body>
</html>