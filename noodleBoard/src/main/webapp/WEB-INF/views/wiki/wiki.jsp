<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>위끼위끼</title>



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

<!-- Theme style -->
<link rel="stylesheet" href="../resources/css/AdminLTE.min.css">
<link href="../resources/css/agency.min.css" rel="stylesheet">

<!-- iCheck -->
<link rel="stylesheet" href="../resources/css/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>

<style>
.navbar-custom  {
	background-color: #222;
}

.box p {
	margin-bottom: 0.8em;
}

.box {
	padding: 3% 5%;
}

.tableImg img{
	width: 8em;
	height: 6em;
}

.tr td{
	font-size: large;
	font-style: inherit;
	text-align: center;
}

.table thead tr th{
	text-align: center;
}

button {

   background-color: rgba( 255, 255, 255, 0 );
   border : 0;
   outline : 0;

}
</style>

</head>
<body>

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
			<a class="navbar-brand page-scroll" href="/">Noodles.com</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="/"></a></li>
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
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<!-- Navigation END -->
	<section>
	  <div class="container">
		<div class="row">
		
		  <div class='search'>
			  <div class="field half first">
			    <input type="text" name="name" id="keywordInp" style='width: 50em; height: 4em; margin-left: 10em; margin-top: 2em; '> 
			      <button type="button" class="btn btn-primary" id="searchBtn" style='width: 10em; height:4em; margin-left: 2em;'>Search</button>
			  </div>
		  </div>
		  
			<!-- 결과화면출력 -->
		  <div id = "resultDiv" style = 'border-style: solid; margin: 5em;'>
		    <div id="demo">
  			  <label><button id="tableRemoveBtn" >Reset</button></label>
		  	  <table id="table" class="table table-hover table-mc-light-blue">
		        <thead>
		          <tr>
		            <th>Thumbnail</th>
		            <th>Name</th>
		            <th>Brand</th>
		            <th>Calories</th>
		            <th>Carbonhydrate</th>
		            <th>Protein</th>
		            <th>Fat</th>
		            <th>Cholesterol</th>
		            <th>Natrium</th>
		          </tr>
		        </thead>
		      
		      <tbody id="tbody" >
		      	
		      </tbody>
		    </table>
	      </div>
	      
	    </div>
	  </div>
	  </div>
	</section>


	<script src="//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-58d22c749295bca52f487966e382a94a495ac103faca9206cbd160bdf8aedf2a.js"></script>
	
	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script>
		$(document).ready(function(){

			var $tbody = $("#tbody");
			
			function search(){
				
				var name = $("#keywordInp").val();
				console.log(name);
				
				$.ajax({
	    			type : 'post',
	    			url : '/wiki/list',
	    			dataType : 'text',
	    			data : {name : name},
	    			success : function(data){
	    				console.log(data);
	    				
	    				var jsonData = JSON.parse(data);
	    				console.log(jsonData);
	    				
	    				for(var i = 0; i < jsonData.length; i++){
	    					
	    					var str = "<tr class='tr' onclick='javascript:viewClick(this)'>"													// DB 더미데이터 확장자 붙인 후 제거..
	    						  	 +"<td class='tableImg'><img src= '/user/show?name="+jsonData[i]['thumbnail']+".jpg'"+"></td>"
	    						  	 +"<td>"+jsonData[i]['name']+"</td>"
	    						  	 +"<td>"+jsonData[i]['brand']+"</td>"
	    						  	 +"<td>"+jsonData[i]['calories']+"</td>"
	    						  	 +"<td>"+jsonData[i]['carbohydrate']+"</td>"
	    						  	 +"<td>"+jsonData[i]['protein']+"</td>"
	    						  	 +"<td>"+jsonData[i]['fat']+"</td>"
	    						  	 +"<td>"+jsonData[i]['cholesterol']+"</td>"
	    						  	 +"<td>"+jsonData[i]['natrium']+"</td>"
	    						  	 +"</tr>";
	    						  	 
	    				$tbody.prepend(str);
	    				}
	    			}
	    		});// end ajax...
			}
			
			
			//서치버튼이벤트
			$("#searchBtn").on("click", function(){

				search();
				
			});	// end searchBtn click...
			
			//엔터이벤트
			$("#keywordInp").keypress(function(e) { 
				

			    if (e.keyCode == 13){
			    	search(); 
			    }    
			});



			출처: http://denodo1.tistory.com/124 [Back - End]
			
			$("#tableRemoveBtn").on("click", function(){
				
				$tbody.children().remove();
			}); // end tableRemoveBtn click...
		
		});// end ready...
		
		function viewClick(event){

			var name = event.children[1].outerHTML.replace(/(<([^>]+)>)/gi, "");
			console.log("name: " + name);
			
			$.ajax({
				url: "../wiki/view/"+ name,
				type: 'post',
				data: name,
				dataType: 'text',
				success: function(){
					window.open("/wiki/view");
					console.log("?????????????");
				}
				
			}); // end ajax...
		
		}
	</script>

</body>
</html>