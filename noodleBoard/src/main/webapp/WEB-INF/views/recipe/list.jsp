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

<style>
.navbar-custom {
	background-color: #222;
}

.img-responsive {
	width: 100%;
	max-height: 100%;
	height: 360px;
}

#regBtn{
	position: absolute;
	left: 300px;
}

.box{
	
}
</style>

</head>
<body id="page-top" class="index">

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
			<a class="navbar-brand page-scroll" href="#page-top">Noodles.com</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="#page-top"></a></li>
				<li><a class="page-scroll" href="/wiki">NOODLE-WIKI</a></li>
				<li><a class="page-scroll" href="/recipe/list">RECIPE</a></li>
				<li><a class="page-scroll" href="/timeline">COMMUNITY</a></li>
				<li><a class="page-scroll" href="/developer/api">DEVELOPER</a>
				</li>
				<li><a class="page-scroll" href="/user/login">LOGIN</a></li>
				<li><a class="page-scroll" href="/user/register">SIGN-UP</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<section id="portfolio" class="bg-light-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">나만의 레시피</h2>
				<h3 class="section-subheading text-muted">나만의 특별한 레시피를 공유하세요</h3>
			</div>
		</div>

		<!-- list div START -->
		<div class="row">
			<!-- items START -->
			<c:forEach items="${list}" var="boardVO">
				<div class="col-md-4 col-sm-6 portfolio-item">
<!-- 					<div class="portfolio-hover"> -->
<!-- 						<div class="portfolio-hover-content"> -->
<!-- 							<i class="fa fa-plus fa-3x"></i> -->
<!-- 						</div> -->
<!-- 					</div> -->
					<a
						href="/recipe/view${pageMaker.makeSearch(pageMaker.pageVO.page)}&bno=${boardVO.bno}">
						<img src="../resources/img/noodle/${boardVO.ino}.jpg"
						class="img-responsive" alt="image of ${boardVO.title}">
					</a>
					<div class="portfolio-caption">
						<p class="text-muted">${boardVO.content}</p>
						<h5>${boardVO.nickname}</h5>
						<h6>${boardVO.regdate}</h6>
					</div>
				</div>
			</c:forEach>
			<!-- items END -->
		</div>
		<!-- list div END -->

		<div class="text-center">
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li><a href="${pageMaker.makeQuery(pageMaker.startPage-1) }">이전</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
					var="idx">
					<li
						<c:out value="${pageMaker.pageVO.page == idx? 'class = active':''}"/>>
						<a href="${pageMaker.makeQuery(idx)}">${idx}</a>
					</li>
				</c:forEach>
				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a href="${pageMaker.makeQuery(pageMaker.endPage+1)}">다음</a></li>
				</c:if>
			</ul>
		</div>

	</div>

			<div class="form-group col-md-12" id="regBtn">
			
			<button type="submit" id="regBtn" class="btn btn-default-right">글쓰기</button>
			


	<div class='box'>
		<div class="box-header with-border">
			<h3 class="box-title">Search</h3>
		</div>


		<div class='box-body'>

	</div>
			<select name="searchType">

				<option value="t"
					<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
					라면</option>
				<option value="c"
					<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
					내용</option>
				<option value="w"
					<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
					작성자</option>
				<option value="tc"
					<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
					라면+내용</option>
				<option value="cw"
					<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
					내용+작성자</option>
				<option value="tcw"
					<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
					라면+내용+작성자</option>
			</select>

			<p></p>
			<input type="text" name='keyword' id="keywordInput"
				value='${cri.keyword}'>
			<p></p>

			<button id="searchBtn" class="btn btn-primary">검색</button>
		</div>
	</div>
	</section>

	<form id="pageForm">
		<input type="hidden" name="page" value="${pageMaker.pageVO.page }">
		<input type="hidden" name="pageUnit"
			value="${pageMaker.pageVO.pageUnit }"> <input type="hidden"
			name="searchType" value="${cri.searchType}"> <input
			type="hidden" name="keyword" value="${cri.keyword}">
	</form>

	<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<span class="copyright">BestNoodle &copy; Noodle Website 2016</span>
			</div>
			<div class="col-md-4">
				<ul class="list-inline social-buttons">
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				</ul>
			</div>
			<div class="col-md-4">
				<ul class="list-inline quicklinks">
					<li><a href="#">top</a></li>
				</ul>
			</div>
		</div>
	</div>
	</footer>

	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script>
		$(document).ready(
				function() {
					$('#searchBtn').on(
							"click",
							function(event) {
								self.location = "list"
										+ '${pageMaker.makeQuery(1)}'
										+ "&searchType="
										+ $("select option:selected").val()
										+ "&keyword="
										+ $('#keywordInput').val();
							});
					$('#regBtn').on("click", function(evt) {
						self.location = "register";
					});
				});
	</script>

	<!-- jQuery -->
	<script src="../resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="../resources/js/jqBootstrapValidation.js"></script>
	<script src="../resources/js/contact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="../resources/js/agency.min.js"></script>

</body>
</html>