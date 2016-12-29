<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Noodle Register</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Theme CSS -->
<link href="../resources/css/clean-blog.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<script type="text/javascript"
	src="../editor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="../resources/js/upload.js" type="text/javascript"></script>
<!-- list CSS -->
<link href="../resources/css/list-demo.css" rel="stylesheet">
<link href="../resources/css/list-style.css" rel="stylesheet">
<!-- hash tags CSS -->
<link href="../resources/css/jquery.hashtags.css" rel="stylesheet">
</head>

<body>

	<style>
#fileDrop {
	width: 80%;
	height: 300px;
	border: 1px dotted pink;
	background-color: lightslategrey;
	margin: auto;
}

small {
	width: 100%;
	height: 200px;
	color: pink;
}
</style>


	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-3">
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
				<li><a class="page-scroll" href="/wiki">Noodle-Wiki</a></li>
				<li><a class="page-scroll" href="/recipe/list">Recipe</a></li>
				<li><a class="page-scroll" href="/timeline">Community</a></li>
				<li><a class="page-scroll" href="/developer/api">Developer</a></li>
				<li><a class="page-scroll" href="/user/login" id="login">LOGIN</a></li>
				<li><a class="page-scroll" href="/user/register" id="register">SING-IN</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header"
		style="background-image: url('../resources/img/noodle.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="page-heading">
					<h1>Regist</h1>
					<hr class="small">

				</div>
			</div>
		</div>
	</div>
	</header>

	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<p>
				<h1>자기만의 특별한 레시피를 올려주세요!</h1>
				</p>

				<form class="input" action="register" method="post">
					
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>메뉴명</label> <input type="text" class="form-control"
								placeholder="Title" name="title" id="title" required
								data-validation-required-message="Please enter title.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<label>설명</label>
					<textarea name="content" id="content" rows="10" cols="100"></textarea>
							<p class="help-block text-danger"></p>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>재료</label> <input type="text" class="form-control"
								placeholder="Material Content" name="materialContent"
								id="materialContent" required
								data-validation-required-message="Please enter material.">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					
					<label>조리순서 (image drag&drop)</label>
					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<div class="form-group">
								<div class="form-control" name="content" id="fileDrop"></div>
								<div class="uploadedList"></div>
								<div id="success"></div>

							</div>
							
						</div>
					</div>
					<div class="-right row">
						<div class="form-group col-md-4">
							<button type="submit" id="registerBtn" class="btn btn-default-right">등 록</button>
							<a href="list"><input type="button"
								class="btn btn-default-right" value="취 소"> </a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<hr>
	<!-- Footer -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<ul class="list-inline text-center">
					<li><a href="#"> <span class="fa-stack fa-lg"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-twitter fa-stack-1x fa-inverse"></i>
						</span>
					</a></li>
					<li><a href="#"> <span class="fa-stack fa-lg"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-facebook fa-stack-1x fa-inverse"></i>
						</span>
					</a></li>
					<li><a href="#"> <span class="fa-stack fa-lg"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-github fa-stack-1x fa-inverse"></i>
						</span>
					</a></li>
				</ul>
				<p class="copyright text-muted">Copyright &copy; Noodle Website
					2017</p>
			</div>
		</div>
	</div>
	</footer>

	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="../resources/jsjqBootstrapValidation.js"></script>
	<script src="../resources/jscontact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="../resources/jsclean-blog.min.js"></script>

	<!-- list JavaScript -->
	<script src="../resources/jslist-jquery.catslider.js"></script>
	<script src="../resources/jslist-modernizr.custom.63321.js"></script>

	<!-- hash tags JavaScript -->
	<script src="../resources/js/jquery.autosize.js" type="text/javascript"></script>
	<script src="../resources/js/jquery.hashtags.js" type="text/javascript"></script>
	`
	<script src="../resources/js/upload.js" type="text/javascript"></script>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	
	<script>
	$("#registerBtn").on("click", function(event){
		alert("등록 완료!")
		formObj.submit();
	
	});
		
	$("#fileDrop").on("dragenter dragover", function(event) {

		event.preventDefault();
	});

	$("#fileDrop").on("drop", function(event) {
		event.preventDefault();
		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];
		console.log(file);

		var formData = new FormData();

		formData.append("file", file);

	
		$.ajax({
			url : '/uploadAjax',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			method : 'POST',
			success : function(data) {
				console.log(data);
				var str="";
				
				if(checkImageType(data)){
					
					str = "<div><div><img src='/displayFile?fileName="+data+"'/></div>"
							+"<input type='text' id='icontent'></div>";
				}else{
					str = "<div>"+getOriginalName(data)+"</div>";
				}
				alert("이미지가 등록되었습니다헤헿");
				$(".uploadedList").append(str);

			}
		});

	});

	$("#regBtn").submit(function(event) {
		event.preventDefault();

	})
	var that = $(this);
	var str = "";

	$(".uploadedList .regBtn").each(
			function(index) {
				str += "<input type = 'hidden' name='files[" + index
						+ "]' value='" + $(this).attr("href") + "'>";

			});

	that.append(str);

	that.get(0).submit();

	
	
	function checkImageType(fileName) {
		var pattern = /jpg|gif|png|jpeg/i;
		return fileName.match(pattern);
	}

	function getFileInfo(fullName) {

		var fileName, imgsrc, getLink;
		var FileLink;

		if (checkImageType(fullName)) {
			console.log(fullName);
			imgsrc = "displayFile?fileName=" + fullName;
			fileLink = fullName.substr(14);
			console.log(imgsrc);
			console.log(fileLink);

			var front = fullName.substr(0, 12);
			var end = fullName.substr(14);

			getLink = "displayFile?fileName=" + front + end;
		} else {
			imgsrc = "../resources/bootstrap/img/file.png";
			fileLink = fullName.substr(12);
			getLink = "displayFile?fileName=" + fullName;
		}
		fileName = fileLink.substr(fileLink.indexOf("_") + 1);

		return {
			fileName : fileName,
			imgsrc : imgsrc,
			getLink : getLink,
			fullName : fullName
		};

	}
	function getOriginalName(fileName) {
		if(checkImageType(fileName)){
			var idx = fileName.indexOf("_")+38;
			return fileName.substr(idx);
		}

		var idx = fileName.indexOf("_") +1 ;
		return fileName.substr(idx);
		
	}
	</script>
</body>
</html>
