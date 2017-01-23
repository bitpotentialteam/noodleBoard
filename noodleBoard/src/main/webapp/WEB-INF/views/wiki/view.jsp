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
		  <div>
		  	<h3>==================</h3>
		  	<h3>${sessionScope.view.name}</h3>
		  	<h3>${sessionScope.view.brand}</h3>
		  	<h3>${sessionScope.view.releaseDate}</h3>
		  	<h3>${sessionScope.view.weight}</h3>
		  	<h3>${sessionScope.view.thumbnail}</h3>
		  	<h3>${sessionScope.view.soupColor}</h3>
		  	<h3>${sessionScope.view.noodleType}</h3>
		  	<h3>${sessionScope.view.kinds}</h3>
		  	<h3>${sessionScope.view.calories}</h3>
		  	<h3>${sessionScope.view.carbohydrate}</h3>
		  	<h3>${sessionScope.view.protein}</h3>
		  	<h3>${sessionScope.view.fat}</h3>
		  	<h3>${sessionScope.view.saturatedFat}</h3>
		  	<h3>${sessionScope.view.transFat}</h3>
		  	<h3>${sessionScope.view.cholesterol}</h3>
		  	<h3>${sessionScope.view.natrium}</h3>
		  	<h3>${sessionScope.view.material_noodle}</h3>
		  	<h3>${sessionScope.view.material_powder}</h3>
		  	<h3>==================</h3>
		  </div>
	    </div>
	  </div>
	</section>


	<script src="//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-58d22c749295bca52f487966e382a94a495ac103faca9206cbd160bdf8aedf2a.js"></script>
	
	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script>
		$(document).ready(function(){

			
			
		});// end ready...
		
	</script>

</body>
</html>   