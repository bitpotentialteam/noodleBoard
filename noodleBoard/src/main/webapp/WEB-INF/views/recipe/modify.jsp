<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<jsp:include page="../page/header.jsp" flush="false" />

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

	<style>
<!--
맨 위에 링크 색깔 -->.navbar-custom {
	background-color: #222;
}

.navbar-toggle {
	color: #fff; 
    border: 1px solid transparent;
    margin-top: 8px;
    margin-right: 15px;
    margin-bottom: 8px;
    padding: 9px 10px;
 }
 
 .navbar-custom  {
	background-color: #222;
}

.header {
	background-color: pink;
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

<body>


	
	<!-- Main Content -->
<section>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<!-- 헤더 밑의 맨 위 간판부분 -->
				<!-- form시작 -->
				<form action="modify" method="post" id='register'>
					<!-- mno를 hidden으로 숨겨서 register로 넘김 -->
					<div class="row control-group" name="mno">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<input type="hidden" name="mno" value="${memberVO.mno}">
							<input type="hidden" name="bno" value="${vo.bno}">
							<p class="help-block text-danger"></p>
						</div>
					</div>
					<!-- title을 입력해서 넘김 -->
					<div class="row control-group" name="title">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
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
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>재료</label> <input type="text" class="form-control"
								name="materialContent" id="materialContent"
								value="${vo.materialContent}">
							<p class="help-block text-danger"></p>
						</div>
					</div>

					<div class="row control-group">
						<div
							class="form-group col-xs-12 floating-label-form-group controls">
							<label>조리순서 (image drag&drop)</label>
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
														background-repeat:no-repeat; background-size:contain">
															<span class='glyphicon glyphicon-remove-sign'
																id='delImgBtn' aria-hidden='true'></span>
																<input type="hidden" value="${imageVO.ino}">
															<div id="noImg">
																
															</div>
															<!-- thumbnail을 hidden으로 넘기는 것은  -->
															<input type='hidden' id='imgFileDropped'
																name='ilist[0].thumbnail'>
<!-- 															<input type='hidden' id='ino' name='ilist[0].ino'> -->
														</div>
													</div>
													<!-- RecipeImage와 RecipeCuisine에게 각각 step 전달 -->
													<div class="media-body">
														<!-- Step의 기본값으로 step1을 넣어놓음 -->
														<h4 class="media-heading">STEP ${cuisineVO.step }</h4>
														<!-- Cuisine에 step을 넣기 위해 처음 값 value=1을 줌 -->
														<input type='hidden' id='stepCIndex' name='clist[0].step'
															value="${cuisineVO.step}">
														<!-- Image에 step을 넣기 위해 처음 값 value=1을 줌 -->
														<input type='hidden' id='stepIIndex' name='ilist[0].step'
															value="${imageVO.step}">
														<!-- Step Content에 들어갈 내용  -->
														<textarea id='stepContent' name='clist[0].content'>${cuisineVO.content}</textarea>
													</div>
													<!-- thumbnail에 삭제버튼 -->
													<div class="media-right media-middle">
														<span id="delStepBtn"
															class="glyphicon glyphicon-ok-circle"></span>
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
							<button type="button" class="btn btn-default btn-lg"
								id="addStepBtn">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
							</button>
						</div>
					</div>
					<div class="right row">
						<!-- 등록, 취소 버튼 -->
						<div class="form-group col-md-4">
							<button type="submit" id="registerBtn"
								class="btn btn-default-right">저 장</button>
							<a href="list"><input type="button"
								class="btn btn-default-right" value="취 소"></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
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
				<p class="copyright text-muted">Copyright &copy; Noodle Website 2017</p>
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
	<script src="../resources/js/jqBootstrapValidation.js"></script>

	<!-- Theme JavaScript -->
	<script src="../resources/js/agency.min.js"></script>
	<script src="../resources/js/fileInput.js"></script>

	<script>
		$(document)
				.ready(
						function() {

							//취소버튼 누르면 전에 보던 view로 넘어감
							$(document)
									.on(
											"click",
											"#cBtn",
											function(event) {
												console.log(event);
												self.location = "view?page=${cri.page}&perPageNum=${cri.pageUnit}&bno=${vo.bno}";
											});

							//Steps START
							var $steps = $("#steps");
							var stepCnt = $steps.get(0).childElementCount;
							console.log("stepCnt: " + stepCnt);

							function indexOfStep() {
								var $children = $steps.children();
								console.log(stepCnt);
								for (var i = 0; i < stepCnt; i++) {
									var index = i + 1;
									var $child = $children.eq(i);
									$child.find('h4.media-heading').html(
											"STEP " + index);
									$child.find('input#stepCIndex').attr(
											'name', 'clist[' + i + '].step')
											.val(index);
									$child.find('input#stepIIndex').attr(
											'name', 'ilist[' + i + '].step')
											.val(index);
									$child.find('input.imgFileDropped').attr(
											'name',
											'ilist[' + i + '].thumbnail');
									$child.find('input#ino').attr(
											'name',
											'ilist[' + i + '].ino');
									$child.find('textarea#stepContent').attr(
											'name', 'clist[' + i + '].content');
								}
							}
							;

							$("#addStepBtn")
									.on(
											"click",
											function(event) {

												if (stepCnt == 1) {
													$steps
															.find("#delStepBtn")
															.removeClass(
																	"glyphicon-ok-circle")
															.addClass(
																	"glyphicon-remove-circle");
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
														+ "</div></div>"
														+ "<div class='media-body'><h4 class='media-heading'>STEP "
														+ stepCnt
														+ "</h4><input type='hidden' id='stepCIndex' name='clist["+index+"].step' value="+stepCnt+">"
														+ "<input type='hidden' id='stepIIndex' name='ilist["+index+"].step' value="+stepCnt+">"
														+ "<textarea id='stepContent' name='clist["+index+"].content'></textarea></div>"
														+ "<div class='media-right media-middle'><span id='delStepBtn' class='glyphicon glyphicon-remove-circle'></span></div></div>";

												$steps.append(stepStr);

											});

							$(document)
									.on(
											"click",
											"#delStepBtn",
											function(event) {
												if (stepCnt == 1) {
													return;
												}

												var $this = $(this);
												var $tihsDiv = $this.parent()
														.parent(".media");

												$tihsDiv.remove();
												stepCnt--;
												indexOfStep();

												if (stepCnt == 1) {
													$steps
															.find("#delStepBtn")
															.removeClass(
																	"glyphicon-remove-circle")
															.addClass(
																	"glyphicon-ok-circle");
												}

											});

							$(document)
									.on(
											"click",
											"#delImgBtn",
											function(event) {

												var $this = $(this);
												var $thisDiv = $this
														.parent("#stepImg");
												console.log($thisDiv);

												$thisDiv.css(
														"background-image", "");
												$thisDiv.children(
														"#imgFileDropped")
														.removeAttr('value');
												$thisDiv.children("#noImg")
														.show();
												$this.hide("#delImgBtn");

											});

							$(document)
									.on(
											"click",
											"#stepImg",
											function(event) {

												var $this = $(this);
												var $stepImg = $this.parents(
														"#steps").contents()
														.find(".mainImg");
												//var $stepImg = document.getElementsByClassName("mainImg");

												console.log("stepImg: "
														+ $stepImg);
												console.log("stepImg.length: "
														+ $stepImg.length);

												for (var i = 0; i < $stepImg.length; i++) {
													$stepImg.removeClass(
															"mainImg")
															.addClass("subImg");
													console
															.log("add and remove After: "
																	+ $stepImg
																			.get(i));
												}

												$this.removeClass("subImg")
														.addClass("mainImg");

												var $mainImgDiv = $("#mainImg");

												var mainImgData = "<input type='hidden' name='picture'>"

												$mainImgDiv.append(mainImgData);

											});

							//Steps END

							$(document).on("dragenter dragover drop", window,
									function(event) {
										event.preventDefault();
									});

							$(document)
									.on(
											"drop",
											"#stepImg",
											function(event) {
												event.preventDefault();
												var $this = $(this);

												uploadImage(event, function(data){
													var imgURL = "/displayFile?fileName="+data;
													//var imgName = getOriginalName(data);
													alert("이미지가 등록되었습니다");
													$this.css("background-image","url("+imgURL+")");
													$this.children("#imgFileDropped").val(data);
													$this.find("#delImgBtn").show();
													$this.children("#noImg").hide();
													
												})

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
												;
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

									getLink = "displayFile?fileName=" + front
											+ end;
								} else {
									imgsrc = "../resources/bootstrap/img/file.png";
									fileLink = fullName.substr(12);
									getLink = "displayFile?fileName="
											+ fullName;
								}
								fileName = fileLink.substr(fileLink
										.indexOf("_") + 1);

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

							$(document).on("click", "registerBtn",
									function(event) {
										$("#register").submit();
										alert("등록 완료!");

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
