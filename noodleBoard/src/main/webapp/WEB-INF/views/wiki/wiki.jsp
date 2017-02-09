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

.panel{
	margin-top:5em;
}
.panel-body{
	position: relative;
}

#tableRemoveBtn {
    position: absolute;
    margin-bottom: 5em;
    top: 2em;
    right: 1em;
}

section h3.section-subheading {
    margin-bottom: 20px;
}

/*table 반응형*/
@media screen and (max-width: 600px) {
table {width:100%;}
thead {display: none;}
tr:nth-of-type(2n) {background-color: inherit;}
tr td:first-child {background: #fed136;}
tr td:nth-child(2) {font-weight:bold;font-size:1.3em;}
tbody td {display: block;}
tbody td:before { 
    content: attr(data-th); 
    display: block;
    float: left;
    width: 150px;
    overflow: hidden;
    clear: left;
    text-align: right;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
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
	
	
	<section class="bg-light-gray">
	  <div class="container">
	  	<div class="text-center">
                <h2 class="section-heading">라면위키</h2>
				<h3 class="section-subheading text-muted">라면 정보를 검색하실 수 있습니다. 알고 싶은 라면을 검색해보세요.</h3>
		</div>
		<div class="row">
		
			  <div id="search" class="col-lg-6 col-lg-offset-3">
			    <div class="input-group">
			      <input type="text" class="form-control" name="name" id="keywordInp" placeholder="제품명">
			      <span class="input-group-btn">
			        <button class="btn btn-default" type="button" id="searchBtn">검색</button>
			      </span>
			    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
		
		  
			<!-- 결과화면출력 -->
		  <div id = "resultDiv" class="panel panel-default">
			<div id="demo"  class="panel-heading">
		    	<h3 class="panel-title">검색결과</h3> 
		  	</div>  
  			<div class="panel-body">
  				<p>검색결과는  아래에 추가됩니다.</p>
  				<label><button id="tableRemoveBtn" class="btn btn-default">Reset</button></label>
  			</div>
		  	<table id="table" class="table table-hover table-mc-light-blue afternoon-session">
		    	<thead>
		        	<tr>
		            <th scope="row">Thumbnail</th>
		            <th scope="row">Name</th>
		            <th scope="row">Brand</th>
		            <th scope="row">Calories</th>
		            <th scope="row">Carbonhydrate</th>
		            <th scope="row">Protein</th>
		            <th scope="row">Fat</th>
		            <th scope="row">Cholesterol</th>
		            <th scope="row">Natrium</th>
		          </tr>
		        </thead>
		      
		      	<tbody id="tbody" >
		      	
		      	</tbody>
		    </table>
	   	  
	      
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
	    					
	    					var str = "<tr class='tr'>"													// DB 더미데이터 확장자 붙인 후 제거..
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
	    				addCellHeader(document.querySelector('.afternoon-session'));	
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



			//출처: http://denodo1.tistory.com/124 [Back - End]
			
			$("#tableRemoveBtn").on("click", function(){
				
				$tbody.children().remove();
			}); // end tableRemoveBtn click...
		
			
			
			
			//
			$(document).on("click","#tbody tr", function(event){
				
				var name = this.children[1].outerHTML.replace(/(<([^>]+)>)/gi, "");
				console.log("name: " + name);
				
				$.ajax({
					url: "../wiki/view/"+ name,
					type: 'post',
					data: name,
					dataType: 'text',
					success: function(){
						window.open("/wiki/view");
	
					}
					
				}); // end ajax...	
				
			});
		
			
			
			//table 반응형
			function addCellHeader(table) {
				if (!table) {
					return false;
				}

				var headertext = [];
				var headers = document.querySelectorAll("thead");
				var tablebody = document.querySelectorAll("tbody");
				
				for(var i = 0; i < headers.length; i++) {
					headertext[i]=[];
					for (var j = 0, headrow; headrow = headers[i].rows[0].cells[j]; j++) {
					  var current = headrow;
					  headertext[i].push(current.textContent.replace(/\r?\n|\r/,""));
					  }
				} 
				
				if (headers.length > 0) {
					for (var h = 0, tbody; tbody = tablebody[h]; h++) {
						for (var i = 0, row; row = tbody.rows[i]; i++) {
						  for (var j = 0, col; col = row.cells[j]; j++) {
							if(j==0 || j==1){
								continue;
							}
						    col.setAttribute("data-th", headertext[h][j]);
						  } 
						}
					}
				}
			}
			addCellHeader(document.querySelector('.afternoon-session'));	
			
		
		
		});// end ready...
		

	</script>

</body>
</html>