<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Eom's ImageGallery</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<!-- list CSS -->
<link href="../resources/css/list-demo.css" rel="stylesheet">    
<link href="../resources/css/list-style.css" rel="stylesheet">    
<!-- hash tags CSS -->
<link href="../resources/css/jquery.hashtags.css" rel="stylesheet">    
</head>
<body>

<!-- 	<form role="form" method="post"> -->
<!-- 		<div class="box-body"> -->
<!-- 			<div class="form-group"> -->
<!-- 				<label for="exampleInputEail1">PASSWORD</label> -->
<!-- 				<input type="text" name='pw' class="form-control" placeholder="Enter Password"> -->
<!-- 			</div> -->
<!-- 			<div class="form-group"> -->
<!-- 				<label for="exampleInputEail1">TITLE</label> -->
<!-- 				<input type="text" name='title' class="form-control" placeholder="Enter Title"> -->
<!-- 			</div> -->
<!-- 			<div class="form-group"> -->
<!-- 				<label for="exampleInputEail1">IMAGE</label> -->
<!-- 				<input type="text" name='image' class="form-control" placeholder="Enter Image"> -->
<!-- 			</div> -->
<!-- 			<div class="form-group"> -->
<!-- 				<label for="exampleInputEail1">CONTENT</label> -->
<!-- 				<input type="text" name='content' class="form-control" placeholder="Enter Content"> -->
<!-- 			</div> -->
<!-- 			<div class="form-group"> -->
<!-- 				<label for="exampleInputEail1">WRITER</label> -->
<!-- 				<input type="text" name='writer' class="form-control" placeholder="Enter Writer"> -->
<!-- 			</div> -->
<!-- 		</div> -->
		
<!-- 		<div class="box-footer"> -->
<!-- 			<button type="submit" class="btn btn-primary">등록</button> -->
<!-- 		</div> -->
<!-- 	</form> -->
	

</head>
<body>

<style>
#fileDrop {
	width:80%;
	height:300px;
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
					<li><a class="page-scroll" href="/user/login" id="login">LOGIN</a></li>
					<li><a class="page-scroll" href="/user/register" id="register">SIGN-UP</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('../resources/img/noodle.jpg')">
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
                <p><h1>자기만의 특별한 레시피를 올려주세요!</h1></p>
                <!-- Contact Form - Enter your email address on line 19 of the mail/contact_me.php file to make this form work. -->
                <!-- WARNING: Some web hosts do not allow emails to be sent through forms to common mail hosts like Gmail or Yahoo. It's recommended that you use a private domain email address! -->
                <!-- NOTE: To use the contact form, your site must be on a live web host with PHP! The form will not work locally! -->
                <form role="form" method="post" name="register" id="contactForm" novalidate>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>메뉴명</label>
                            <input type="text" class="form-control" placeholder="Title" name="title" id="title" required data-validation-required-message="Please enter title.">
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>재료</label>
                            <input type="text" class="form-control" placeholder="Material Content" name="material" id="material" required data-validation-required-message="Please enter material.">
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                            <label>조리순서</label>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                        <div class="form-group">
                    <div class="form-control" id="fileDrop"></div>
                    <div class="uploadedList"></div>

                    
                    </div>
                             <textarea rows="5" class="form-control" placeholder="Message" name="content" id="content" required data-validation-required-message="Please enter a message.">
                            </textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <div id="success"></div>
					<div class="-right row">
                        <div class="form-group col-md-4">
                            <button type="submit" class="btn btn-default-right">등 록</button>
                            <a href="list"><input type="button" class="btn btn-default-right" value="취 소">
                        	</a>
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
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Copyright &copy; Noodle Website 2017</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

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
	<script src="../resources/js/jquery.hashtags.js" type="text/javascript"></script>`
   	<script src="../resources/js/upload.js" type="text/javascript"></script>
<!-- <!--     <script> --> 
<!-- //     $(document).ready(function() { -->
<!-- //         $("#tags").hashtags(); -->
<!-- //      }); -->
    
<!-- <!--     </script> --> 

	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<script>
	
		
		$("#fileDrop").on("dragenter dragover", function(event) {
			event.preventDefault();
		});
		$("#fileDrop").on("drop", function(event){
			event.preventDefault();
			
			var files = event.originalEvent.dataTransfer.files;
			
			var file = files[0];
			
			var formData = new FormData();
			
			formData.append("file", file);
			
			$.ajax({
				  url: '/recipe/uploadAjax',
				  data: formData,
				  dataType:'text',
				  processData: false,
				  contentType: false,
				  type: 'POST',
				  success: function(data){
					
					 
					 var str = "";
					  if(checkImageType(data)){
						  str ="<div><a href=displayFile?fileName="+getImageLink(data)+">"
								  +"<img src='displayFile?fileName="+data+"'/>"
								  +"</a><small data-src="+data+">X</small></div>";
					  }else{
						  str = "<div><a href='displayFile?fileName="+data+"'>" 
								  + getOriginalName(data)+"</a>"
								  +"<small data-src="+data+">X</small></div></div>";
					  }
					  alert(data);
					  
					  $(".uploadedList").append(str);
				  }
				});	
		});
		$(".uploadedList").on("click", "small", function(event){
			
				 var that = $(this);
			
			   $.ajax({
				   url:"deleteFile",
				   type:"post",
				   data: {fileName:$(this).attr("data-src")},
				   dataType:"text",
				   success:function(result){
					   if(result == 'deleted'){
						   that.parent("div").remove();
					   }
				   }
			   });
		});
		

function getOriginalName(fileName){	
	if(checkImageType(fileName)){
		return;
	}
	
	var idx = fileName.indexOf("_") + 1 ;
	return fileName.substr(idx);
	
}
function getImageLink(fileName){
	
	if(!checkImageType(fileName)){
		return;
	}
	var front = fileName.substr(0,12);
	var end = fileName.substr(14);
	
	return front + end;
	
}

	function checkImageType(fileName){
		
		var pattern = /jpg|gif|png|jpeg/i;
		
		return fileName.match(pattern);
		
	}
		
		
	</script>
</body>
</html>
