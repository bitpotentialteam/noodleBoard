<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>

<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="../resources/css/blue.css">

<style> 
.navbar-custom  {
	background-color: #222;
}


</style>
</head>

<body>

<%@ include file="/WEB-INF/views/include/loginSection.jsp" %>

  <section class="bg-light-gray">   
	<div class="login-box">
	  
	  <div class="login-logo">
	    <b>로그인</b>
	  </div>
	  
	  <!-- /.login-logo -->
	  <div class="login-box-body">
		<p class="login-box-msg">정보를 기입하세요</p>

		<form action="loginAction" method="post">
		  <div class="form-group has-feedback">
			<input type="text" name="userid" class="form-control" placeholder="ID">
			<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
		  </div>
				
		  <div class="form-group has-feedback">
		    <input type="password" name="userpw" class="form-control" placeholder="Password">
			  <span class="glyphicon glyphicon-lock form-control-feedback"></span>
		  </div>
		
		  <div id="status"></div>
						
		  <div class="row">
			
			<div class="col-xs-8">
			</div> 
	
			<div class="col-xs-4">
			  <button type="submit" id="loginBtn" class="btn btn-primary btn-block btn-flat">Sign In</button>
			</div>
			<!-- /.col -->
		  </div>
		</form>

		<a href="../user/register" class="text-center">Register a new membership</a>

	  </div>
	  <!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->
  </section>

</body>	
	
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