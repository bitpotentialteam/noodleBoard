<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Noodle Modify</title>

<!-- Bootstrap Core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

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
<link href="../resources/css/fileInput.css" rel="stylesheet">
<script src="../resources/js/upload.js" type="text/javascript"></script>

</head>

<body>

	<style>
<!--
맨 위에 링크 색깔 -->.navbar-custom {
	background-color: #222;
}
#stepImg {
	width: 150px;
	height: 150px;
	border-radius: 4px;
	background: #fed136 no-repeat center center;
	background-size: contain;
	margin: 5px;
	text-align: center;
	color: rgba(138, 109, 59, 0.55);
}
#noImg {
	display: inline-block;
	margin-top: 18%;
}
#noImg span {
	font-size: 3em;
}
#stepImg span.glyphicon-remove-sign {
	float: right;
	margin: 3px 3px;
	font-size: 1.3em;
}
textarea {
	width: 100%;
	height: 125px;
	resize: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
button#addStepBtn {
	width: 100%;
}
#delStepBtn {
	font-size: 2em;
}
#fileUpload {
	margin: 5px;
}
.inputfile+label {
	border-radius: 4px;
	word-spacing: -0.5em;
}
#delImgBtn {
	color: darkgray;
	display: none;
}
.mainImg {
	-webkit-box-shadow: 0px 0px 3px 2px rgba(138, 109, 59, 0.75);
	-moz-box-shadow: 0px 0px 3px 2px rgba(138, 109, 59, 0.75);
	box-shadow: 0px 0px 3px 2px rgba(138, 109, 59, 0.75);
	border: 0.2em solid #d3394c;
}
.subImg {
	border: 1px dotted gray;
}
</style>



<!-- Navigation -->
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand page-scroll" href="../">Noodles.com</a>
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
					<li><a class="page-scroll" id="login" href="<c:url value="/logout" />">LOGOUT</a></li>
					<li><a class="page-scroll" href="/user/myPage" id="register">MYPAGE</a></li>
				</c:if>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!-- Header -->
	<header>
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Welcome To Noodle.com!</div>
				<div class="intro-heading">Noodels Title</div>
				<a href="#recipe" class="page-scroll btn btn-xl">Tell Me More</a>
			</div>
		</div>
	</header>

	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<!-- 헤더 밑의 맨 위 간판부분 -->
				<p>
					<h1>자기만의 특별한 레시피를 올려주세요!</h1>
				</p>
				<!-- form시작 -->
				<form action="/recipe/modify" method="post" id="modify">
				<input type='hidden' id='bno' name='bno' value="${vo.bno}">
					<!-- mno를 hidden으로 숨겨서 register로 넘김 -->
					<div class="row control-group" name="mno">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<input type="hidden" class="form-control" placeholder="Mno"
								name="mno" id="mno" value="${sessionScope.VO.mno}">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<!-- title을 입력해서 넘김 -->
					<div class="row control-group" name="title">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>메뉴명</label> <input type="text" class="form-control"
								placeholder="Title" name="title" id="title" value="${vo.title}">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<!-- content를 입력해서 넘김 -->
					<label>설명</label>
					<textarea name="content" id="content">${vo.content}</textarea>
					<p class="help-block text-danger"></p>
					<!-- 재료를 입력해서 넘김 -->
					<div class="row control-group" id="materialContent">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>재료</label> 
							<input type="text" class="form-control" name="materialContent" id="materialContent"
							value="${vo.materialContent}">
							<p class="help-block text-danger"></p>
						</div> 
					</div>

					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>조리순서 (image drag&drop)</label>
							<!-- 파일업로드 개똥망 날아가게생김 ㅠㅠ 무능력해서 ㅈㅅ.. 모르는건 죄가 맞음 -->
							<!--<div id="fileUpload"> 
 								<input type="file" name="ilist[0].thumbnail" id="imgFile" class="inputfile inputfile-1" data-multiple-caption="{count} files selected" multiple="" accept=".jpg, .png, .jpeg, .gif"> 
 							<label for="imgFile"><span class="glyphicon glyphicon-open" aria-hidden="true"> Choose a file…</span></label>
 							</div> 
							 Image and Cuisine Start -->
							<div id="steps">
								<c:forEach items="${clist}" var="cuisineVO">
								<c:set var="loop" value="true"></c:set>
									<c:forEach items="${ilist}" var="imageVO">
									<c:if test="${imageVO.step == cuisineVO.step}">
									<c:if test="${loop}">

									<!-- STEP START -->
									<div class="media form-group" id="step">
										<!-- Thumbnail Start -->
										<div class="media-left media-middle">
											<div id="stepImg" class="subImg" style="background:url(../user/show?name=${imageVO.thumbnail});
											background-repeat:no-repeat; background-size:contain; background-color:#fed136">
												<span class='glyphicon glyphicon-remove-sign' id='delImgBtn' aria-hidden='true' style="display: inline;"></span>
												<div id="noImg">
<!-- 													<span class="glyphicon glyphicon-open" aria-hidden="true"></span> -->
<!-- 													<h5>Drag&Drop<br>HERE!</h5> -->
												</div>
												<!-- thumbnail을 hidden으로 넘기는 것은  -->
												<input type='hidden' id='imgFileDropped' name='ilist[0].thumbnail' value='${imageVO.thumbnail}'>
											</div>
										</div>
										<!-- RecipeImage와 RecipeCuisine에게 각각 step 전달 -->
										<div class="media-body">
											<!-- Step의 기본값으로 step1을 넣어놓음 -->
											<h4 class="media-heading">STEP ${cuisineVO.step }</h4>
											<!-- Cuisine에 step을 넣기 위해 처음 값 value=1을 줌 -->
											<input type='hidden' id='stepCIndex' name='clist[0].step' value="${cuisineVO.step}">
											<!-- Image에 step을 넣기 위해 처음 값 value=1을 줌 -->
											<input type='hidden' id='stepIIndex' name='ilist[0].step' value="${imageVO.step}">
											<input type='hidden' id='stepIno' name='ilist[0].ino' value="${imageVO.ino}">
											<input type='hidden' id='stepImage' name='ilist[0].image' value="${imageVO.thumbnail}">
											<input type='hidden' id='ino' name='ino' value="${imageVO.ino}">
											<input type='hidden' id='ibno' name='ilist[0].bno' value="${imageVO.bno}">
											<input type='hidden' id='cbno' name='clist[0].bno' value="${cuisineVO.bno}">
											<!-- Step Content에 들어갈 내용  -->
											<textarea id='stepContent' name='clist[0].content'>${cuisineVO.content}</textarea>
										</div>
										<!-- thumbnail에 삭제버튼 -->
										<div class="media-right media-middle">
											<span id="delStepBtn" class="glyphicon glyphicon-remove-circle"></span>
										</div>
									</div>
									

								<c:set var="loop" value="false"></c:set>
								</c:if>
								</c:if>
							</c:forEach>
						</c:forEach>
								<!-- END -->

					</div>

					<!-- 대표 이미지 hidden Input-->
					<div id="mainImg"></div>
					<!-- Thumbnail과 step 늘려주는 +버튼 -->
					<button type="button" class="btn btn-default btn-lg" id="addStepBtn">
						<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
					</button>
					</div>
					</div>
					<div class="right row">
						<!-- 등록, 취소 버튼 -->
						<div class="form-group col-md-4">
							<button type="submit" id="registerBtn" class="btn btn-default-right">저 장</button>
							<a href="list"><input type="button" class="btn btn-default-right" value="취 소"></a>
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
					<li>
						<a href="#"><span class="fa-stack fa-lg"> 
						<i class="fa fa-circle fa-stack-2x"></i> 
						<i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
						</span></a>
					</li>
					<li>
						<a href="#"><span class="fa-stack fa-lg"> 
						<i class="fa fa-circle fa-stack-2x"></i> 
						<i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
						</span></a>
					</li>
					<li>
						<a href="#"><span class="fa-stack fa-lg"> 
							<i class="fa fa-circle fa-stack-2x"></i> 
							<i class="fa fa-github fa-stack-1x fa-inverse"></i>
						</span></a>
					</li>
				</ul>
				<p class="copyright text-muted">Copyright &copy; Noodle Website
					2017</p>
			</div>
		</div>
	</div>
	</footer>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Contact Form JavaScript -->
<script src="../resources/js/jqBootstrapValidation.js"></script>

<!-- Theme JavaScript -->
<script src="../resources/js/agency.min.js"></script>
<script src="../resources/js/fileInput.js"></script>

<script>
$(document).ready(function() {
	
	
	//Steps START
	var $steps = $("#steps");
	var stepCnt = $steps.get(0).childElementCount;
	console.log("stepCnt: " + stepCnt);
	var bno = $("#bno").val();
	
	
	//취소버튼 누르면 전에 보던 view로 넘어감
	$(document).on("click", "#cBtn", function(event) {
		console.log(event);
		self.location = "view?page=${cri.page}&perPageNum=${cri.pageUnit}&bno=${vo.bno}";
	});
	
	function indexOfStep() {
		var $children = $steps.children();
		console.log(stepCnt);
		for (var i = 0; i < stepCnt; i++) {
			var index = i + 1;
			var $child = $children.eq(i);
			$child.find('h4.media-heading').html("STEP " + index);
			$child.find('input#stepCIndex').attr('name', 'clist[' + i + '].step').val(index);
			$child.find('input#stepIIndex').attr('name', 'ilist[' + i + '].step').val(index);
			$child.find('input#imgFileDropped').attr('name', 'ilist[' + i + '].thumbnail');
			$child.find('input#stepImage').attr('name', 'ilist[' + i + '].image');
			$child.find('textarea#stepContent').attr('name', 'clist[' + i + '].content');
			$child.find('input#stepIno').attr('name', 'ilist[' + i + '].ino');
			$child.find('input#ibno').attr('name', 'ilist[' + i + '].bno');
			$child.find('input#cbno').attr('name', 'clist[' + i + '].bno');
		}
		if (stepCnt == 1) {
			$steps.find("#delStepBtn").removeClass("glyphicon-remove-circle").addClass("glyphicon-ok-circle");
		}
	}indexOfStep();
	
	var firstArr = [];
			
	var firstValue = function(){
		var $children = $steps.children();
		firstArr = new Array();
		for (var i = 0; i < stepCnt; i++) {
			var index = i + 1;
			var $child = $children.eq(i);
			var stepIndex = $child.find('input#stepCIndex').val();
			var thumbnail = $child.find('input#imgFileDropped').val();
			var image = $child.find('input#stepImage').val();
			var stepContent = $child.find('textarea#stepContent').val();
			var stepIno = $child.find('input#stepIno').val();
			var bno = $child.find('input#ibno').val();

			firstArr[i] = new Array();
			console.log(firstArr);

			firstArr[i].push(stepIndex);
			firstArr[i].push(thumbnail);
			firstArr[i].push(image);
			firstArr[i].push(stepContent);
			firstArr[i].push(stepIno);
			firstArr[i].push(bno);
			console.log(firstArr[i]);
			
		}
			console.log(firstArr);
	}();
	
	$("#addStepBtn").on("click", function(event) {
		if (stepCnt == 1) {
			$steps.find("#delStepBtn").removeClass("glyphicon-ok-circle").addClass("glyphicon-remove-circle");
		}
		if (stepCnt == 20) {
			return;
		}
		var index = stepCnt;
		stepCnt++;
		
		var stepStr = "<div class='media form-group' id='step'>"
					+ "<div class='media-left media-middle'>"
					+ "<div id='stepImg'  class='subImg'><span class='glyphicon glyphicon-remove-sign' id='delImgBtn' aria-hidden='true'></span><div id='noImg'>"
					+ "<span class='glyphicon glyphicon-open' aria-hidden='true'></span>"
					+ "<h5>Drag&Drop<br>HERE!</h5></div>"
					+ "<input type='hidden' id='imgFileDropped' name='ilist["+index+"].thumbnail'>"
					+ "<input type='hidden' id='stepImage' name='ilist["+index+"].image'>"
					+ "</div></div>"
					+ "<div class='media-body'><h4 class='media-heading'>STEP "
					+ stepCnt
					+ "</h4><input type='hidden' id='stepCIndex' name='clist["+index+"].step' value="+stepCnt+">"
					+ "<input type='hidden' id='stepIIndex' name='ilist["+index+"].step' value="+stepCnt+">"
					+ "<input type='hidden' id='stepIno' name='ilist["+index+"].ino'>"
					+ "<input type='hidden' id='ibno' name='ilist["+index+"].bno' value=" + bno + ">" 
					+ "<input type='hidden' id='cbno' name='clist["+index+"].bno' value=" + bno + ">"
					+ "<textarea id='stepContent' name='clist["+index+"].content'></textarea></div>"
					+ "<div class='media-right media-middle'><span id='delStepBtn' class='glyphicon glyphicon-remove-circle'></span></div></div>";
		$steps.append(stepStr);
	});
	
	$(document).on("click", "#delStepBtn", function(event) {
		if (stepCnt == 1) {
			return;
		}
		var $this = $(this);
		var $tihsDiv = $this.parent().parent(".media");
		$tihsDiv.remove();
		stepCnt--;
		indexOfStep();
		if (stepCnt == 1) {
			$steps.find("#delStepBtn").removeClass("glyphicon-remove-circle").addClass("glyphicon-ok-circle");
		}
	});
	
	$(document).on("click", "#delImgBtn", function(event) {
		var $this = $(this);
		var $thisDiv = $this.parent("#stepImg");
		console.log($thisDiv);
		$thisDiv.css("background-image", "");
		$thisDiv.children("#imgFileDropped").removeAttr('value');
		$thisDiv.children("#noImg").show();
		$this.hide("#delImgBtn");
	});
	
	$(document).on("click", "#stepImg", function(event) {
		var $this = $(this);
		var $stepImg = $this.parents("#steps").contents().find(".mainImg");
		//var $stepImg = document.getElementsByClassName("mainImg");
		console.log("stepImg: " + $stepImg);
		console.log("stepImg.length: " + $stepImg.length);
		for (var i = 0; i < $stepImg.length; i++) {
			$stepImg.removeClass("mainImg").addClass("subImg");
			console.log("add and remove After: " + $stepImg.get(i));
		}
		
		$this.removeClass("subImg").addClass("mainImg");
		var $mainImgDiv = $("#mainImg");
		var mainImgData = "<input type='hidden' name='picture'>";
		$mainImgDiv.append(mainImgData);
	});
						
	//Steps END
	$(document).on("dragenter dragover drop", window, function(event) {
		event.preventDefault();
	});
							
	$(document).on("drop", "#stepImg", function(event) {
		event.preventDefault();
		var $this = $(this);
		
		uploadImage(event, function(data) {
			var imgURL = "/displayFile?fileName="
						+ data;
			//var imgName = getOriginalName(data);
			alert("이미지가 등록되었습니다");
			
			$this.css("background-image", "url(" + imgURL + ")");
			$this.children("#imgFileDropped").val(data);
			$this.find("#delImgBtn").show();
			$this.children("#noImg").hide();
		});
	});
	
	function uploadImage(event, fn) {
		var files = event.originalEvent.dataTransfer.files;
		var file = files[0];
		var formData = new FormData();
		if (checkImageType(file.type)) {
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
					if (checkImageType(data)) {
						fn(data);
					} else {
						alert("이미지 파일로 올려주세요!");
					}
				}
			});
		} else {
			alert("이미지 파일로 올려주세요!");
		}
	}
							
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
		if (checkImageType(fileName)) {
			var idx = fileName.indexOf("_") + 38;
			return fileName.substr(idx);
		}
		var idx = fileName.indexOf("_") + 1;
		return fileName.substr(idx);
	}
	
	
							
	$(document).on("click", "#registerBtn", function(event) {
		
		$("#modify").submit();
		alert("수정 완료!");
		
		
	});
							/* 		$("#regBtn").submit(function(event) {
							 event.preventDefault();
							 });
							
							 var that = $(this);
							 var str = "";
							 $(".uploadedList .regBtn").each(
							 function(index) {
							 str += "<input type = 'hidden' name='files[" + index
							 + "]' value='" + $(this).attr("href") + "'>";
							 });
							 that.append(str);
							 that.get(0).submit(); */
});
</script>
<!-- 
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#steps" ).sortable({placeholder: "ui-state-highlight",helper:'clone'});
    $( "#steps" ).disableSelection();
    
  } );
</script>
-->

</body>
</html>