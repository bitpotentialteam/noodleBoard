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
			<c:if test='${SPRING_SECURITY_CONTEXT == null}'>
				<li><a class="page-scroll" href="/user/login" id="login">LOGIN</a></li>
				<li><a class="page-scroll" href="/user/register" id="register">SIGN-UP</a></li>
		  	</c:if>
			
		  	<c:if test='${SPRING_SECURITY_CONTEXT != null}'>
				<li><a class="page-scroll" id="login" href="<c:url value="/logout" />">LOGOUT</a></li>
				<li><a class="page-scroll" href="/user/myPage" id="register">MYPAGE</a></li>
		  	</c:if>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<!-- Navigation END -->
	<section>
	  <div class="container">
		<div class="row">
		  <div>
		  	<div class="col-md-4 col-sm-6 left" id="">
		  		${sessionScope.view.thumbnail}
		  	</div>
		  		
		  	<h3>name</h3><p>${sessionScope.view.name}</p>
		  	<h3>brand</h3><p>${sessionScope.view.brand}</p>
		  	<h3>releaseDate</h3><p>${sessionScope.view.releaseDate}</p>
		  	
		  	<h3>kinds</h3><p>${sessionScope.view.kinds}</p>
		  	<h3>weight</h3><p>${sessionScope.view.weight}</p>
		  	<h3>soupColor</h3><p>${sessionScope.view.soupColor}</p>
		  	<h3>noodleType</h3><p>${sessionScope.view.noodleType}</p>
		  	
		  	<h3>calories</h3><p>${sessionScope.view.calories}</p>
		  	<h3>carbohydrate</h3><p>${sessionScope.view.carbohydrate}</p>
		  	<h3>protein</h3><p>${sessionScope.view.protein}</p>
		  	<h3>fat</h3><p>${sessionScope.view.fat}</p>
		  	<h3>saturatedFat</h3><p>${sessionScope.view.saturatedFat}</p>
		  	<h3>transFat</h3><p>${sessionScope.view.transFat}</p>
		  	<h3>cholesterol</h3><p>${sessionScope.view.cholesterol}</p>
		  	<h3>natrium</h3><p>${sessionScope.view.natrium}</p>
		  	<h3>material_noodle</h3><p>${sessionScope.view.material_noodle}</p>
		  	<h3>material_powder</h3><p>${sessionScope.view.material_powder}</p>
		  </div>
	    </div>
	  </div>
	</section>

	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script>
		$(document).ready(function(){

			
			
		});// end ready...
		
	</script>

</body>
</html>   