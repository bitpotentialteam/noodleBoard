<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<link href="../resources/css/user_register.css" rel="stylesheet">
<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="../resources/plugins/iCheck/square/blue.css">

</head>

<body>

<%@ include file="/WEB-INF/views/include/loginSection.jsp" %>

  <section class="bg-light-gray">
	<div class="register-box">
	  
	  <div class="register-logo">
	    <b>회원정보기입</b>
	  </div>

	  <div class="register-box-body">
	    <p class="login-box-msg">Register a new membership</p>

		<form action="register" method="post" id="registerPost">
		  <div class="form-group has-feedback">
			<div class="input-group">
			  <input type="text" name="userid" id="userid" class="form-control" placeholder="ID" value="" /> 
			  <span class="input-group-btn">
			    <button class="btn btn-default" type="button">
				  <span class="glyphicon glyphicon-search" id="checkBtn"></span>
				</button>
			  </span>
			</div>
		  </div>
		  
		  <div class="form-group has-feedback">
			<input type="password" id="userpw" name="userpw" class="form-control" placeholder="Password" value=""> 
			<span class="glyphicon glyphicon-lock form-control-feedback" id="fa-check-square-o"></span>
		  </div>

		  <div class="form-group has-feedback">
		    <input type="password" id="userpwRe" name="userpwRe" class="form-control" placeholder="비밀번호확인" value="">
		    <span class="glyphicon glyphicon-lock form-control-feedback" id="fa-check-square-o"></span>
		  </div>
				
		  <div class="form-group has-feedback">
		    <font name="check" size="2" color="red"></font>
		  </div>

		  <div class="form-group has-feedback">
			<input type="text" id="username" name="username" class="form-control" placeholder="Username" value=""> 
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
		  </div>		
				
		  <div class="form-group has-feedback">
		    
		    <div class="input-group">
			  <input type="text" name=nickname id="nickname" class="form-control" placeholder="NickName" value="" /> 
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button">
				    <span class="glyphicon glyphicon-search" id="NcheckBtn"></span>
				  </button>
			    </span>
			  </div>
			</div>
				
		  <div class="form-group has-feedback">
			<input type="email" id="email" name="email" class="form-control" placeholder="Email" value=""> 
			<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
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
			<div>
			  <button type="submit" id="regBtn" class="btn btn-primary btn-flat">Register</button>
			</div>
		  </div>
	    </form>
	  <a href="login" class="text-center">I already have a membership</a>
	  </div>
	</div>
  <!-- /.register-box -->
  </section>

</body>

<script>
	var checkResult = "false"; //중복체크 부분 false로 고정 (중복체크안한사람 가입못하게 막는과정)
	var checkResults = "false"; 
	var register = $("#registerPost");

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
				if(checkResult == "true" , checkResults == "true"){
					console.log(register);
					
					alert("회원 가입을 축하드립니당 :) 환영환영 ");
					register.submit();
					
				} else if(checkResult =="false"){
					alert("ID 중복확인을 해주세요");
					
				} else if (checkResults == "false"){
					alert("닉네임 중복확인 해주세요");
					}
					
			}); // end regBtn click...

		// 아이디 중복체크
		$("#checkBtn").on("click", function() {
			event.preventDefault();
			console.log("check");
			
			var userid = $("#userid").val();
			var formData = new FormData();

			formData.append("userid", userid);

			$.ajax({
				url : "checkID",
				data : formData,
				dataType : 'text',
				type : "post",
				contentType : false,
				processData : false,
				success : function(result) {
					
					if (result != "") {
						alert("중복된 ID 입니다 !");
						$("#userid").val("");
						
					} else if (userid == "") {
						alert("ID를 입력해주세요 !");
						
					} else {
						alert("사용 가능한 ID입니다 !");
						checkResult="true";
					}
				}// end success...
			});// end ajax...
		}); // end checkBtn click...
		
		
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
		
	}); // end ready...

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
	}); // end password check function...


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
		$this.children("#Vpicture").val(data);
		})
	
	}); // end drop event...



	function uploadImage(event,fn){
		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];

		var formData = new FormData();

		if(checkImageType(file.type)){
		
			formData.append("file", file);

			$.ajax({
				url : '../uploadAjax',
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
						alert("이미지 파일로 올려주세요!");
					}
				}// end success..
			});// end ajax...
			
		}else{
		alert("이미지 파일로 올려주세요!");				
		}
		
	} // end uploadImgae...

	$(document).on("click","#delImgBtn", function(event){
	
		var $this = $(this);
		var $thisDiv = $this.parent("#picture");
		console.log($thisDiv);
	
		$thisDiv.css("background-image","");
		$thisDiv.children("#imgFileDropped").removeAttr('value');
		$thisDiv.children("#noImg").show();
		$this.hide("#delImgBtn");
	
	});// end delImgBtn click...


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

	} // end getFileInfo...
	
	function getOriginalName(fileName) {
		if(checkImageType(fileName)){
			var idx = fileName.indexOf("_")+38;
			return fileName.substr(idx);
		}

		var idx = fileName.indexOf("_") +1 ;
		return fileName.substr(idx);
	
	}; // end getOriginalName...
</script>
</html>