<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>타임라인~!</title>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>

<style>
body {
	background-color: #222;
}

.header {
	background-color: pink;
}

#content {
	width: 50%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	resize: none;
}

#content2 {
	width: 50%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	resize: none;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 15% auto; /* 15% from the top and centered */
    padding: 20px;
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
/* The Close Button */

/* mod button */

.mod {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.mod:hover,
.mod:focus {
    color: black;
   
    cursor: pointer;
}

div#temp{
	border: 1px solid black;
}

input#content{
	width:100%;
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
			<a class="navbar-brand page-scroll" href="#page-top">Noodles.com</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="#">Noodle-Wiki</a></li>
				<li><a class="page-scroll" href="/recipe/list">Recipe</a></li>
				<li><a class="page-scroll" href="/timeline">Community</a></li>
				<li><a class="page-scroll" href="/developer/api">Developer</a></li>
				<li><a class="page-scroll" href="/user/login">LOGIN</a></li>
				<li><a class="page-scroll" href="/user/register">SING-IN</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
	</nav>
	<!-- Navigation END -->

	<section>
	<div class="container">
		<div class="row">
		<!-- INPUT START -->
			<div class="box" id="temp">
			<!-- .box-header START -->
				<div class="box-header with-border">
					<div class="user-block">
						<img class="img-circle" src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user1-128x128.jpg" alt="User Image">
						<span class="username"><a href="#"> 로그인한 사람 이름</a></span>   
					</div>
				</div>
			<!-- .box-header END-->
			<!-- .box-body START -->
				<div class="box-body">
					<form id="createForm" action='timeline/regist' method='post'>
						<input id="content" name="content" type="text" class="form-control input-md"
							placeholder="Press enter to post comment">							
							<input type="hidden" name="mno" placeholder="mno" value="5">
							<button type="submit" id="createBtn" class="pull-right" > submit! </button>
					</form>
				</div>
			<!-- .box-body END -->				
			</div>
			<!-- INPUT END -->
					
					<!-- data START -->
					<c:forEach items="${list}" var="vo">
				<div class="box" id="temp">
						<!-- .box-header START -->
						<div class="box-header with-border">
							<div class="user-block">
								<img class="img-circle" src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user1-128x128.jpg" alt="User Image">
								<span class="username"><a href="#"> ${vo.nickname}</a></span>
								<span class="description"> ${vo.regDate} </span>
								<button type="button" value="${vo.tno}" id="removeBtn" class="pull-right text-muted"> 
									<span class="glyphicon glyphicon-trash"></span>
								</button>           
								<button type="button" value="${vo.tno}" id="modifyBtn" class="modify pull-right text-muted"> 
									<span class="glyphicon glyphicon-erase"></span>								
								</button>           
							</div>
						</div>
						<!-- .box-header END-->
						<!-- .box-body START -->
						<div class="box-body">
							<!-- post text -->
							<p>${vo.content}</p>
							<!-- Social sharing buttons -->
							<button type="button" class="btn btn-default btn-xs">
								<i class="fa fa-thumbs-o-up"></i> Like </button>
							<span class="pull-right text-muted">${vo.likeCnt} likes - ${vo.replyCnt} comments</span>
						</div>
						<!-- .box-body END -->
						<!-- .box-footer START -->
						<div class="box-footer box-comments">
							<div class="box-comment">
								<!-- User image -->
								<img class="img-circle img-sm" src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user5-128x128.jpg" alt="User Image">
								<div class="comment-text">
									<span class="username"> 댓글쓴이!!!!!!!!!!!!!! <span class="text-muted pull-right"> 댓글쓴애 시간 </span></span>	<!-- /.username -->
									댓글내용이구여!!!!!!!!!!!!!!!!!!!!!!!!!!
								</div> <!-- /.comment-text -->
							</div> <!-- /.box-comment -->
						</div>
						<!-- .box-footer END-->
						<div class="box-footer">
							<form action="#" method="post">
								<img class="img-responsive img-circle img-sm"
									src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user4-128x128.jpg"
									alt="Alt Text">
								<!-- .img-push is used to add margin to elements next to floating images -->
								<div class="img-push">
									<input type="text" id="replyContent" class="form-control input-sm" placeholder="Press enter to post comment!">
								</div>
							</form>
							
									<!-- Modify Modal -->
								<div id="myModal" class="modal">
									<!-- Modal content -->
									<div class="modal-content">
										<div class="modal-header">
											<span class="close">&times;</span>
											<h2>수정할 내용을 입력해주세요!</h2>
										</div>
										
										<div class="modal-body">
											<input value="${vo.content}" name="content" id="modContent">
										</div>
										
										<div class="modal-footer">
											<button type="button" id="modBtn" value="${vo.tno}"><span class="mod glyphicon glyphicon-erase" ></span></button>
										</div>
									</div>
								</div><!-- modal 끝 -->
						</div><!-- /.box-footer -->
				</div><!-- big div -->
					</c:forEach>
					<!-- data END -->
	
						<form id='form' method='post' action="regist">
							<input type='hidden' name='tno' id='ftno' value='${vo.tno}'>
							<input type='hidden' name='mno' id='fmno' value='5'>
							<input type='hidden' name='content' id='fcontent' value='${vo.content}'>
						</form>
		</div>

	</div>



	</section>
	
	<script>
	$( document ).ready(function() {
		var formObj = $("#form");

		console.log(formObj);

<!--		
		$("#create").on("click", function(event) {
			//event.preventDefault();
			
			formObj.attr("action", "/timeline/regist");
			formObj.attr("method", "post");
			formObj.submit();

		});
-->	
		
		
		$("#removeBtn").on("click", function(event) {
			event.preventDefault();
			console.log(event);
			
			if(!confirm("정말 삭제하시겠습니까?")){
				return;
			}else{
				
				var tno = $(this).val();
				$('#ftno').val(tno);
				formObj.attr("action", "timeline/delete");
				formObj.submit();
			}
			
		});
		
		$("#modifyBtn").on("click", function(event) {
	       
			$('#myModal').toggle();
			
		});
		
		$(".close").on("click", function(event){
			event.preventDefault();
		    $("#myModal").toggle(); 
		
		});
		
		
		$("#modBtn").on("click", function(event){
			event.preventDefault();
			
			var tno = $(this).val();
			$('#ftno').val(tno);
			
			var content = $('#modContent').val();
			$('#fcontent').val(content);
			
			formObj.attr("action", "timeline/modify");
			formObj.attr("method", "post");
			formObj.submit();
		
		});
	});
	</script>
	


</body>

</html>