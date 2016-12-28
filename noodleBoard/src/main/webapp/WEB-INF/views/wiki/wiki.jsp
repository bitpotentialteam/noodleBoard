<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>À§³¢À§³¢</title>



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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>

<style>
body {
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
			<a class="navbar-brand page-scroll" href="#page-top">Noodles.com</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="/wiki">Noodle-Wiki</a></li>
				<li><a class="page-scroll" href="/recipe/list">Recipe</a></li>
				<li><a class="page-scroll" href="/timeline">Community</a></li>
				<li><a class="page-scroll" href="/developer/api">Developer</a></li>
				<li><a class="page-scroll" href="/user/login">LOGIN</a></li>
				<li><a class="page-scroll" href="/user/register">SING-IN</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
	</nav>
	<!-- Navigation END -->
	
	<!-- Three -->
	<div class="container">
	<section>
		<div class="box">
			<h2>¶ó¸é°Ë»ö¿Õ</h2>
			<div class='groupType'>
				<p>search type</p>
				<div class="brandTypeCheckbox">
					<span id='nongsim'><input type="checkbox" name='brandType' value="³ó½É"><label>³ó½É</label></span>
					<span id='samyang'><input type="checkbox" name='brandType' value="»ï¾ç"><label>»ï¾ç</label></span>
					<span id='paldo'><input type="checkbox" name='brandType' value="ÆÈµµ"><label>ÆÈµµ</label></span>
					<span id='ottogi'><input type="checkbox" name='brandType' value="¿À¶Ñ±â"><label>¿À¶Ñ±â</label></span>
					<span id='pulmuone'><input type="checkbox" name='brandType' value="Ç®¹«¿ø"><label>Ç®¹«¿ø</label></span>
					<span id='brandEtc'><input type="checkbox" name='brandType' value="±âÅ¸"><label>±âÅ¸</label></span>
				</div>
				<div class="kindsCheckbox">
					<span id='nomal'><input type="checkbox" name='kinds'><label>ÀÏ¹Ý</label></span>
					<span id='jjajang'><input type="checkbox" name='kinds'><label>Â¥Àå</label></span>
					<span id='jjamppong'><input type="checkbox" name='kinds'><label>Â«»Í</label></span>
					<span id='spicy'><input type="checkbox" name='kinds'><label>ºñºö¸é</label></span>
					<span id='kalguksu'><input type="checkbox" name='kinds'><label>Ä®±¹¼ö</label></span>
					<span id='typeEtc'><input type="checkbox" name='kinds'><label>±âÅ¸</label></span>
				</div>
				<div class="noodleTypeCheckbox">
					<span id='dry'><input type="checkbox" name=noodleTypeCheckbox><label>°Ç¸é</label></span>
					<span id='raw'><input type="checkbox" name=noodleTypeCheckbox><label>»ý¸é</label></span>
					<span id='oil'><input type="checkbox" name=noodleTypeCheckbox><label>À¯ÅÁ¸é</label></span>
				</div>
			</div>
			<div class='groupType'>
				<p>data type</p>
				<div class="outputTypeCheckbox">
					<span id='noodle'><input type="checkbox"><label>noodle</label></span>
					<span id='nutrition'><input type="checkbox"><label>nutrition</label></span>
					<span id='material'><input type="checkbox"><label>material</label></span>
					<span id='component'><input type="checkbox"><label>component</label></span>
					<span id='rank'><input type="checkbox"><label>rank</label></span>
				</div>
			</div>
			<div class='groupType'>
				<p>order type</p>
				<div class="orderTypeCheckbox">
					<span id='popular'><input type="button" value="popular"></span>
					<span id='calories'><input type="button" value="calories"></span>
					<span id='release'><input type="button" value="release"></span>
				</div>
			</div>
			<div class="split style1">
				<section>
				<form method="post" action="#">
					<div class="field half first">
						<label for="name">Search</label> <input type="text" name="name"
							id="name" />
					</div>
					<div class="field half first">
						<label for="submit"><br></label> <input type="button"
							name="submit" id="submit" value="submit" />
					</div>
	
				</form>
				</section>
			</div>
		</div>
	</section>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
	<script> 
	
	function checkboxArr() {
		var checkArr = new Array;
		$("input[name=brandType]:checked").each(function(i){
			
			checkArr.push($(this.val());
			console.log(checkArr);
		});
	}
	
	$.ajax({
		
		url:'../list'
		,type:'post'
		,dataType:'text'
		,data:{
			valueArrTest : checkArr
		}
		
	});
	
	</script>

</body>
</html>