<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>위끼위끼</title>



<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet"
	href="../resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="../resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

<!-- Theme style -->
<link rel="stylesheet" href="../resources/css/AdminLTE.min.css">
<link href="../resources/css/agency.min.css" rel="stylesheet">

<!-- iCheck -->
<link rel="stylesheet" href="../resources/css/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>

<style>
.navbar-custom  {
	background-color: #222;
}

.box p {
	margin-bottom: 0.8em;
}

.box {
	padding: 3% 5%;
}
</style>

</head>
<body>

	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i
					class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand page-scroll" href="/">Noodles.com</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="/"></a></li>
				<li><a class="page-scroll" href="/wiki">Noodle-Wiki</a></li>
				<li><a class="page-scroll" href="/recipe/list">Recipe</a></li>
				<li><a class="page-scroll" href="/timeline">Community</a></li>
				<li><a class="page-scroll" href="/developer/api">Developer</a></li>
				<li><a class="page-scroll" href="/user/login">LOGIN</a></li>
				<li><a class="page-scroll" href="/user/register">SIGN-UP</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<!-- Navigation END -->

	<section>
	<div class="container">
		<div class="row">
			<h2>라면검색왕</h2>
			<div class='groupType'>
				<h4>SEARCH TYPE</h4>
				<div class="brandFilterCheckbox">
					<span><input type="checkbox" name='brandFilter'><label>농심</label></span>
					<span><input type="checkbox" name='brandFilter'><label>삼양</label></span>
					<span><input type="checkbox" name='brandFilter'><label>팔도</label></span>
					<span><input type="checkbox" name='brandFilter'><label>오뚜기</label></span>
					<span><input type="checkbox" name='brandFilter'><label>풀무원</label></span>
					<span><input type="checkbox" name='brandFilter'><label>기타</label></span>
				</div>
				<div class="kindFilterCheckbox">
					<span><input type="checkbox" name='kindFilter'><label>일반</label></span>
					<span><input type="checkbox" name='kindFilter'><label>짜장</label></span>
					<span><input type="checkbox" name='kindFilter'><label>짬뽕</label></span>
					<span><input type="checkbox" name='kindFilter'><label>비빔면</label></span>
					<span><input type="checkbox" name='kindFilter'><label>칼국수</label></span>
					<span><input type="checkbox" name='kindFilter'><label>기타</label></span>
				</div>
				<div class="noodleTypeFilterCheckbox">
					<span><input type="checkbox" name='noodleTypeFilter'><label>건면</label></span>
					<span><input type="checkbox" name='noodleTypeFilter'><label>생면</label></span>
					<span><input type="checkbox" name='noodleTypeFilter'><label>유탕</label></span>
				</div>
			</div>
			<div class='groupType'>
				<h4>DATA TYPE</h4>
				<div class="outputTypeCheckbox">
					<span><input type="checkbox"><label>noodle</label></span>
					<span><input type="checkbox"><label>nutrition</label></span>
					<span><input type="checkbox"><label>material</label></span>
					<span><input type="checkbox"><label>component</label></span>
					<span><input type="checkbox"><label>rank</label></span>
				</div>
			</div>
			<div class='groupType'>
				<h4>ORDER TYPE</h4>
				<div class="orderTypeCheckbox">
					<span><input type="checkbox" name="orderType"><label>popular</label></span>
					<span><input type="checkbox" name="orderType"><label>calories</label></span>
					<span><input type="checkbox" name="orderType"><label>release</label></span>
					<span><input type="checkbox" name="orderType"><label>new</label></span>
					<span><input type="checkbox" name="orderType"><label>old</label></span>
					<span><input type="checkbox" name="orderType"><label>lkcal</label></span>
					<span><input type="checkbox" name="orderType"><label>hkcal</label></span>
				</div>
			</div>
			<div class='search'>
				<form method="post" action="list">
					<div class="field half first">
						<input type="text" name="name" id="name">
						<input type="hidden" name="brandFilter" value="">
						<input type="hidden" name="kindFilter" value="">
						<input type="hidden" name="noodleFilter" value="">
						<input type="hidden" name="orderType" value="">
						<label for="searchBtn">Search<input type="button" name="submit" id="searchBtn" class="btn btn-xl"></label> 
					</div>

				</form>
			</div>
			<!-- 결과화면출력 -->
			<div>
				<h1>Results HERE</h1>
			</div>	
		</div>
	</div>
	</section>




	<!-- Bootstrap Core JavaScript -->
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="resources/js/jqBootstrapValidation.js"></script>

	<!-- Theme JavaScript -->
	<script src="resources/js/agency.min.js"></script>

	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script>
		$(".orderTypeCheckbox input").on("click",function(){
			console.log($(this));
			if($(this).is(":checked")){
				$('.orderTypeCheckbox input').prop('checked', false);
				$(this).prop("checked", true);
			};
		});
	
		$("#searchBtn").on("click",function() {

			var brandArr = [];
			var kindArr = [];
			var noodleTypeArr = [];
			var orderType = "";

			$("input[name='brandFilter']:checked").each(function() {
				brandArr.push($(this).parent().find('label').html());
			});
			
			console.log("brandArr: " + brandArr);
			
			$("input[name='kindFilter']:checked").each(function() {
				kindArr.push($(this).parent().find('label').html());
			});
				console.log("kindArr: " + kindArr);
			
			$("input[name='noodleTypeFilter']:checked").each(function() {
				noodleTypeArr.push($(this).parent().find('label').html());
			});
				console.log("noodleTypeArr: " + noodleTypeArr);
			
			orderType = $("input[name='orderType']:checked").parent().find('label').html();
			console.log("orderType: " + orderType);
			
			var filters = {brandFilter:brandArr,kindFilter:kindArr,noodleTypeFilter:noodleTypeArr,orderType:orderType };
			console.log(filters);
			
			apiManager.search(
				filters, //4.입력값
				function (result) { alert("댓글이등록되어씀니다.");}
			);
			
		
			
			
		});
		
		
		var apiManager = (function () {
		      //여기서 Ajax를 날림
		      var search = function (data, fn) {//1. data와 콜백함수를 넘겨받음
		         
		    		
		    		$.ajax({
		    			type : 'get',
		    			url : '/web/api/noodles/search',
		    			headers : {
		    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
		    				"X-HTTP-Method-Override" : "POST"
		    			},
		    			dataType : 'text',
		    			
		    			data : data,
		    			
		    			success : function(result) {

		    					alert("result");

		    			}
		    		});
		      
		    		
		      }; //  URL, data, 콜백함수(결과값을 여기다 넘기는 )
		     
		      

		      return {search: search};
		  })();
	</script>

</body>
</html>