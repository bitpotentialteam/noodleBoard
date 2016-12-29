<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Login Page</title>

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

<link rel="stylesheet" href="../resources/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="../resources/dist/css/skins/_all-skins.min.css">


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
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div id="menu" class="navbar-header page-scroll">
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
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="register">Register</a></li>
				<li><a class="page-scroll" href="modify">Modify</a></li>
				<li><a class="page-scroll" href="remove">Delete</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
<!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('../resources/img/noodle.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="page-heading">
                        <h1>레시피 광장</h1>
                        <hr class="small">
               
                    </div>
                </div>
            </div>
        </div>
    </header>

	<section id="portfolio" class="bg-black-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center" id="heading">
				<h1 class="section-heading">레시피 광장</h1>
			</div>
		</div>


		<div class="row">
			<div class="col-md-12">
				<!-- Widget: user widget style 1 -->
				<div class="box box-widget widget-user-2">
					<!-- Add the bg color to the header using any of the bg-* classes -->
					<center>
						<div class="widget-user-header bg-">
							<div class="header">
								<img src="../resources/img/noodle/sine.jpg">
							</div>
							<!-- /.widget-user-image -->
							<h1 data-maxlength="144">신라면의 파격변신</h1>
							<h3>재 료 : 라면사리, 스프, 후레이크, 파송송, 계란탁</h3>
						</div>
					</center>
					<div class="box-footer no-padding" id="border">

						<img src="../resources/img/noodle/sine.jpg">
						<span class="center badge bg-red">1</span>
						<h3>물 500ml 붓고 끓인다.</h3>

					</div>
					<div class="box-footer no-padding" id="border">
						<img src="../resources/img/noodle/bibim.jpg">
						<span class="center badge bg-red">2</span>
						<h3>물이 끓으면 라면사리와 스프, 후레이크를 넣는다.</h3>
					</div>
					<div class="box-footer no-padding" id="border">
						<img src="../resources/img/noodle/jin.jpg">
						<span class="center badge bg-red">3</span>
						<h3>대파, 고춧가루, 청양고추, 다진마늘, 졸라매운거 그냥 다 넣는다.</h3>
					</div>
					<div class="box-footer no-padding" id="border">
						<img src="../resources/img/noodle/tumsea.jpg">
						<span class="center badge bg-red">4</span>
						<h3>계란을 넣고 반숙으로 쳐묵쳐묵한다.</h3>
					</div>
				</div>
				<!-- /.widget-user -->
			</div>
		</div>

	</div>

	</section>

	<div class="boxs" id="temp">
		<!-- .box-header START -->
		<div class="box-header with-border">
			<div class="user-block">
				<img class="img-circle"
					src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user1-128x128.jpg"
					alt="User Image"> <span class="username"><a href="#">
						${vo.nickname}</a></span> <span class="description"> ${vo.regDate} </span>
				<p class="remove">
					<button type="button" id="remove" value="${vo.tno}"
						class="pull-right text-muted">
						<span class="glyphicon glyphicon-trash"></span>
					</button>
				</p>
				<p class="modify">
					<button type="button" id="modify" value="${vo.tno}"
						class="pull-right text-muted">
						<span class="glyphicon glyphicon-erase"></span>
					</button>
				</p>
			</div>
		</div>
		<!-- .box-header END-->
		<!-- .box-body START -->
		<div class="box-body">
			<!-- post text -->
			<p>${vo.content}</p>
			<!-- Social sharing buttons -->
			<button type="button" class="btn btn-default btn-xs">
				<i class="fa fa-thumbs-o-up"></i> Like
			</button>
			<span class="pull-right text-muted">${vo.likeCnt} likes -
				${vo.replyCnt} comments</span>
		</div>
		<!-- .box-body END -->
		<!-- .box-footer START -->
		<div class="box-footer box-comments">
			<div class="box-comment">
				<!-- User image -->
				<img class="img-circle img-sm"
					src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user5-128x128.jpg"
					alt="User Image">
				<div class="comment-text">
					<span class="username"> 댓글쓴이!!!!!!!!!!!!!! <span
						class="text-muted pull-right"> 댓글쓴애 시간 </span></span>
					<!-- /.username -->
					댓글 내용이래여!!!!
				</div>
				<!-- /.comment-text -->
			</div>
			<!-- /.box-comment -->
		</div>
		<!-- .box-footer END-->
		<div class="box-footer">
			<form action="#" method="post">
				<img class="img-responsive img-circle img-sm"
					src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user4-128x128.jpg"
					alt="Alt Text">
				<!-- .img-push is used to add margin to elements next to floating images -->
				<div class="img-push">
					<input type="text" class="form-control input-sm"
						placeholder="Press enter to post comment">
				</div>


				<!-- Modify Modal -->
				<div id="myModal" class="modal">

					<!-- Modal content -->
					<div class="modal-content">
						<div class="modal-header">
							<span class="close">&times;</span>
							<h2>수정할 내용을 입력해주세요!</h2>
						</div>
						<div class="modal-body">

							<input value="${vo.content}" name="content" id="content2">

						</div>
						<div class="modal-footer">
							<span class="mod glyphicon glyphicon-erase" id="mod"></span>
						</div>
					</div>

				</div>
				<!-- modal 끝 -->

			</form>

		</div>
		<!-- /.box-footer -->
	</div>
	<!-- big div -->

	<!-- jQuery 2.2.3 -->
	<script src="../resources/vendor/jquery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="../resources/vendor/jquery/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});

		$("#loginBtn").on("click", function(event) {

			$("#login").attr("action", "../");

		});
	</script>
</body>
</html>