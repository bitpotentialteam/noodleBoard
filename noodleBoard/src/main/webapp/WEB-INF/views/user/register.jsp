<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>New Member</title>

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet"
	href="../resources/bootstrap/css/bootstrap.min.css">

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
<link rel="stylesheet"
	href="../resources/plugins/iCheck/square/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<style>
.btn {
	padding: 9px 12px;
}
#noImg span{
	font-size: 3em;
}
#delImgBtn{
	color: darkgray;
	display: none;
}
#picture span.glyphicon-remove-sign{
	float:right;
	margin: 3px 3px;
	font-size: 1.3em;
}


#picture {
	width: 150px;
	height: 150px;
    border-radius: 4px;
	background: #fed136 no-repeat center center;
	background-size: contain; 
	margin: 5px;
	text-align:center;
	color: rgba(138, 109, 59, 0.55);
}
#noImg {
	display: inline-block;
    margin-top: 18%;
}
</style>
</head>
<body class="hold-transition register-page">

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
				<li><a class="page-scroll" href="#">Noodle-Wiki</a></li>
				<li><a class="page-scroll" href="/recipe/list">Recipe</a></li>
				<li><a class="page-scroll" href="/timeline">Community</a></li>
				<li><a class="page-scroll" href="/developer/api">Developer</a></li>
				<li><a class="page-scroll" href="/user/login">LOGIN</a></li>
				<li><a class="page-scroll" href="/user/register">SIGN-UP</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>


	<div class="register-box">
		<div class="register-logo">
			<b>회원정보기입</b>
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">Register a new membership</p>

			<form action="register" method="post" id="register">
				<div class="form-group has-feedback">
					<div class="input-group">
						<input type="text" name="userid" id="userid" class="form-control"
							placeholder="ID" value="" /> <span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-search" id="checkBtn"></span>
							</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>

				<div class="form-group has-feedback">
					<input type="password" id="userpw" name="userpw"
						class="form-control" placeholder="Password" value=""> <span
						class="glyphicon glyphicon-lock form-control-feedback"
						id="fa-check-square-o"></span>
				</div>

				<div class="form-group has-feedback">
					<input type="password" id="userpwRe" name="userpwRe"
						class="form-control" placeholder="비밀번호확인" value=""> <span
						class="glyphicon glyphicon-lock form-control-feedback"
						id="fa-check-square-o"></span>
				</div>
				
				<div class="form-group has-feedback">
					<font name="check" size="2" color="red"></font>
				</div>

				<div class="form-group has-feedback">
					<input type="text" id="username" name="username"
						class="form-control" placeholder="Username" value=""> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>

				<div class="form-group has-feedback">
					<input type="text" id="nickname" name="nickname"
						class="form-control" placeholder="NickName" value=""> <span
						class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="email" id="email" name="email" class="form-control"
						placeholder="Email" value=""> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
	
				<!-- Image and Cuisine Start -->
					<div id="steps">							
				<!-- STEP START -->
					<div class="media form-group" id="step">
				<!-- Thumbnail Start -->
					<div class="media-left media-middle">			
						<div id="picture" class="mainImg" >
							<input type="hidden"value="" name="picture" id="Vpicture">
							<span class='glyphicon glyphicon-remove-sign' id='delImgBtn' aria-hidden='true'></span>
						<div id="noImg">
						<span class="glyphicon glyphicon-open" aria-hidden="true"></span>
						<h5>Drag&Drop<br>HERE!</h5>
						</div>
				<!-- thumbnail을 hidden으로 넘기는 것은  -->
					<input type='hidden' id='imgFileDropped' name='ilist[0].thumbnail'>
						</div>
					</div>
					</div>
				<!-- END -->		
				</div>

				<div class="row">
					<div class="col-xs-8"></div>
					<!-- /.col -->
					<div>
						<button type="submit" id="regBtn" class="btn btn-primary btn-flat">Register</button>
					</div>
					<!-- /.col -->
				</div>
			</form>
			<a href="login" class="text-center">I already have a membership</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->

	<!-- jQuery 2.2.3 -->
	<script src="../resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	
	<script>
		var checkResult = "false";//중복체크 부분 false로 고정 (중복체크안한사람 가입못하게 막는과정)
		$(document).ready(function() {
			$("#regBtn").on("click",function(event) {
				//레지스터할때 중복체크안한사람 가입못하게 막는과정
				event.preventDefault();
				
				var userid = $("#userid").val();
				var userpw = $('#userpw').val();
				//var size = userpw.size();
				console.log(userpw);
					
										
					if (userid == ""|| $('#userid').val() == ""
									|| $('#userpw').val() == ""
									|| $('#username').val() == ""
									|| $('#nickname').val() == ""
									|| $('#email').val() == "") {
										alert("항목을 입력해주세요");
						}
					if(checkResult == "true"){
						$("#register").submit();
					} else if(checkResult =="false"){
						alert("ID중복확인 해주세요");
					}
					//
				});

		// 아이디 중복체크
		$("#checkBtn").on("click", function() {
			console.log("check");
			var userid = $("#userid").val();
			var formData = new FormData();

			formData.append("userid", userid);

			$.ajax({
				url : "idCheck",
				data : formData,
				dataType : 'text',
				type : "post",
				contentType : false,
				processData : false,
				success : function(result) {
					
					if (result != "") {
						alert("중복된 아이디 입니다 !");
						$("#userid").val("");
					} else if (userid == "") {
						alert("아이디를 입력해주세요 !");
					} else {
						alert("사용 가능합니다 !");
						checkResult="true";
					}
				}// end success
			});// end ajax
		});
	});
	</script>
	
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	
	<script>
	//비밀번호 재확인
		$(function() {
			$('#userpw').keyup(function() {
				$('font[name=check]').text('');
			}); //#user_pass.keyup

			$('#userpwRe').keyup(function() {
				if ($('#userpw').val() != $('#userpwRe').val()) {
					$('font[name=check]').text('');
					$('font[name=check]').html("암호틀렸습니다.");
					
				} else {
					$('font[name=check]').text('');
					$('font[name=check]').html("암호맞습니다.");
					
				}
			}); //#chpass.keyup
		});
	</script>
	
<script>
//프로필사진 이미지 드래그앤드랍

//드래그앤드럽할때 새창뜨는거 막기
$(document).on("dragenter dragover drop",window, function(event) {
	event.preventDefault();
});


$(document).on("drop","#picture", function(event) {
	event.preventDefault();
	var $this = $(this);
	
	uploadImage(event, function(data){
		var imgURL = "show?name=" + data ;
		//var imgName = getOriginalName(data);
		alert("이미지가 등록되었습니다");
		$this.css("background-image","url("+imgURL+")");
		$this.children("#imgFileDropped").val(data);
		$this.find("#delImgBtn").show();
		$this.children("#noImg").hide();
		$this.children("#Vpicture").attr("value",data);
	})
	
});



function uploadImage(event,fn){
	var files = event.originalEvent.dataTransfer.files;

	var file = files[0];

	var formData = new FormData();

	if(checkImageType(file.type)){
		
		formData.append("file", file);

		$.ajax({
			url : '../uploadFile',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			method : 'POST',
			success : function(data) {
				console.log(data);
				
				if(checkImageType(data)){
					fn(data);

				}else{
					alert("이미지 파일로 올려주세요!");;
				}
					
			}
			
		});
	}else{
		alert("이미지 파일로 올려주세요!");				
	}
}

$(document).on("click","#delImgBtn", function(event){
	
	var $this = $(this);
	var $thisDiv = $this.parent("#picture");
	console.log($thisDiv);
	
	$thisDiv.css("background-image","");
	$thisDiv.children("#imgFileDropped").removeAttr('value');
	$thisDiv.children("#noImg").show();
	$this.hide("#delImgBtn");
	
});


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
	
};
</script>
</body>
</html>