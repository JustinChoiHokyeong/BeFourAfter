
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	#ftr{
		height: max-content;
		padding: 50px;
		justify-content:center;
		background-color:#00123a;
		width:100%;
		bottom: 0px;
		position: relative;
	}
	#sns-icon{
		text-decoration:none;
		color:aliceblue;
	}
	#sns-list{
		padding-bottom:20px;
		text-align: center;
	}
	#inform{
		padding-left:20px;
		padding-right:20px;
		color:#cdd5dc;
		text-align: center;
	}
	#inf1{
	padding-left:5px;
	padding-right:5px;
	}
	#inf2{
	padding-left:10px;
	padding-right:10px;
	}
</style>

<footer id="ftr" class="navbar navbar-expand-xlg mt-auto footer sticky-bottom container-expand" >
<div>
	<!-- sns icons -->
	<div id="sns-list">
		<a id="sns-icon" name="facebook" target="_blank" href="https://www.instagram.com"> 
		<i class="bi bi-instagram" style="font-size:25px"></i>
		</a>
		<a id="sns-icon" name="instagram" target="_blank" href="https://www.facebook.com"> 
		<i class="bi bi-facebook" style="font-size:25px"></i>
		</a>
		<a id="sns-icon" name="twitter" target="_blank" href="https://twitter.com"> 
		<i class="bi bi-twitter" style="font-size:25px"></i>
		</a>
		<a id="sns-icon" name="email" target="_blank" href="mailto:chhk7449@gmail.com"> 
		<i class="bi bi-envelope" style="font-size:25px"></i>
		</a>
	</div>
		<!-- information -->
		<div id="inform">
			<div>
			<span id="inf1">Info</span>
			<span id="inf1">Support</span>
			<span id="inf1">Marketing</span>
			</div>
			<div>
			<span id="inf2">Terms of use</span>
			<span id="inf2">Privacy Policy</span>
			</div>
			<div style="color:grey; padding-top:5px"> 
				&copy; 2022 Travel Light! Good Lugg!
			</div>
		</div>
</div>
</footer>
