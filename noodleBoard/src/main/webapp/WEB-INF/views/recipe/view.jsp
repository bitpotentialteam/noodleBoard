<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>라면이 좋아</title>

<!-- Bootstrap Core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
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

<link href="../resources/css/agency.min.css" rel="stylesheet">

<style>
.navbar-custom  {
	background-color: #222;
}
.img-responsive {
	width: 100%;
    max-height: 100%;
    height: 360px;
}
</style>

</head>

<style>
div img {
	width: 30%;
	max-height: 30%;
	height: 360px;
}

li {
	list-style: none;
}


.header {
	border: none;
}

.header img {
	width: 50%;
	max-height: 50%;
	height: 360px;
}

#content {
	width: 50%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	resize: none;
}

#content2 {
	width: 50%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	resize: none;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
/* The Close Button */

/* mod button */
.mod {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.mod:hover, .mod:focus {
	color: black;
	cursor: pointer;
}

div#temp {
	border: 1px solid black;
}

input#content {
	width: 100%;
}
#border{
	border: 1px solid orange; 
}

h3 {
	text-align:center;
}
h1 {
	color:green;
}

.section-heading{
	color:red;
	data-maxlength:300;
}
</style>

<body class="hold-transition login-page">

	<!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Noodles.com</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll" href="/wiki">Noodle-Wiki</a></li>
					<li><a class="page-scroll" href="/recipe/list">Recipe</a></li>
					<li><a class="page-scroll" href="/timeline">Community</a></li>
					<li><a class="page-scroll" href="/developer/api">Developer</a></li>
					
					<c:if test='${sessionScope.LOGIN eq success}'>
					<li><a class="page-scroll" href="/user/login" id="login">LOGIN</a></li>
					<li><a class="page-scroll" href="/user/register" id="register">SIGN-UP</a></li>
					</c:if>
					<c:if test='${sessionScope.LOGIN ne success}'>
					<li><a class="page-scroll" href="/user/login" id="login">LOGOUT</a></li>
					<li><a class="page-scroll" href="/user/myPage" id="register">MYPAGE</a></li>
					</c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    
        <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Welcome To Noodle.com!</div>
                <div class="intro-heading">Noodels Title</div>
                <a href="#recipe" class="page-scroll btn btn-xl">Tell Me More</a>
            </div>
        </div>
    </header>
    
    
    
<form id="recipe">
<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<p>
				<h1>자기만의 특별한 레시피를 올려주세요!</h1>
				</p>
					<div class="row control-group" name="title">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>메뉴명</label> <input type="text" class="form-control"
								placeholder="Title" name="title" id="title" required
								data-validation-required-message="Please enter title.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<label>설명</label>
					<textarea name="content" id="content" rows="10" cols="100"></textarea>
							<p class="help-block text-danger"></p>
					<div class="row control-group" id="materialContent">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>재료</label> <input type="text" class="form-control"
								placeholder="Material Content" name="materialContent"
								id="materialContent" required
								data-validation-required-message="Please enter material.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					
					<label>조리순서 (image drag&drop)</label>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<div class="form-group">
								<div class="form-control" id="fileDrop"></div>
								<div class="uploadedList"></div>
							</div>
							
						</div>
					</div>
					<div class="-right row">
						<div class="form-group col-md-4">
							<button type="submit" id="modifyBtn" class="btn btn-default-right">등 록</button>
							<a href="list"><input type="button"
								class="btn btn-default-right" value="목록가기"> </a>
						</div>
					</div>
			</div>
		</div>
	</div>
</form>

	<!-- Footer START -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2016</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
	<!-- Footer END -->



	<!-- jQuery 2.2.3 -->
	<script src="../resources/vendor/jquery/jquery-2.2.3.min.js"></script>
	
	<!-- Bootstrap 3.3.6 -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- iCheck -->
	<script src="../resources/vendor/jquery/icheck.min.js"></script>
	
	<!-- Theme JavaScript -->
    <script src="../resources/js/agency.min.js"></script>
	
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});

		$(document).ready(function(){
			var formObj = $('#recipe');
			
			console.log(formObj);
			
			$(".modifyBtn").on("click", function(){
				formObj.attr("action", "/recipe/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});
			
			$(".removeBtn").on("click", function(){

				formObj.attr("action", "/recipe/remove");
				formObj.submit();
							
				alret("삭제 완료");
			});
		});
	</script>
</body>
</html>