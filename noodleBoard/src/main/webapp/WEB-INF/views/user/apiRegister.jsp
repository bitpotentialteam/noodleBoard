<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>My Page</title>
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
<link rel="stylesheet" href="../resources/dist/css/AdminLTE.min.css">
<link href="../resources/css/agency.min.css" rel="stylesheet">

<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="../resources/dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<style>
.navbar-custom {
	background-color: #222;
}

.box p {
	margin-bottom: 0.8em;
}

.box {
	padding: 3% 5%;
}

body {
	background: #222;
}

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>


</head>

<body class="hold-transition skin-blue sidebar-mini">

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

				<c:if test='${sessionScope.LOGIN eq success}'>
					<li><a class="page-scroll" href="/user/login" id="login">LOGIN</a></li>
					<li><a class="page-scroll" href="/user/register" id="register">SIGN-UP</a></li>
				</c:if>
				<c:if test='${sessionScope.LOGIN ne success}'>
					<li><a class="page-scroll" id="login" href="<c:url value="/logout" />">LOGOUT</a></li>
					<li><a class="page-scroll" href="/user/myPage" id="register">MYPAGE</a></li>
				</c:if>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<section>
	<div class="container">
		<div class="row">
			<div class="col-md">
				<!-- Widget: user widget style 1 -->
				<div class="box box-widget widget-user-2">
					<!-- Add the bg color to the header using any of the bg-* classes -->
					<div class="widget-user-header bg-yellow">
						<div class="widget-user-image">
							<img class="img-circle"
								src="show?name=${sessionScope.VO.picture}" alt="User Avatar">
						</div>
						<!-- /.widget-user-image -->
						<h3 class="widget-user-username">${sessionScope.VO.username}</h3>
						<h5 class="widget-user-desc">${sessionScope.VO.nickname}</h5>
					</div>

					<form action="create_client" method="POST">
						<div class="box-footer">
							<ul>
								<li class="list-group-item" id="client_ID" value="${sessionScope.VO.client_ID}"><h4>일회용ID</h4>${sessionScope.VO.client_ID}</li>
								<li class="list-group-item" id="client_PW"><h4>일회용PW</h4>${sessionScope.VO.client_PW}</li>
							</ul>
						</div>
					</form>
					<form>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="makeBtn">발급하기</button>
						</div>
					</form>
					<br/>
					
					<form id="listForm">
						<div class="box-footer" id="urlBox">
							<ul>
								<c:forEach items="${list}" var="urlVO">
									<li>
										<p>URL: ${urlVO.url}</p>
										<button id="removeURLBtn" value= "${urlVO.uno}" name= "uno">삭제하기</button>
									</li>
								</c:forEach>
							</ul>
						</div>
					</form>
					
					<form action="apiRegister" method="POST">
					<div>
						<div class="form-group has-feedback" id="urlDiv">
							<input type="text" id="url" name="url" class="form-control"
								placeholder="URL Address"  value="${urlVO.url}">
								
						</div>
						<div>
							<button type="submit" class="btn btn-primary" id="urlRegister">URL
								REGISTER</button>
						</div>
							</div>
					</form>

					<!-- /.widget-user -->
				</div>
			</div>
		</div>
	</div>
	</section>



	<!-- jQuery 2.2.3 -->
	<script src="../resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- Slimscroll -->
	<script src="../resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="../resources/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../resources/dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../resources/dist/js/demo.js"></script>

	<script>
		$(document).ready(function() {

			var formObj = $("#form");

			console.log("formObj = "+ formObj);
			
			var listForm = $("#listForm");
			
			console.log("listForm ="+listForm);
			
			
			
			$("#urlRegister").on("click",function(){
				
				event.preventDefault();
				
				var url = $(this).parent().parent().find("#url").val();
				console.log($(this));
				console.log(url);
						
		 		$.ajax({
	    			type : 'post',
	    			url : '/user/apiRegister',
	    			headers : {
	    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
	    				"X-HTTP-Method-Override" : "post"
	    			},
	    			dataType : 'text',
	    			data : {url : url},
	    			success : function() {
	  					alert("등록되어씀ㄴ당");
	    			}
	    		});
						
			});
			
			
			
			
			
			
			
			$(document).on("click", "#removeURLBtn",function(){
				event.preventDefault();
				
				var $this = $(this);
				var uno =$this.val();
				
				console.log("uno: "+ uno);
				
				$.ajax({
					url : '../user/removeURL',
					data : {uno : uno},
					dataType : 'text',
					type : "post",
					success : function(fn) {
					
						alert("삭제 ㅇㅋ");
						window.location.reload(true);
					}
					
				});
				
				//(listForm).attr("action", "/user/removeURL");
				//$(listForm).attr("method", "post");
				//$(listForm).submit();
				
			}); 


			$("#makeBtn").on("click", function() {
				
				event.preventDefault();
				
				var client_ID = $("#client_ID").val();
				var formData = new FormData();
				
				console.log("클라이언트아이디" + client_ID);
				formData.append("client_ID", client_ID);


				if ( client_ID == '0' ) {
					$.get("create_client");
					alert("발급되었습니당 하하하하하하하하하하");	
					window.location.reload();
				} else {
					alert("이미발급되었슴다.");	
				}
			});
		});
	</script>

</body>
</html>