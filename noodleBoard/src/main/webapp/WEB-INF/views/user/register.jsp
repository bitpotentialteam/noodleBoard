<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>New Member</title>

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
	
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap.min.css">

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
<link rel="stylesheet"
	href="../resources/plugins/iCheck/square/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition register-page">
	
	<!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="/">Noodles.com</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll" href="#">Noodle-Wiki</a></li>
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


	<div class="register-box">
		<div class="register-logo">
			<b>회원정보기입</b>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>

			<form action="register" method="post" >
				<div class="form-group has-feedback">
					
					<input type="text" id="userid" name="userid" class="form-control" placeholder="ID"/>
					 <i class="glyphicon glyphicon-search" id="checkBtn" style='cursor: pointer;'></i>
					
				</div>
				<div class="form-group has-feedback">
					<input type="password" id="userpw" name="userpw" class="form-control" placeholder="Password">
					<span class="glyphicon glyphicon-lock form-control-feedback" id="fa-check-square-o"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" id="username" name="username" class="form-control" placeholder="Username">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="text" id="nickname" name="nickname" class="form-control" placeholder="NickName">
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="email" id="email" name="email" class="form-control" placeholder="Email">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback" id="fileDrop" >
					
					<input type="text" id="picture" name="picture" class="form-control" placeholder="Picture">
					
				</div>
				<div class="form-group has-feedback" >
					<div class="form-control" id="uploadedList">
					</div>
				</div>
				<div id="success"></div>
				<div class="row">
					<div class="col-xs-8">
					</div>
					<!-- /.col -->
					<div>
						<button type="submit" class="btn btn-primary btn-flat">Register</button>
					</div>
					<!-- /.col -->
				</div>
			</form>



			<a href="login" class="text-center">I already have a membership</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->

	<!-- jQuery 2.2.3 -->
	<script src="../resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="../resources/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>
	<script>
		$(document).ready(function() {

			var uploadedList = $("#uploadedList")

			//    띄어쓰기하고 두개 쓰면 이벤트가 두개 다 걸림
			// 드래그하면 새창열리는거 방지여
			$("#fileDrop").on("dragenter dragover", function(event) {
				event.preventDefault();
			});

			$("#fileDrop").on("drop", function(event) {
				event.preventDefault();

				var files = event.originalEvent.dataTransfer.files;

				var file = files[0];
				console.log(file);

				//form tag 추가해버리는거 근데 최근 브라우저에서만 지원함 옛날꺼는 안돼영!

				var formData = new FormData();
				formData.append("file", file);

				console.log(formData);

				$.ajax({
					url : "../uploadFile",
					data : formData, //기본이 멀티파트   
					dataType : 'text',
					type : "post",
					contentType : false,
					processData : false,
					success : function(data) {
						console.log(data);
						//alert(data);
						uploadedList.html("<img src=show?name=" + data + ">");
						$("#picture").val(data);
					}
				});
			});
		});
		
		 // 아이디 중복체크
		   $("#checkBtn").on("click",function(){
			   console.log("check");
		       var userid = $("#userid").val();
		       var formData = new FormData();
		        
		       formData.append("userid", userid);
		             
		         $.ajax({
		            url : "idCheck",
		            data : formData,
		            dataType : 'text',
		            type : "post",
		            contentType : false,
		            processData : false,
		            success : function( result ) {

		               if( result != ""){
		                  alert("중복된 아이디 입니다 !");
		                  $("#userid").val("");
		               } else if ( userid == ""){
		                  alert("아이디를 입력해주세요 !");
		               } else {
		                  alert("사용 가능합니다 !");
		               }
		            }// end success
		      });// end ajax
		   });
	</script>

</body>
</html>