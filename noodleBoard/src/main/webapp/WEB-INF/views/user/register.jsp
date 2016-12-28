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
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../resources/dist/css/AdminLTE.min.css">
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
	<div class="register-box">
		<div class="register-logo">
			<b>회원정보기입</b>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>

			<form action="register" method="post" >
				<div class="form-group has-feedback">
					<input type="text" id="userid" name="userid" class="form-control" placeholder="ID"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" id="userpw" name="userpw" class="form-control" placeholder="Password">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
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
				<div class="form-group has-feedback" >
					<div class="form-control" id="fileDrop" name="picture">
					Picture Drop Here
					</div>
				</div>
				<div class="form-group has-feedback" >
					<div class="form-control" id="uploadedList">
					</div>
				</div>
				<div id="success"></div>
				
				

				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox"> I agree to the terms
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
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
	</script>
</body>
</html>