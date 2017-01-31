<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

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
						
							<input type="hidden" name="userid" value="${memberVO.userid}">
							<ul class="list-group">
								<li class="list-group-item"><h4>ID</h4>${memberVO.userid}</li>
								<li class="list-group-item"><h4>PASSWORD</h4><input type="password" name="userpw" value="${memberVO.userpw}"></li>
								<li class="list-group-item"><h4>NAME</h4><input type="text" name="username" value="${memberVO.username}"></li>
								<li class="list-group-item"><h4>NICKNAME</h4><input type="text" name="nickname" id="nickname" value="${memberVO.nickname}">
									<span class="input-group-btn">
										<button class="btn btn-default" type="button">
										<span class="glyphicon glyphicon-search" id="NcheckBtn">중복체크</span>
										</button>
										</span></li>
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
											<input type="hidden" name="picture" id="hiddenPicture" value="" >
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
		var formData = new FormData();
		console.log(nickname);

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
			}// end success
		}); // end ajax
	});

	



	
	</script>
	
</body>
</html>