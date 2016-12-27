<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>타임라인~!</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet"
	href="../resources/vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="../resources/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="../resources/css/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

</head>
<body>

	<style>
.header {
	background-color: pink;
}

#register {
	width: 50%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	resize: none;
}
</style>

	<div class="header">
		<header class="main-header"> <!-- Logo --> <a
			href="../index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>라면</b>먹고갈래?</span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->

		</nav> </header>

	</div>

	<!--  AdminLTE 헤더 템플릿 끝이욥! -->







	<div class="box box-widget">

		<div class="img-push">
			<form>
				<input id="register" type="text" class="form-control input-sm"
					placeholder="Press enter to post comment">
			</form>
		</div>
		
		
		
		
		<ul>
			<c:forEach items="${list}" var="vo">

				<div class="box-header with-border">
					<div class="user-block">
						<img class="img-circle"
							src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user1-128x128.jpg"
							alt="User Image"> <span class="username"><a href="#">
								${vo.nickname} </a></span> <span class="description"> ${vo.regDate}
						</span>
					</div>

				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<!-- post text -->
					<p>${vo.content}</p>

					<!-- Social sharing buttons -->

					<button type="button" class="btn btn-default btn-xs">
						<i class="fa fa-thumbs-o-up"></i> Like
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove">
						<i class="fa fa-times"></i>
					</button>
					<span class="pull-right text-muted">${vo.likeCnt} likes -
						${vo.replyCnt} comments</span>
				</div>
				<!-- /.box-body -->
				<div class="box-footer box-comments">
					<div class="box-comment">
						<!-- User image -->
						<img class="img-circle img-sm"
							src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user5-128x128.jpg"
							alt="User Image">

						<div class="comment-text">
							<span class="username"> 댓글쓴이!!!!!!!!!!!!!! <span
								class="text-muted pull-right"> 댓글쓴애 시간 </span>
							</span>
							<!-- /.username -->
							댓글내용이구여!!!!!!!!!!!!!!!!!!!!!!!!!!
						</div>
						<!-- /.comment-text -->
					</div>
					<!-- /.box-comment -->

				</div>
				<!-- /.box-footer -->
				<div class="box-footer">
					<form action="#" method="post">
						<img class="img-responsive img-circle img-sm"
							src="https://almsaeedstudio.com/themes/AdminLTE/dist/img/user4-128x128.jpg"
							alt="Alt Text">
						<!-- .img-push is used to add margin to elements next to floating images -->
						<div class="img-push">
							<input type="text" class="form-control input-sm"
								placeholder="Press enter to post comment">
						</div>
					</form>

				</div>
				<!-- /.box-footer -->
			</c:forEach>
		</ul>
	</div>



</body>
</html>