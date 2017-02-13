<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<link href="../resources/css/user_apiRegister.css" rel="stylesheet">
<style>
#yellowbar{
	padding:35px;
}
</style>
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
			  <div class="widget-user-header bg-yellow" id="yellowbar">
				
				<div class="widget-user-image">
				   <img class="img-circle" src="show?name=${memberVO.picture}" alt="User Avatar"> 
				</div>
						
				<!-- /.widget-user-image -->
				<h3 class="widget-user-desc">NICKNAME : ${memberVO.nickname}</h3>
			  </div>

			<form action="create_client" method="POST">
			  <div class="box-footer">
				
				  <div class="list-group-item" id="client_ID" value="${sessionScope.VO.client_ID}"><h4>일회용ID</h4>${sessionScope.VO.client_ID}</div>
				  <div class="list-group-item" id="client_PW"><h4>일회용PW</h4>${sessionScope.VO.client_PW}</div>
				
			  </div>
			</form>
					
			<form>
			  <div class="box-footer">
			    <button type="submit" class="btn btn-primary" id="makeBtn">발급하기</button>
			  </div>
			</form><br/>
					
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
				  <input type="text" id="url" name="url" class="form-control" placeholder="URL Address"  value="${urlVO.url}">
				</div>
			    
			    <div>
				  <button type="submit" class="btn btn-primary" id="urlRegister">URL REGISTER</button>
				</div>
		      </div>
			</form>

		  <!-- /.widget-user -->
		  </div>
	    </div>
	  </div>
	</div>
  </section>

</body>

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
	  				window.location.reload(true);
	    		}
	   		}); // end ajax...
						
		});// end urlRegitBtn click...

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
					
			}); // end ajax...
				
			//(listForm).attr("action", "/user/removeURL");
			//$(listForm).attr("method", "post");
			//$(listForm).submit();
				
		}); // end removeURLBtn click...


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
			
		}); // end makeBtn click...
		
	}); // end ready...
</script>

</html>