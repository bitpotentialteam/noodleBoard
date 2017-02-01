<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>My Page</title>
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
<link rel="stylesheet" href="../resources/dist/css/AdminLTE.min.css">
<link href="../resources/css/agency.min.css" rel="stylesheet">

<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="../resources/dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<style>

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
.widget-user-image>img{
	width: 65px;
	height: auto;
	float: left;
}

#imgMenu {
	padding: 0px;
    border: none;
}

.navbar-custom  {
	background-color: #222;
}


.box p {
	margin-bottom: 0.8em;
}

.box {
	padding: 3% 5%;
}

body {
    background: #222;
}
</style>  
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>


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
					<div class="widget-user-header bg-yellow" id="imgBtn">
						<div class="img-circle dropdown">
							<button id="imgMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<img class="img-circle" id="imageDrop" src="show?name=${memberVO.picture}"
								alt="User Avatar">
							</button>
								<ul class="dropdown-menu" aria-labelledby="imgMenu">
									<li id="pictureBtn"><a href="#">프로필사진변경</a></li>
									<li><a href="#">기본이미지로설정</a></li>
									<li><a href="/user/modify">취소</a></li>
								</ul>
						</div>
						<!-- /.widget-user-image -->
						
					</div>
					<form id="form" role="formModify" action="modify" method="post">
						<div class="box-footer no-padding">
						
							<input type="hidden" name="mno" value="${memberVO.mno}">
							<input type="hidden" name="userid" value="${memberVO.userid}">
							<ul class="list-group">
								<li class="list-group-item"><h4>ID</h4>${memberVO.userid}</li>
								<li class="list-group-item"><h4>PASSWORD</h4><input type="password" name="userpw" value="${memberVO.userpw}"></li>
								<li class="list-group-item"><h4>NAME</h4><input type="text" name="username" value="${memberVO.username}"></li>
								<li class="list-group-item"><h4>NICKNAME</h4><input type="text" name="nickname" id="nickname" value="${memberVO.nickname}"><span class="input-group-btn">
				  					<button class="btn btn-default" type="button">
				    				<span class="glyphicon glyphicon-search" id="NcheckBtn"></span>
				  					</button>
			    				</span>
			    				</li>
								<li class="list-group-item"><h4>E-MAIL</h4><input type="text" name="email" value="${memberVO.email}"></li>
							</ul>
					<!-- Modify Modal -->
								<div id="myModal" class="modal">
									<!-- Modal content -->
									<div class="modal-content">
										<div class="modal-header">
											<span class="close" id="closeBtn">&times;</span>
											<h2>프로필사진변경</h2>
										</div>
										<div id="picture">
											<input type="file" id="pictureInput">
											<input type="hidden" name="picture" id="hiddenPicture" value="${memberVO.picture }" >
											<button type="submit" id="PmodifyBtn">확인</button>
										</div>
										
										
									</div>
								</div><!-- modal 끝 --> 
		
						</div>
					</form>
					
					
					
					<div class="box-footer">
					<button type="submit" class="btn btn-warning">MYPAGE</button>
					<button type="submit" class="btn btn-primary">SAVE</button>
				</div>
				</div>
				<!-- /.widget-user -->
			</div>
		</div>
	</div>
</section>

<script>
					$(document).ready(function() {
						var formObj = $("form[role='formModify']");
						console.log(formObj);
						$(".btn-warning").on("click", function() {
							self.location = "/user/myPage";
						});
						$(".btn-primary").on("click", function() {
							formObj.submit();
						});
					});
				</script>

	<!-- jQuery 2.2.3 -->
	<script src="../resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- Slimscroll -->
	<script src="../resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="../resources/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../resources/dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../resources/dist/js/demo.js"></script>
	
	<script>
	
	
	$(document).on("click","#pictureBtn", function(event) {
		
		event.preventDefault();
			
		var $modalPop = $(this).parents().find('#myModal'); 
		console.log("디쓰"+$(this));
		console.log($modalPop);
		console.log("사진수정");
		$modalPop.toggle();		
	});
	
	$(document).on("click","#closeBtn", function(event){
		var $modalPop = $(this).parents("#myModal"); 
		$modalPop.toggle(); 
	
	});
	$("#PmodifyBtn").on("click", function(event) {
        event.preventDefault();

        var $fileInput = $("#pictureInput");
        console.log($fileInput);
        
        var file = $fileInput.get(0).files[0];
        console.log(file);
        var $modalPop = $(this).parents("#myModal"); 
     
        //form tag 추가해버리는거 근데 최근 브라우저에서만 지원함 옛날꺼는 안돼영!

        var formData = new FormData();
        formData.append("file", file);

        console.log(formData);

        $.ajax({
           url : "../uploadAjax",
           data : formData, //기본이 멀티파트  
           dataType : 'text',
           type : "post",
           contentType : false,
           processData : false,
           success : function(data) {
              console.log(data);
              $("#hiddenPicture").val(data);
              //alert(data);
              
           }
        });
        $modalPop.toggle(); 
     });
	
	//닉네임 중복체크
	$("#NcheckBtn").on("click", function() {
		event.preventDefault();
		console.log("check");
		
		var nickname = $("#nickname").val();
		console.log(nickname);
		var formData = new FormData();

		formData.append("nickname", nickname);

		$.ajax({
			url : "checkNick",
			data : formData,
			dataType : 'text',
			type : "post",
			contentType : false,
			processData : false,
			success : function(result) {
				
				if (result != "") {
					alert("중복된 닉네임 입니다 !");
					$("#nickname").val("");
					
				} else if (nickname == "") {
					alert("닉네임을 입력해주세요 !");
					
				} else {
					alert("사용 가능한 닉네임 입니다 !");
					checkResults="true";
				}
			} // end success...
		}); // end ajax...
	}); // end NcheckBtn click...
	


	



	
	</script>
	
</body>
</html>