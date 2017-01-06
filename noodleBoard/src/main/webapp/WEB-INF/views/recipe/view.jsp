<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

#stepImg {
	width: 150px;
	height: 150px;
	border: 1px dotted gray;
	background-color: #fed136;
	background-size: cover;
	margin: auto;
}

#thumbnail{
	background-size: contain;
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
					
					<c:if test='${sessionScope.LOGIN eq success}'>
					<li><a class="page-scroll" href="/user/login" id="login">LOGIN</a></li>
					<li><a class="page-scroll" href="/user/register" id="register">SIGN-UP</a></li>
					</c:if>
					<c:if test='${sessionScope.LOGIN ne success}'>
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
                <div class="intro-lead-in">${memeberVO.nickname}님의 맛있는</div>
                <div class="intro-heading">${vo.title}</div>
                <a href="#recipe" class="page-scroll btn btn-xl">detail</a>
            </div>
        </div>
    </header>
    
<form id=recipe>
<div class="container">
		<div class="row">
	
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
			<input type="hidden" name="bno" value="${vo.bno }">
				<p>
				<h1>title ${vo.title}</h1>
				</p>		
					<div class="row control-group" id="content">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>설명</label>
							<div id="content">
								<p>내용 ${vo.content}</p>
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
								<div class="media form-group" id="step">
									<div class="media-left media-middle">
									
									<c:set var="loop" value="true"></c:set>
									<c:forEach items="${ilist}" var="imageVO">
										<c:if test="${imageVO.step == cuisineVO.step}">
										<c:if test="${loop}">
											<div class="form-control" id="thumbnail" style="background-image:url(../resources/img/noodle/${imageVO.thumbnail}.jpg)"></div>
											<c:set var="loop" value="false"></c:set>
										</c:if>
										</c:if> 
									</c:forEach>
											<!-- 사진 크게 보기 모달 창 넣기-->
									</div>
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
						<div class="form-group col-md-4">
							<button type="submit" id="modifyBtn" class="btn btn-default-right">수 정</button>
							<button type="submit" id="removeBtn" class="btn btn-default-right">삭 제</button>
							<a href="list"><input type="button"
								class="btn btn-default-right" value="목 록"> </a>
						</div>
					</div>
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

	<!-- Footer START -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2016</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
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



	<!-- jQuery 2.2.3 -->
	<script src="../resources/vendor/jquery/jquery-2.2.3.min.js"></script>
	
	<!-- Bootstrap 3.3.6 -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- iCheck -->
	<script src="../resources/vendor/jquery/icheck.min.js"></script>
	
	<!-- Theme JavaScript -->
    <script src="../resources/js/agency.min.js"></script>
	
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});

		$(document).ready(function(){
			var formObj = $('#recipe');
			
			console.log(formObj);
			
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
		});
	</script>
</body>
</html>