
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"/>
<style>
html {
	scroll-behavior: smooth;
}

/*Button Styles*/
.btn-cloud {
	margin-right:5px;
   position: relative;
   padding: 0.7rem 2rem;
   color:white;
  background: white;
   border-radius: 100px 100px 100px 0;
  font-family: 'Poppins', sans-serif;
  font-weight: 600;
   font-size: 0.875rem;
   letter-spacing: 1px;
   line-height: 2.188rem;
   text-transform: uppercase;
  text-decoration: none;
   -webkit-box-shadow: 0 10px 30px 0 white;
   -moz-box-shadow: 0 10px 30px 0 white;
   box-shadow: 0 10px 30px 0 white;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud:hover, .btn-cloud:focus, .btn-cloud:active {
   color: white;
  border-radius: 45px;
  -webkit-box-shadow: 0 5px 25px 0 white;
   -moz-box-shadow: 0 5px 25px 0 white;
   box-shadow: 0 5px 25px 0 white;
}

.btn-cloud:after {
  content: '';
  width: 80px;
  height: 50px;
  background: white;
  position: absolute;
  margin-top: -10px;
  border-radius: 50px;
  z-index: -1;
  left: 18%;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud:hover:after {
  content: '';
  margin-top: -35px;
  height: 80px;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud:before {
  content: '';
  width: 60px;
  height: 50px;
  border-radius: 50px;
  margin-top: -10px;
  background: white;
  position: absolute;
  z-index: -1;
  right: 20%;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud:hover:before {
  content: '';
  margin-top: -30px;
  height: 60px;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}
/*Button Styles2*/
.btn-cloud2 {
	margin-left:5px;
   position: relative;
   padding: 0.7rem 2rem;
   color:gray;
  background: gray;
   border-radius: 100px 100px 100px 0;
  font-family: 'Poppins', sans-serif;
  font-weight: 600;
   font-size: 0.875rem;
   letter-spacing: 1px;
   line-height: 2.188rem;
   text-transform: uppercase;
  text-decoration: none;
   -webkit-box-shadow: 0 10px 30px 0 gray;
   -moz-box-shadow: 0 10px 30px 0 gray;
   box-shadow: 0 10px 30px 0 gray;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud2:hover, .btn-cloud:focus, .btn-cloud:active {
   color: gray;
  border-radius: 45px;
  -webkit-box-shadow: 0 5px 25px 0 gray;
   -moz-box-shadow: 0 5px 25px 0 gray;
   box-shadow: 0 5px 25px 0 gray;
}

.btn-cloud2:after {
  content: '';
  width: 80px;
  height: 50px;
  background: gray;
  position: absolute;
  margin-top: -10px;
  border-radius: 50px;
  z-index: -1;
  left: 18%;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud2:hover:after {
  content: '';
  margin-top: -35px;
  height: 80px;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud2:before {
  content: '';
  width: 60px;
  height: 50px;
  border-radius: 50px;
  margin-top: -10px;
  background: gray;
  position: absolute;
  z-index: -1;
  right: 20%;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud2:hover:before {
  content: '';
  margin-top: -30px;
  height: 60px;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

/*Button Styles3 (회원가입)*/
.btn-cloud3 {
	margin-right:5px;
   position: relative;
   padding: 0.7rem 2rem;
   color:lightblue;
  background: lightblue;
   border-radius: 100px 100px 100px 0;
  font-family: 'Poppins', sans-serif;
  font-weight: 600;
   font-size: 0.875rem;
   letter-spacing: 1px;
   line-height: 2.188rem;
   text-transform: uppercase;
  text-decoration: none;
   -webkit-box-shadow: 0 10px 30px 0 lightblue;
   -moz-box-shadow: 0 10px 30px 0 lightblue;
   box-shadow: 0 10px 30px 0 lightblue;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud3:hover, .btn-cloud:focus, .btn-cloud:active {
   color: lightblue;
  border-radius: 45px;
  -webkit-box-shadow: 0 5px 25px 0 lightblue;
   -moz-box-shadow: 0 5px 25px 0 lightblue;
   box-shadow: 0 5px 25px 0 lightblue;
}

.btn-cloud3:after {
  content: '';
  width: 80px;
  height: 50px;
  background: lightblue;
  position: absolute;
  margin-top: -10px;
  border-radius: 50px;
  z-index: -1;
  left: 18%;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud3:hover:after {
  content: '';
  margin-top: -35px;
  height: 80px;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud3:before {
  content: '';
  width: 60px;
  height: 50px;
  border-radius: 50px;
  margin-top: -10px;
  background: lightblue;
  position: absolute;
  z-index: -1;
  right: 20%;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}

.btn-cloud3:hover:before {
  content: '';
  margin-top: -30px;
  height: 60px;
  -webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition: all 500ms cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */

-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1); /* older webkit */
-webkit-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
   -moz-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
     -o-transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); 
        transition-timing-function: cubic-bezier(0.555, 0.645, 0.310, 1.285); /* custom */
}
</style>