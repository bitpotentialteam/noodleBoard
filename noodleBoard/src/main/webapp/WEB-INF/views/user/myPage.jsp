
<%@ include file="/WEB-INF/views/include/header.jsp" %>

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
#apiBtn {
	margin-left: 90%;
	width: 14%;
	height: 4em;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>


</head>

<body class="hold-transition skin-blue sidebar-mini">

<%@ include file="/WEB-INF/views/include/loginSection.jsp" %>
	
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
								src="show?name=${memberVO.picture}" alt="User Avatar">
						</div>
						<!-- /.widget-user-image -->
						<h3 class="widget-user-username">${memberVO.username}</h3>
						<h5 class="widget-user-desc">${memberVO.nickname}</h5>
					</div>
					<form id="form">
						<div class="box-footer no-padding">

							<ul class="list-group">
								<li class="list-group-item"><h4>ID</h4>${memberVO.userid}</li>
								<li class="list-group-item"><h4>NAME</h4>${memberVO.username}</li>
								<li class="list-group-item"><h4>NICKNAME</h4>${memberVO.nickname}</li>
								<li class="list-group-item"><h4>E-MAIL</h4>${memberVO.email}</li>
							</ul>
						</div>
					</form>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary" id="goListBtn">MAIN</button>
						<button type="submit" class="btn btn-warning" id="modifyBtn">MODIFY
							PAGE</button>
					</div>
					<form id ="apiForm">
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="apiBtn">Using API</button>
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

			console.log(formObj);

			$("#modifyBtn").on("click", function() {
				formObj.attr("action", "/user/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});

			$("#goListBtn").on("click", function() {
				formObj.attr("method", "get");
				formObj.attr("action", "../");
				formObj.submit();
			});
			
			var apiForm = $("#apiForm"); 
			
			$("#apiBtn").on("click", function(){
				apiForm.attr("method", "get");
				apiForm.attr("action", "/user/apiRegister")
				apiForm.submit();
			});

		});
	</script>

</body>
</html>