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
		  <li><a class="page-scroll" href="/wiki">Noodle-Wiki</a></li>
		  <li><a class="page-scroll" href="/recipe/list">Recipe</a></li>
		  <li><a class="page-scroll" href="/timeline">Community</a></li>
		  <li><a class="page-scroll" href="/developer/api">Developer</a></li>
			
		  <c:if test='${SPRING_SECURITY_CONTEXT == null}'>
			<li><a class="page-scroll" href="/user/login" id="login">LOGIN</a></li>
			<li><a class="page-scroll" href="/user/register" id="register">SIGN-UP</a></li>
		  </c:if>
			
		  <c:if test='${SPRING_SECURITY_CONTEXT != null}'>
			<li><a class="page-scroll" id="login" href="<c:url value="/logout" />">LOGOUT</a></li>
			<li><a class="page-scroll" href="/user/myPage" id="register">MYPAGE</a></li>
		  </c:if>
		</ul>
	  </div> <!-- /.navbar-collapse -->
	</div> <!-- /.container-fluid -->
  </nav> <!-- Navigation END -->