<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<link href="../resources/css/user_myPage.css" rel="stylesheet">

</head>
<style>
#yellowbar{
	padding:35px;
}
</style>
<body class="hold-transition skin-blue sidebar-mini">

<%@ include file="/WEB-INF/views/include/loginSection.jsp" %>
	
  <section>
    <div class="container">
	  <div class="row">
	    <div class="col-md">
		  <!-- Widget: user widget style 1 -->
		  <div class="box box-widget widget-user-2">
		  
			<!-- Add the bg color to the header using any of the bg-* classes -->
			<div class="widget-user-header bg-yellow" id="yellowbar">
			  
			  <div class="widget-user-image">
				<img class="img-circle" src="show?name=${memberVO.picture}" alt="User Avatar">
			  </div>
			  
			  <!-- /.widget-user-image -->	  
			  <h3 class="widget-user-desc">${memberVO.nickname}</h3>
			</div>
			
			<form id="form">
			  <div class="box-footer no-padding">

			    <ul class="list-group">
				  <li class="list-group-item"><h4>ID</h4>${memberVO.userid}</li>
				  <li class="list-group-item"><h4>NICKNAME</h4>${memberVO.nickname}</li>
				  <li class="list-group-item"><h4>E-MAIL</h4>${memberVO.email}</li>
				</ul>
			  </div>
			</form>
			
			<div class="box-footer">
			  <button type="submit" class="btn btn-primary" id="goListBtn">MAIN</button>
			  <button type="submit" class="btn btn-warning" id="modifyBtn">MODIFY PAGE</button>
			</div>
			
			<form id ="apiForm">
			  <div class="box-footer">
			  <button type="submit" class="btn btn-primary" id="apiBtn">Using API</button>
			  </div>
			</form>	
		  </div>
		</div>
	  </div>
	</div>
  </section>
  
</body>

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
		
	}); // end ready... 
</script>

</html>