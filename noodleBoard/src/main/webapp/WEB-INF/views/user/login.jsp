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
				
		  <!-- NAVER FACEBOOK LOGIN BUTTON -->
		  <div class="form-group has-feedback" id="naver_id_login"></div>
					
		  <fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
					
		  <div id="status"></div>
						
		  <div class="row">
			
			<div class="col-xs-8">
			  <div class="checkbox icheck">
				<label class="">
                  <div class="icheckbox_square-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                  <input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
                  <ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                  </div>
                Remember Me
                </label>
			  </div>
			</div> 
					
			<!-- NAVER FACEBOOK LOGIN BUTTON -->
			<!-- /.col -->
					
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
	
	<!-- FACEBOOK LOGIN -->
	<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=1830052670598286";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));


  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    } else {
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into Facebook.';
    }
  }

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '{your-app-id}',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.8' // use graph api version 2.8
  });

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };

  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('로그인');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name);

    });
  }
  </script>
<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->

<!-- FACEBOOD LOGIN END -->

	<!-- naver login -->
	<script>
	
	var naver_id_login = new naver_id_login("boQv6fXim3Obzkfnsoxz", "http://localhost:8080/");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 3,40);
  	naver_id_login.setDomain("http://localhost:8080/");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
	
	var naver_id_login = new naver_id_login("boQv6fXim3Obzkfnsoxz", "http://localhost:8080/");
	naver_id_login.setDomain(".service.com"); //상태 토큰 비교를 위한 domain 설정
	naver_id_login.init_naver_id_login();
	
	</script>
	<!-- naver login end -->

</body>
</html>