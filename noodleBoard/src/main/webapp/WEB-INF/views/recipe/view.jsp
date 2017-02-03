<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>라면이 좋아</title>

<!-- Bootstrap Core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
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

<link href="../resources/css/agency.min.css" rel="stylesheet">

<style>
.navbar-custom  {
	background-color: #222;
}
.img-responsive {
	width: 100%;
    max-height: 100%;
    height: 360px;
}

textarea {
	resize: none;
}

.stepImg {
	width: 150px;
	height: 100%;
    border-radius: 4px;
	background: no-repeat center center;
	background-size: contain; 
	margin: 5px 5px 15px 5px;
	text-align:center;
	color: rgba(138, 109, 59, 0.55);
}

#thumbnail{
	background-size: contain;
}

.stepImg img{
	width: 100%;
	height: auto;
	border-radius: 4px;
	
}

.step{
    border-bottom: 1px solid #dddddd;
}

p {
    white-space: pre-wrap;
    word-break: break-all;
    border: 1px solid lightgrey;
    border-radius: 4px;
    padding: 0.5em;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
   
}


#steps p {
	border:none;
    -webkit-box-shadow: none;
    box-shadow: none;
}

.col-xs-12 > label {
	font-size: 1.5em;
} 

div.row.control-group {
	margin-top: 20px;
}

.intro-text {
	white-space: pre-wrap;
    word-break: break-all;
}

.portfolio-hover{
	background: rgba(254,209,54,.9);
    position: absolute;
    width: 100%;
    height: auto;
    opacity: 0;
    transition: all ease .5s;
    -webkit-transition: all ease .5s;
    -moz-transition: all ease .5s;
}

.portfolio-link{

    display: block;
    position: relative;

}

 #reReplyContent{ 
  	display: none; 
 }
 
 #likeBtn {

    background-color: rgba( 255, 255, 255, 0 );
    border : 0;
    outline : 0;
	font-size: 1.5em;
	padding: 0px;
	padding-left: 10px;
}

.badge.badge-count{
	top: -12px;
    left: -11px;
    background-color: #fed136;
}

#reReplyContent div{
	display:block;
}

#like {
	
}

</style>

</head>

<body class="hold-transition login-page">
	<!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Noodles.com</a>
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
					<li><a class="page-scroll" href="/user/login" id="login">LOGOUT</a></li>
					<li><a class="page-scroll" href="/user/myPage" id="register">MYPAGE</a></li>
					</c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    
        <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">${nickVO.nickname}님의 맛있는</div>
                <div class="intro-heading" id="check">${vo.title}
                	<h3><fmt:formatDate value="${vo.regdate}" type="both" dateStyle="medium" timeStyle="short"/></h3>
					<button type='button' id='likeBtn' value='${vo.bno}' class='btn btn-default' disabled>
					<div id="like">
						<span class='glyphicon glyphicon-thumbs-up'></span>
						<span class='badge badge-count' id='likeCnt'>${vo.likeCnt}</span> </button>
                	</div>
                </div>
                <div><a href="#recipe" class="page-scroll btn btn-xl">detail</a></div>
            </div>
        </div>
    </header>
<section>
<form id=recipe>
	<input type='hidden' id='sessionMno' name='mno' value="${sessionScope.VO.mno}">
	<input type='hidden' id='mno' name='mno' value="${vo.mno}">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1" id="bnoFind">
				<input type="hidden" name="bno" id="bno" value="${vo.bno}">		
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>설명</label>
							<div id="content">
								<p>${vo.content}</p>
							</div>
						</div>
					</div>								
					
					<div class="row control-group" id="materialContent">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>재료</label>
							<div>
								<p>${vo.materialContent}</p>
							</div>
						</div>
					</div>
					
					<div class="row control-group" >
						<div class="form-group col-xs-12 floating-label-form-group controls">
						<label>조리순서</label>
							<div id="steps">
							
								<c:forEach items="${clist}" var="cuisineVO">
								<!-- START -->
									<div class="step media form-group" id="step">
									<c:set var="loop" value="true"></c:set>
									<c:forEach items="${ilist}" var="imageVO">
										<c:if test="${imageVO.step == cuisineVO.step}">
										<c:if test="${loop}">
										<div class="media-left media-middle">
											<div class="stepImg">
												<a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
						                       	 <div class="portfolio-hover">
						                            <div class="portfolio-hover-content">
						                                <i class="fa fa-plus fa-3x"></i>
						                            </div>
						                        </div>
						                        <img src="../user/show?name=${imageVO.thumbnail}" class="img-responsive" alt="">
						                   	 	</a>
											</div>											
										</div>
									<c:set var="loop" value="false"></c:set>
										</c:if>
										</c:if> 
									</c:forEach>
											<!-- 사진 크게 보기 모달 창 넣기-->
									 	<div class="media-body">
									 		<h4 class="media-heading">STEP ${cuisineVO.step}</h4>
											<div>
												<p>${cuisineVO.content}</p>
											</div>
										</div>
									</div>
								<!-- END -->
								</c:forEach>
							</div>
							
						</div>
					</div>
					<div class="-right row">
						<div class="form-group col-md-4" id="mdBtn">
							<input type="button" class="btn btn-default-right" id="list" value="목 록">
						</div>
					</div>
			</div>
		</div><!-- row end -->
		
			<!-- 댓글처리... -->
	<div class="row">
	<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
	<div class="reply">
<!-- 	  <form id="replyListForm" action="registReply" method="post"> -->
	  	<input type='hidden' id='sessionMno' name='mno' value="${sessionScope.VO.mno}">
	    <input type='hidden' id="bno" name='bno' value="${vo.bno}">
	    <div class="row control-group" name="content">
			<div class="form-group col-xs-12 floating-label-form-group controls">
				<label>댓글</label> <input type="text" class="form-control"
					placeholder="Reply" name="content" id="reContent">
			</div>
		</div>
		<button type="submit" id="registReplyBtn" class="registReplyBtn">댓글등록</button>
		<br>
<!-- 	  </form> -->
	</div>
	<br>
	</div>
	<!-- 댓글!! -->
		<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
			<form id="reply">
				<ul class="media-list"> 
					<c:forEach items="${replyList}" var="rvo">
					<c:set var="loop" value="true"></c:set>
					<c:forEach items="${MemberList}" var="memberVO">
					<c:if test="${rvo.mno eq memberVO.mno}">
					<c:if test="${loop}">
						<li class="media">
							<div class="media-left">
								<a href="#"> <img class="media-object" src="/user/show?name=${memberVO.picture}" data-holder-rendered="true" style="width: 64px; height: 64px;"> </a>
							</div>
							<div class="media-body" id="findHidden">
								<h4 class="media-heading">${memberVO.nickname}
								<fmt:formatDate value="${rvo.regdate}" type="both" dateStyle="medium" timeStyle="short"/></h4>
								<div id='btns'>
									<p>${rvo.content}</p>
									<button type="button" id="reReplyBtn" class="glyphicon glyphicon-comment"></button>
								</div>
								<div id="reReplyContent">	
								
								</div>
								<div class="form-group col-xs-12 floating-label-form-group controls" id="hidden">
									<input type='hidden' id="nickName" name='nickName' value="${memberVO.nickname}">
									<input type='hidden' id="pickture" name='pickture' value="${memberVO.picture}">
									<input type='hidden' id="mno" name='mno' value="${rvo.mno}">
									<input type='hidden' id="rno" name='rno' value="${rvo.rno}">
									<input type='hidden' id="rrno" name='rrno' value="${rvo.rrno}">
									<input type='hidden' id="seq" name='seq' value="${rvo.seq}">
								</div>
							</div>
						</li>
						<c:set var="loop" value="false"></c:set>
						</c:if>
						</c:if>
						</c:forEach>
						</c:forEach>
					</ul>
				</form>
			</div>
		</div>
	</div>
	</form>
	<form role="form" action="modify" method="post">
    	
	<input type='hidden' name='bno' value="${vo.bno}">
	<input type='hidden' name='page' value="${cri.page}">
	<input type='hidden' name='perPageNum' value="${cri.pageUnit}">
	<input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">

	</form>
</section>

	<!-- Footer START -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Noodle Website 2017</span>
                </div>
                
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
	<!-- Footer END -->

	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<!-- jQuery 2.2.3 -->
	<script src="../resources/vendor/jquery/jquery-2.2.3.min.js"></script>
	
	<!-- Bootstrap 3.3.6 -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- iCheck -->
	<script src="../resources/vendor/jquery/icheck.min.js"></script>
	
	<!-- Theme JavaScript -->
    <script src="../resources/js/agency.min.js"></script>
	
	<script>
	
	$(document).ready(function(){
		var nickName = $("#reReplyContent").find("#nickName").val();
		var mno = $("#mno").val();
		var bno = $("#bno").val();
		var sessionMno = $("#recipe").find("#sessionMno").val();
		
		function user(){
		var button = "";
		var reButton = "";
		if(sessionMno == mno){
			button = "<button type='submit' id='modifyBtn' class='btn btn-default-right'>수 정</button>"
					 +"&nbsp<button type='submit' id='removeBtn' class='btn btn-default-right'>삭 제</button>";
					 
			$("#recipe").find("#mdBtn").append(button);	 
		}
		}user();
		
		//수정, 삭제 버튼 가리기
		function replyBtn(){
			var $this = $(this);
			var mno = $this.find(".media").find("#mno").val();
			var bno = $("#bno").val();
			console.log($this);
			console.log(bno);
			
			$.ajax({
		    	type : 'post',
		    	url : '/recipe/replyList',
		    	headers : {
		    		"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
		    		"X-HTTP-Method-Override" : "POST"
		    	},
		    	dataType : 'json',
		    	data : {bno:bno},
		    	success : function(result) {   
		    				var reButton = "";
		    		for(var i = 0; i < result.length; i++){
		    			if(sessionMno == mno){
		    				reButton = "&nbsp<button type='button' id='replyModifyBtn' class='replyRemoveBtn glyphicon glyphicon-pencil'></button>"
		    						   +"&nbsp<button type='button' id='replyRemoveBtn' class='replyRemoveBtn glyphicon glyphicon-trash'></button>";
		    				
		    				$("#reReplyBtn").after(reButton);
		    			}
		    		}
		    	}
		    });	
		}replyBtn();
	
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
		
		//좋아요
		(function(event){
			
			var likeCheck =	"${likeCheck}";
			console.log('likeCheck');
			console.log(likeCheck);
			if(likeCheck == 0){
				$('#likeBtn').removeAttr("disabled");
			}
		})(); 
		
		//조회수
		(function(){  
			$.ajax({
	    		type : 'get',
	    		url : '/recipe/view',
	    		headers : {
	    			"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
	    			"X-HTTP-Method-Override" : "GET"
	    		},
	    		dataType : 'text',
	    		data : {mno:sessionMno, bno:bno},
	    		success : function() {    
		    	
	    		}
	    	});				
		})();
		
		//대댓글 리스트
		$(document).on("click","#reReplyBtn", function(event){
			var $this = $(this);
			var $replyToggle = $this.parents("#findHidden").find("#reReplyContent");
			var rno = $this.parents("#findHidden").find("#rno").val();
			var bno = $("#bno").val();
			var nickName = $("#nickName").val();
			var picture = $("#picture").val();
			var input = "<div id='replyInput'><input type='text' class='form-control' placeholder='Reply' name='content' id='reReContent' required data-validation-required-message='Please enter reply.'>"
						+"<button type='button' id='reReplyRegist' class='reReplyRegist glyphicon glyphicon-pencil'></button></div>";
			 
			console.log("this : "+$this);
			console.log("rno : "+rno);
			console.log("bno : "+bno);
			console.log("reContent : "+reReplyContent);
			$replyToggle.toggle();
			
			$.ajax({
    			type : 'post',
    			url : '/recipe/reReplyList',
    			headers : {
    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
    				"X-HTTP-Method-Override" : "POST"
    			},

    			dataType : 'json',
    			data : {mno : mno, bno:bno, rrno:rno},
    			success : function(result) {
    				console.log(result);
    					var str = "";
    					if(result){
							for(var i = 0; i < result.length; i++){
							var content = result[i].content;
							console.log(content);
    						str += "<div class='media-body' id='reContent'>"
							   	   +"<h4 class='media-heading'>" + nickName + "</h4>"
							  	   +"<p>"+content+"</p>"
							   	   +"</div>";
							   
							}
							$replyToggle.html(str);
							$replyToggle.append(input);
							console.log(input);
    					}else{
    						$replyToggle.append(input);
    					}
    					
    				}
    			});
			
		});
		
		
		//댓글 삭제
		$(document).on("click", "#replyRemoveBtn",function(event){
			if(confirm("삭제하시겠습니까?")){
			var $this = $(this);
			var rrno = $this.parents("#findHidden").find("#rrno").val();
			var seq = $this.parents("#findHidden").find("#seq").val();
			var rno = $this.parents("#findHidden").find("#rno").val();
			console.log("rrno : "+rrno);
			console.log("seq : "+seq);
			console.log("rno : "+rno);
			$.ajax({
    			type : 'post',
    			url : '/recipe/removeReply',
    			headers : {
    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
    				"X-HTTP-Method-Override" : "POST"
    			},
    			dataType : 'json',
    			data : {rrno:rrno, seq:seq, rno:rno},
    			success : function() {
    			}
    		});
    		alert("삭제 완료");
			location.reload();
			}else{
				return;
			};
		});
		
		//댓글 수정 버튼 누르면 input으로 바꾸어줌
		$("#replyModifyBtn").on("click", function(event){
			
// 			$("#btns").empty();
// 			var inputContent = "<input type='text' id='modifyContent' name='content' value='"+originalContent+"'>";
// 				input.html(inputContent);
// 			console.log(input);
// 			console.log(originalContent);
			
			var $this = $(this);
			var input = $this.parent().children("p");
			var originalContent = input.text();
			var btns = $this.parent();
			var pTag = "<input type='text' class='form-control' id='modifyContent' name='content' value='"+originalContent+"'>"
					   +"<button type='button' id='replyModify' class='glyphicon glyphicon-pencil'></button>";
					   btns.html(pTag);
		});
			
		//댓글수정 됨
		$(document).on("click", "#replyModify", function(event){
		
			var $this = $(this);
			var rno = $this.parents("#findHidden").find("#hidden").find("#rno").val();
			var content = $this.parent().children("#modifyContent").val();
			console.log($this);
			console.log(rno);
			console.log(content);
			
			$.ajax({
    			type : 'post',
    			url : '/recipe/modifyReply',
    			headers : {
    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
    				"X-HTTP-Method-Override" : "POST"
    			},
    			dataType : 'json',
    			data : {content : content, rno:rno},
    			success : function(result) {
    				alert("수정 완료");
    				var modifyContent = result.content;
    				
    				var btns = $this.parent();
    				var pTag = "<p>"+modifyContent+"</p>"
    						   +"<button type='button' id='replyModify' class='glyphicon glyphicon-comment'></button>"
    						   +"&nbsp<button type='button' id='replyModifyBtn' class='replyRemoveBtn glyphicon glyphicon-pencil'></button>"
					   		   +"&nbsp<button type='button' id='replyRemoveBtn' class='replyRemoveBtn glyphicon glyphicon-trash'></button>";
    				btns.html(pTag);
    			}
    		});
		});

		
		//댓글 등록
		$("#registReplyBtn").on("click", function(event){
			
			var $this = $(this);
			var bno = $this.parents(".reply").find("#bno").val();
			var content = $this.parents(".reply").find("#reContent").val();
			console.log($this);
			console.log(bno);
			console.log("내용"+content);
			console.log(sessionMno);
			$.ajax({
    			type : 'post',
    			url : '/recipe/registReply',
    			headers : {
    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
    				"X-HTTP-Method-Override" : "POST"
    			},
    			dataType : 'json',
    			data : {mno : sessionMno, content : content, bno:bno},
    			success : function() {
    				alert("댓글 등록");
    			}
    		});
			location.reload();
		});
		
		
		//대댓글 등록
		$(document).on("click","#reReplyRegist", function(event){
			
			var $this = $(this);
			console.log($this);
			var bno = $("#bno").val();
			var content = $this.parents("#findHidden").find("#reReContent").val();
			var rrno = $this.parents("#findHidden").find("#rrno").val();
			var reReplyContent = $this.parent("#reReplyContent");
			var str = '';
			console.log($this);
			console.log("bno : " + bno);
			console.log("내용 : " + content);
			console.log("MNO : " + sessionMno);
			console.log("rrno : " + rrno);
			$.ajax({
    			type : 'post',
    			url : '/recipe/registReply',
    			headers : {
    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
    				"X-HTTP-Method-Override" : "POST"
    			},
    			dataType : 'json',
    			data : {mno : sessionMno, content : content, bno:bno, rrno:rrno},
    			success : function(result) {
    				console.log(result);
    				alert("대댓글 등록");
						var reReContent = result.content;
						console.log(reReContent);
						str += "<div class='media-body' id='reContent'>"
						   	   +"<h4 class='media-heading'>" + nickName + "</h4>"
						  	   +"<p>"+content+"</p>"
						   	   +"</div>";
					$this.parent("#replyInput").prepend(str);
    			}
    		});
		});

	
			var formObj = $('#recipe');
			
			console.log(formObj);
			
			$("#list").on("click", function(event){
				console.log(event);
				location.href="list";
			});
			
			$("#modifyBtn").on("click", function(){
				formObj.attr("action", "/recipe/modify");
				formObj.attr("method", "get");
				formObj.submit();
			});
			
			$("#removeBtn").on("click", function(event){
				console.log(event);
				alert("삭제 완료되었습니다.");
				formObj.attr("action", "/recipe/remove");
				formObj.attr("method", "post");
				formObj.submit();
				
			});
			
			//좋아요 등록
			$(document).on("click","#likeBtn", function(event){
				event.preventDefault();
					
				var $this = $(this);
				var bno = $this.val();
				var likeCnt = $("#likeCnt");
				console.log($this);
				console.log(bno);
				console.log($("#mno").val());
				console.log(likeCnt);
				
				$.ajax({
		    		type : 'get',
		    		url : '/recipe/addlikeCnt',
		    		headers : {
		    			"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
		    			"X-HTTP-Method-Override" : "GET"
		    		},
		    		dataType : 'text',
		    		data : {mno:sessionMno, bno:bno},
		    		success : function(result) {    
		    					console.log(result);		
			    					alert("추천해주셔서 감사합니다");
				    				likeCnt.text(result);
				    				$this.attr('disabled',true);
				    				
			    			}
		    		});
			});
			
			
		});
	

	
	</script>
</body>
</html>