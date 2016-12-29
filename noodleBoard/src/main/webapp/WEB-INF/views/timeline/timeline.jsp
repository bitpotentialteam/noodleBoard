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
.navbar-custom  {
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

#modContent {
	width: 100%;
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

div.box{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

input#content{
	width:100%;
} 

div .replyDiv{
	display : none;
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
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="/wiki">Noodle-Wiki</a></li>
				<li><a class="page-scroll" href="/recipe/list">Recipe</a></li>
				<li><a class="page-scroll" href="/timeline">Community</a></li>
				<li><a class="page-scroll" href="/developer/api">Developer</a></li>
				<li><a class="page-scroll" href="/user/login">LOGIN</a></li>
				<li><a class="page-scroll" href="/user/register">SIGN-UP</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
	</nav>
	<!-- Navigation END -->

	<section class="bg-light-gray">
	<div class="container">
		<div class="row">
		<!-- INPUT START -->
			<div class="box box-solid box-warning">
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
							placeholder="안녕하새오 뿌잉뿌잉 'ㅅ'">							
							<input type="hidden" name="mno" placeholder="mno" value="5">
							<button type="submit" id="createBtn" class="pull-right" > submit! </button>
					</form>
				</div>
			<!-- .box-body END -->				
			</div>
			<!-- INPUT END -->
					
					<!-- data START -->
					<c:forEach items="${list}" var="vo">
				<div class="box box-solid" id="timelineBox">
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
								
									<!-- Modify Modal -->
								<div id="myModal" class="modal">
									<!-- Modal content -->
									<div class="modal-content">
										<div class="modal-header">
											<span class="close" id="closeBtn">&times;</span>
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
							</div>
						</div>
						<!-- .box-header END-->
						<!-- .box-body START -->
						
						<div class="box-body">
							<!-- post text -->
							<p>${vo.content}</p>
							<!-- Social sharing buttons -->
							<button type="button" id="likeBtn" value="${vo.tno}" class="btn btn-default btn-xs">
								<i class="fa fa-thumbs-o-up"></i> Like </button>
								
								
								<button type="button" id="replyBtn" value="${vo.tno}" class="btn btn-default btn-xs">
								<i class="fa fa-heert"></i> 댓글보기 </button>
								
							<span class="pull-right text-muted">${vo.likeCnt} likes - ${vo.replyCnt} comments</span>
						</div>
						<!-- .box-body END -->
						<!-- .box-footer START -->
			
						<!-- reply start -->
						<div class = "replyDiv">
						<div class="box-footer box-comments">
							<div class="box-comment">
								<!-- User image -->
								<img class="img-circle img-sm" src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user5-128x128.jpg" alt="User Image">
								<div class="comment-text">
								
								<span class="username"> ${reply.nickname}   <span class="text-muted pull-right">  ${reply.regDate}  </span></span>	<!-- /.username -->
 								${reply.content} 
								
								
								
								</div> <!-- /.comment-text -->
							</div> <!-- /.box-comment -->
						</div>
				
						<!-- .box-footer END-->
						<div class="box-footer">
				
								<img class="img-responsive img-circle img-sm"
									src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user4-128x128.jpg"
									alt="Alt Text">
								<!-- .img-push is used to add margin to elements next to floating images -->
								<div class="img-push">
								<input name="tno" type="hidden" value="${vo.tno}" id="replytno">
								<input name="mno" type="hidden" value="5" id="replymno">
									<input type="text" id="replyContent" class="form-control input-sm" placeholder="Press enter to post comment!">
								</div>
						
							
						</div><!-- /.box-footer -->
						
					</div>	
				</div><!-- big div -->
					</c:forEach>
					<!-- data END -->
	
						<form id='form' method='post' action="regist">
							<input type='hidden' name='tno' id='ftno' value='${vo.tno}'>
							<input type='hidden' name='mno' id='fmno' value='5'>
							<input type='hidden' name='content' id='fcontent' value='${vo.content}'>
						</form> 
						<form id='likeform' method='post' action="regist">
							<input type='hidden' name='tno' id='ftno' value='${vo.tno}'>
							<input type='hidden' name='mno' id='fmno' value='5'>
							<input type='hidden' name='likeCnt' id='likeCnt' value='0'>
						</form> 
		</div>

	</div>



	</section>
	
	<!-- Bootstrap Core JavaScript -->
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="resources/js/jqBootstrapValidation.js"></script>
    <script src="resources/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="resources/js/agency.min.js"></script>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
	<script>
	$( document ).ready(function() {
		var formObj = $("#form");

		console.log(formObj);

		
		$(document).on("click","#removeBtn", function(event) {
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
		
		$(document).on("click","#modifyBtn", function(event) {
			var $modalPop = $(this).parent().find('#myModal'); 
			$modalPop.toggle();
			
		});
		
		$(document).on("click","#closeBtn", function(event){
			var $modalPop = $(this).parents("#myModal"); 
			$modalPop.toggle(); 
	
		});
		
		
		$(document).on("click","#modBtn", function(event){
			event.preventDefault();
			
			var tno = $(this).val();
			$('#ftno').val(tno);
			
			var content = $(this).parents('.modal-content').find('#modContent').val();
			$('#fcontent').val(content);
			
			formObj.attr("action", "timeline/modify");
			formObj.attr("method", "post");
			formObj.submit();
					
		});
		
		
		$(document).on("click","#likeBtn", function(event){
			event.preventDefault();
			
			var tno = $(this).val();
			$('#ftno').val(tno);
			
			console.log(tno);
			
			formObj.attr("action", "timeline/addlikeCnt");
			formObj.attr("method", "get");
			formObj.submit();
					
		});
		
		$(document).on("click","#replyBtn", function(event){
			event.preventDefault();
			
			var tno = $(this).val();
			var content = $()
			$('#ftno').val(tno);
			console.log(tno);
			
			$(this).parents('#timelineBox').find('.replyDiv').toggle();
			
			  replyMannager.listReply(	  
					{tno:tno}, 
			    	function (result){
						
						var str = "";
					console.log(result);
						
						
			    	}
				);
			
			$(".comment-text").html();

			
			

		});
		
		//댓글!
		$(document).on("keypress","#replyContent", function(event){
			
			if (event.which == 13) {/* 13 == enter key@ascii */
			
			event.preventDefault();
			
			var tno = $(this).parents('.img-push').find('#replytno').val();
			var mno = $(this).parents('.img-push').find('#replymno').val();
			var replyContent = $(this).val();
	
			console.log(tno);
			console.log(mno);
			console.log(replyContent);
			
			  replyMannager.addReply(
					  {tno:tno,mno:mno,content:replyContent}, //4.입력값
			      function (result) { alert("댓글이등록되어씀니다.");//5. 콜백함수 결과가 나오면 알럿을 띄어주세용!
			       });

		}
	});
		
	});
	
	
	 var replyMannager = (function () {
	      //여기서 Ajax를 날림
	      var addReply = function (data, fn) {//1. data와 콜백함수를 넘겨받음
	         
	    		
	    		$.ajax({
	    			type : 'post',
	    			url : '/timeline/registReply',
	    			headers : {
	    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
	    				"X-HTTP-Method-Override" : "POST"
	    			},
	    			dataType : 'text',
	    			
	    			data : data,
	    			
	    			success : function(result) {

	    					alert("등록되었습니다.");

	    			}
	    		});
	      
	    		
	      }; //  URL, data, 콜백함수(결과값을 여기다 넘기는 )
	      
	      
	      
	      var listReply = (function( data, fn){

	  		$.ajax({
    			type : 'get',
    			url : '/timeline/reply',
    			headers : {
    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
    				"X-HTTP-Method-Override" : "POST"
    			},
    			dataType : 'text',
    			
    			data : data,
    			
    			success : function(result) {
					fn = result;
					
					console.log(result);
    			}
    		});
	    	  
	      });
	      

	      return {addReply: addReply, listReply:listReply};
	      //키가 addReply 값이 함수
	  })();
	
	
	</script>
	


</body>

</html>