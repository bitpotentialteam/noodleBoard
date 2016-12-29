<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>��������</title>



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
				<li><a class="page-scroll" href="/user/register">SING-IN</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<!-- Navigation END -->

	<!-- Three -->
		<section>
	<div class="container">
		<div class="box">
			<h2>���˻���</h2>
			<div class='groupType'>
				<h4>SEARCH TYPE</h4>
				<div class="brandFilterCheckbox">
					<span id='nongsim'><input type="checkbox" name='brandFilter'
						value="���" ><label>���</label></span> <span id='samyang'><input
						type="checkbox" name='brandFilter' value="���"><label>���</label></span>
					<span id='paldo'><input type="checkbox" name='brandFilter'
						value="�ȵ�"><label>�ȵ�</label></span> <span id='ottogi'><input
						type="checkbox" name='brandFilter' value="���ѱ�"><label>���ѱ�</label></span>
					<span id='pulmuone'><input type="checkbox" name='brandFilter'
						value="Ǯ����"><label>Ǯ����</label></span> <span id='brandEtc'><input
						type="checkbox" name='brandFilter' value="��Ÿ"><label>��Ÿ</label></span>
				</div>
				<div class="kindsCheckbox">
					<span id='normal'><input type="checkbox" name='kinds'><label>�Ϲ�</label></span>
					<span id='jjajang'><input type="checkbox" name='kinds'><label>¥��</label></span>
					<span id='jjamppong'><input type="checkbox" name='kinds'><label>«��</label></span>
					<span id='spicy'><input type="checkbox" name='kinds'><label>�����</label></span>
					<span id='kalguksu'><input type="checkbox" name='kinds'><label>Į����</label></span>
					<span id='typeEtc'><input type="checkbox" name='kinds'><label>��Ÿ</label></span>
				</div>
				<div class="noodleTypeCheckbox">
					<span id='dry'><input type="checkbox"
						name=noodleTypeCheckbox><label>�Ǹ�</label></span> <span id='raw'><input
						type="checkbox" name=noodleTypeCheckbox><label>����</label></span>
					<span id='oil'><input type="checkbox"
						name=noodleTypeCheckbox><label>������</label></span>
				</div>
			</div>
			<div class='groupType'>
				<h4>DATA TYPE</h4>
				<div class="outputTypeCheckbox">
					<span id='noodle'><input type="checkbox"><label>noodle</label></span>
					<span id='nutrition'><input type="checkbox"><label>nutrition</label></span>
					<span id='material'><input type="checkbox"><label>material</label></span>
					<span id='component'><input type="checkbox"><label>component</label></span>
					<span id='rank'><input type="checkbox"><label>rank</label></span>
				</div>
			</div>
			<div class='groupType'>
				<h4>ORDER TYPE</h4>
				<div class="orderTypeCheckbox">
					<span id='popular'><input type="button" value="popular"></span>
					<span id='calories'><input type="button" value="calories"></span>
					<span id='release'><input type="button" value="release"></span>
				</div>
			</div>
			<div class="split style1">
			
				<section>
				<form method="post" action="list">
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
	<!-- ���ȭ����� -->

	<h1>Results HERE</h1>
		<c:forEach items="${list}" var="vo">
		<h1> ${vo.brand}</h1>
		<h1> ${vo.name}</h1>
		
		</c:forEach>
			</div>
		</div>
	</div>
		</section>
	
	

	<!-- Bootstrap Core JavaScript -->
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="resources/js/jqBootstrapValidation.js"></script>

    <!-- Theme JavaScript -->
    <script src="resources/js/agency.min.js"></script>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script>
		
		$("#submit").click(function() {
			
				var arr = [];
			$("input[name=brandFilter]:checked").each(function() {
				
				arr.push($(this).val());
				console.log(arr);
			});
			
			$.ajax({

				url : 'wiki/list',
				type : 'post',
				dataType : 'text',
				data : {
					brandFilter : arr
				}
			})
		});
	</script>

</body>
</html>