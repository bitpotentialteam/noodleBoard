<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../page/header.jsp" flush="false" />

<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="../resources/css/blue.css">

<style>
.navbar-custom  {
	background-color: #222;
}

.header {
	background-color: pink;
}

#content {
	width: 50%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	resize: none;
}

#modContent {
	width: 100%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	background-color: #f8f8f8;
	resize: none;
}

/* The Modal (background) */
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

/* The Close Button */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
/* The Close Button */

/* mod button */

.mod {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.mod:hover,
.mod:focus {
    color: black;
   
    cursor: pointer;
}

div.box{
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

input#content{
	width:100%;
} 

div .replyDiv{
	display : none;
}

button {

   background-color: rgba( 255, 255, 255, 0 );
   border : 0;
   outline : 0;

}

#likeBtn, #replyBtn{

    background-color: rgba( 255, 255, 255, 0 );
    border : 0;
    outline : 0;
	font-size: 1.5em;
	padding: 0px;
	padding-left: 10px;
}

#up{
	width: 100%;	
}

#content{
	width: 100%;
	margin-bottom: 10px;
}

#userBtn {
    display: block;
    position: absolute;
    top: 8px;
    right: 9px;
}

.navbar-toggle {
	color: #fff; 
    border: 1px solid transparent;
    margin-top: 8px;
    margin-right: 15px;
    margin-bottom: 8px;
    padding: 9px 10px;
	
}

#userMenu {
	padding: 8px;
    border: none;
}

.badge.badge-count{
	top: -12px;
    left: -11px;
    background-color: #fed136;
}

.btns div{
	display:inline-block;
}

</style>	
	

	<section class="bg-light-gray">
	<div class="container">
		<div class="row">
		<!-- INPUT START -->
			<div class="box box-solid box-warning">
			<!-- .box-header START -->
				<div class="box-header with-border">
					<div class="user-block">
						<img class="img-circle" src="/user/show?name=${sessionScope.VO.picture}">
						<span class="username">${sessionScope.VO.nickname}</span>   
					</div>
				</div>
			<!-- .box-header END-->
			<!-- .box-body START -->
				<div class="box-body">
					<form id="createForm" action='timeline/regist' method='post'>
						<textarea id="content" name="content" type="text" class="form-control input-md"
							placeholder="안녕하새오 뿌잉뿌잉 'ㅅ'"></textarea>			
							<input type="hidden" id="sessionMno" name="mno" placeholder="mno" value="${sessionScope.VO.mno}">
							<button type="submit" class="pull-right" aria-label="Left Align" id="createBtn">
  					<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> </button>

					</form>
				</div>
			<!-- .box-body END -->				
			</div>
			<!-- INPUT END -->
					
					<!-- data START -->
					<div id="timelinebigbox"> 
					<c:forEach items="${list}" var="vo">
				<div class="box box-solid" id="timelineBox">
						<!-- .box-header START -->
						<div class="box-header with-border">
							<div class="user-block">
								<img class="img-circle" src="/user/show?name=${vo.picture}" alt="User Image">
								<input type="hidden" id="userTno" value="${vo.tno}">
								<span class="username"> ${vo.nickname}</span>
								<span class="description"> <fmt:formatDate value="${vo.regDate}" type="both" dateStyle="medium" timeStyle="short"/> </span>

								
<%-- 								<fmt:formatDate value="${vo.regDate}" pattern="yyyy-MM-dd"/> --%>
 
								
								<div id="userBtn">
<!-- 									<div class="dropdown pull-right text-muted"> -->
<!-- 									  <button class="btn btn-default dropdown-toggle" type="button" id="userMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!-- 									    <span class="glyphicon glyphicon-option-vertical"></span> -->
<!-- 									  </button> -->
<!-- 									  <ul class="dropdown-menu" aria-labelledby="userMenu"> -->
<!-- 									    <li><a href="#">수정</a></li> -->
<!-- 									    <li><a href="#">삭제</a></li> -->
<!-- 									  </ul> -->
<!-- 									</div> -->
																	
								
<%-- 								<button type="button" value="${vo.tno}" id="removeBtn" class="pull-right text-muted">  --%>
<!-- 									<span class="glyphicon glyphicon-trash"></span> -->
<!-- 								</button>            -->
<%-- 								<button type="button" value="${vo.tno}" id="`" class="modify pull-right text-muted">  --%>
<!-- 									<span class="glyphicon glyphicon-erase"></span>								 -->
<!-- 								</button> -->
								</div>
								
									<!-- Modify Modal -->
								<div id="myModal" class="modal">
									<!-- Modal content -->
									<div class="modal-content">
										<div class="modal-header">
											<span class="close" id="closeBtn">&times;</span>
											<h2>수정할 내용을 입력해주세요!</h2>
										</div>
										
										<div class="modal-body">
											<textarea name="content" id="modContent">${vo.content}</textarea>
										</div>
										
										<div class="modal-footer">
											<button type="button" id="modBtn" value="${vo.tno}"><span class="mod glyphicon glyphicon-erase" ></span></button>
										</div>
									</div>
								</div><!-- modal 끝 -->           
							</div>
						</div>
						<!-- .box-header END-->
						<!-- .box-body START -->
						
						<div class="box-body">
							<!-- post text -->
							<p>${vo.content}</p>
							<input type = 'hidden' id='writer' value="${vo.mno}">
							
							 
							<!-- footer buttons -->
							<div class='pull-right btns'>	
								<div>
									<button type='button' id='likeBtn' value='${vo.tno}' class='btn btn-default'>
									<span class='glyphicon glyphicon-thumbs-up'></span>
									<span class='badge badge-count' id='likeCnt'>${vo.likeCnt}</span> </button>
								</div>
								<div>
									<button type='button' id='replyBtn' value='${vo.tno}' class='btn btn-default'>
									<span class='glyphicon glyphicon-comment'></span>
									<span class='badge badge-count' id='replyCnt'>${vo.replyCnt}</span> </button>
								</div>
							</div>
								
						</div>
						<!-- .box-body END -->
						<!-- .box-footer START -->
			
						<!-- reply start -->
						<div class = "replyDiv"">
							<!-- reply list -->
							<div class="box-footer box-comments" id="commentsbox">
							</div>						

						<!-- .box-footer END-->
						<div class="box-footer">
				
								<img class="img-responsive img-circle img-sm"
									src="/user/show?name=${sessionScope.VO.picture}"
									alt="Alt Text">
								<!-- .img-push is used to add margin to elements next to floating images -->
								<div class="img-push">
								<input name="tno" type="hidden" value="${vo.tno}" id="replytno">
								<input name="mno" type="hidden" value="${sessionScope.VO.mno}" id="replymno">
									<input type="text" id="replyContent" class="form-control input-sm" placeholder="댓글은 너의 인성을 보여줍니다">
								</div>
						
							
						</div><!-- /.box-footer -->
						
					</div>	
				</div><!-- big div -->
					</c:forEach>
					</div>
					<!-- data END -->
	
						<form id='form' method='post' action="regist">
							<input type='hidden' name='tno' id='ftno' value='${vo.tno}'>
							<input type='hidden' name='mno' id='fmno' value='${sessionScope.VO.mno}'>
							<input type='hidden' name='content' id='fcontent' value='${vo.content}'>
						</form> 
						<form id='likeform' method='post' action="regist">
							<input type='hidden' name='tno' id='ftno' value='${vo.tno}'>
							<input type='hidden' name='mno' id='fmno' value='${sessionScope.VO.mno}'>
							<input type='hidden' name='likeCnt' id='likeCnt' value='0'>
						</form> 
		</div>
				<button type="button" class="btn btn-default btn-lg" id="up">
								  <span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
								</button>
						

	</div>
	</section>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="https://code.getmdl.io/1.2.1/material.min.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="resources/js/agency.min.js"></script>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	
<script>
		
$( document ).ready(function() {
		
		var sessionMno = $("#createForm").find("#sessionMno").val();
		
		
		$(document).on("click","#createBtn", function(event){
			var content = $("#content").val();
		
				if(content == ""){
					alert("내용을 입력해 주세요!");
				return false;
				}
		});
		

		function user(){

			var timeLineBox = $('#timelinebigbox').children(); 
		
			timeLineBox.each(function(){
				var $this =	 $(this);
				//console.log($this);
	 			var mno = $this.find("#writer").val();
	 			var tno = $this.find("#userTno").val();
	  			var button = '';
		 			
	  			//로그인한 mno = 글쓴 mno 대조
	  			if(sessionMno == mno){
	  				button =   " <div class='dropdown pull-right text-muted'> "
							 + " <button class='btn btn-default dropdown-toggle' "
							 + " type='button' id='userMenu' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>"
							 + " <span class='glyphicon glyphicon-option-vertical'></span> "
							 + " </button> <ul class='dropdown-menu' aria-labelledby='userMenu'> "
							 + " <li value='"+ tno +"'id='modifyBtn'><a href='#' >수정</a></li> "
							 + " <li value='"+ tno +"'id='removeBtn'><a href='#' >삭제</a></li> "
							 + " </ul> </div>";
	  						
	  						
	  						
	  			
	  				$this.find("#userBtn").html(button);	
	 			 }
			});
			
		} user();
			
		//likeBtn 막아버리기...ㅎ
		function disLikeBtn(){
			
			//var tno = $("#timelinebigbox").find("#timelineBox").find("#userTno").val();
			var timeLineBox = $('#timelinebigbox').children(); 
			
			timeLineBox.each(function(){

				var $this =	 $(this);
		 		var tno = $this.find("#userTno").val();
				
				$.ajax({
		    		type : 'get',
		    		url : '/timeline/likeHistory',
		    		headers : {
		    			"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
		    			"X-HTTP-Method-Override" : "GET"
		    		},
		    		dataType : 'text',
		    		data : {tno : tno, mno : sessionMno},
		    		success : function(result) {
				    				
		    					if(result){	
			    					$this.find("#likeBtn").attr('disabled',true);
			    				}else{ return;}
		    					
		    				}
		    		});

			});
								
		} disLikeBtn();
			
			// 좋아요기능 ajax
			
				
	$(document).on("click","#likeBtn", function(event){
		event.preventDefault();
			
		var tno = $(this).val();
		$('#ftno').val(tno);
			
		console.log(tno);
		console.log(sessionMno);
					
		$.ajax({
    		type : 'get',
    		url : '/timeline/addlikeCnt',
    		headers : {
    			"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
    			"X-HTTP-Method-Override" : "GET"
    		},
    		dataType : 'text',
    		data : {tno : tno, mno:sessionMno},
    		success : function() {    				
   						alert("추천완료염");
	    				location.reload();
	    			}
    		});
					
	});
			
	//엔터키 이벤트 막아버리기	
	function KeyPress(e) { 
	    if(window.event.keyCode == 13){ 
		    window.event.KeyCode = 0; 
		} else {
			return;
		}
	};
		
		//맨 위로 올라가기!
	$(document).on("click","#up", function(event) {
				
			$('body').animate(
					{scrollTop: 0},
					200
					);
			return false;
	
		//$("body").scrollTop(0);
	});
		
	var formObj = $("#form");

	$(document).on("click","#removeBtn", function(event) {
		event.preventDefault();
			
		if(!confirm("정말 삭제하시겠습니까?")){
			return;
		}else{

			var tno = $(this).val();
			$('#ftno').val(tno);
			formObj.attr("action", "timeline/delete");
			formObj.submit();
		}
			
	});
		
	$(document).on("click","#modifyBtn", function(event) {
			
		event.preventDefault();
			
		var $modalPop = $(this).parents().find('#myModal'); 
		console.log($(this));
		console.log($modalPop);
		console.log("글수정!!!!!!!!!!!!!!");
		$modalPop.toggle();
			
			
	});
		
	$(document).on("click","#closeBtn", function(event){
		var $modalPop = $(this).parents().find("#myModal"); 
		$modalPop.toggle(); 
	
	});
		
		
	$(document).on("click","#modBtn", function(event){
		event.preventDefault();
			
		var tno = $(this).val();
		$('#ftno').val(tno);
			
		var content = $(this).parents('.modal-content').find('#modContent').val();
		$('#fcontent').val(content);
		
		if(content == ""){
			alert("수정할 내용을 입력해주세여!!");
			return false;
			
		}else{
			
			formObj.attr("action", "timeline/modify");
			formObj.attr("method", "post");
			formObj.submit();
		}
	});
		
		
	$(document).on("click","#replyBtn", function(event){
		event.preventDefault();
		var $this = $(this);		
		var tno = $this.val();
		var replyDiv = $this.parents('#timelineBox').children('.replyDiv');
		var addComment = replyDiv.children('#commentsbox');

		//replyManager.listReply 함수 시작!ㅇㅅㅇ!
		replyManager.listReply (	
				{tno:tno}, 
		    	function (result){			
					addComment.html(result);
					replyDiv.toggle();
				}
		);
		
	});
		
		//댓글 엔터 이벤트입니당
	$(document).on("keypress","#replyContent", function(event){
			
		if (event.which == 13) {/* 13 == enter key@ascii */
			event.preventDefault();
				
			var $this = $(this);
			console.log($this);
			var parentDiv = $this.parent('.img-push');
			//tno mno replycontent 밸류값 채집함.
			var tno = parentDiv.children('#replytno').val();
			var mno = parentDiv.children('#replymno').val();
			var replyContent = $this.val();
			var updateList = parentDiv.parents('.replyDiv').children('.box-comments');
					
			//addreply 실행!ㅇㅅㅇ!
			replyManager.addReply(
					  //얘네가 data임. 위에서 밸류값 채집한 애들 보내는것
				{tno:tno,mno:mno,content:replyContent}, //4.입력값
			    function (result) {
						
					replyManager.listReply(
							{tno:tno},
							function(str){
								updateList.html(str);
							}
					);
					readRcnt();
					$this.val("");
					alert("댓글이 등록되어씀다~!");
				}
			);//addReply
			
		}
	});
		
		
	$(document).on("click","#removeReply", function(event){

		if(confirm("진짜삭제할거에여?")){

			var $this = $(this);
			//tno mno replycontent 밸류값 채집함.
			var parentDiv = $this.parents('.replyDiv');
			
			var trno = $this.val();
			var tno = parentDiv.find("#replytno").val();
			
			var updateList = parentDiv.children('.box-comments') ;
			
			//addreply 실행!ㅇㅅㅇ!
			replyManager.removeReply(
					  //얘네가 data임. 위에서 밸류값 채집한 애들 보내는것
				{trno:trno, tno:tno}, //4.입력값
				function (result) {
					  replyManager.listReply(
							{tno:tno},
							function(str){
						 		updateList.html(str);
						  		readRcnt();
						 	}
					  );
					  alert("댓글이 삭제되었다~!");
			    });
		}else{
			return;
		}
	});
	
	//reply갯수 읽어서 다시 뿌려주는 함수임다
	function readRcnt(){
		
		var timeLineBox = $('#timelinebigbox').children(); 
		
		timeLineBox.each(function(){

			var $this =	 $(this);
 			var tno = $this.find("#userTno").val();
			
	 		$.ajax({
				type : 'get',
				url : '/timeline/readReplyCnt',
				headers : {
						"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
						"X-HTTP-Method-Override" : "get"
						},
				dataType : 'text',
				data : {tno : tno},
				success : function(result) {
						$this.find("#replyCnt").html(result);
				}
			});

		});

	}

	
	//replyManager 만들어놓앗읍니다.
	 var replyManager = (function () {
	      //여기서 Ajax를 날림
	            
	      //얘는 댓글 등록될 때 실행될 함수. 아까 그 3개 data받아와서 fn콜백함수시키는데 콜백은 alert띄우는것!
	      var addReply = function (data, fn) {//1. data와 콜백함수를 넘겨받음
	         		
	    		$.ajax({
	    			type : 'post',
	    			url : '/timeline/registReply',
	    			headers : {
	    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
	    				"X-HTTP-Method-Override" : "POST"
	    			},
	    			dataType : 'text',
	    			data : data,
	    			success : function(result) {
	    					fn(result);
	    			}
	    		});
	    		
	      };
	      
	      //삭제삭제입니당~
	     var removeReply = function (data, fn) {//1. data와 콜백함수를 넘겨받음
	         		
	    		$.ajax({
	    			type : 'post',
	    			url : '/timeline/removeReply',
	    			headers : {
	    				"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
	    				"X-HTTP-Method-Override" : "POST"
	    			},
	    			dataType : 'text',
	    			data : data,
	    			success : function(result) {
	    				fn(result);
	    			}
	    		});
	    		
	      };
	      
	      //얘는 reply 목록 가져오는건데, data는 위에 지정해놓은대로 tno만 받아옴.
	    var listReply = function( data,fn){

	  		$.ajax({
    			type : 'get',
    			url : '/timeline/reply',
    			headers : {
    						"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
    						"X-HTTP-Method-Override" : "GET"
    						},
    			dataType : 'json',
    			data : data,
    			//fn에 result 넣어요 ㅇㅅㅇ그거시 콜백함수.
    			success : function(result) {

					var str = "";

					for(var i = 0; i < result.length; i++){
		
				    	var nick = result[i].nickname;
				    	var content = result[i].content;
				    	var regDate = result[i].regDate;
				    	var trno = result[i].trno;
				    	var picture = result[i].picture;
				    	var mno = result[i].mno;
				    	
				    	var d = new Date();
						//regDate = d.getFullYear()  + "년" + (d.getMonth()+1) + "월" + d.getDate() + "일" +
						//d.getHours() + ":" + d.getMinutes();
				    	
// 				    	console.log("닉" + nick);
// 				    	console.log("날짜" + result[i].regDate);
// 				    	console.log("ㅋㅋㅋㅋㅇㅁㅇㄹ내용 "+result[i].content);
// 				    	console.log("티알엔오" + trno);
// 				    	console.log("픽픽픽쳐" + picture);
// 				    	console.log(result);

				    	
				    	if(sessionMno != mno){

							str += "<div class='box-comment'>"
								+ "<img class='img-circle' "
								+ "src=/user/show?name="+ picture + " alt='User Image'>"
								+ "<div class='comment-text'> "
								+ "<input type='hidden' id='removeMno' value='"+mno+"'>"
								+ "<span class='username'>" + nick + " <span class='text-muted pull-right'>"
								+ regDate + " </span></span> " + content + "</div> </div>" 
				    	}else{
				    		
							str += "<div class='box-comment'>"
								+ "<img class='img-circle' "
								+ "src=/user/show?name="+ picture + " alt='User Image'>"
								+ "<div class='comment-text'> <input type='hidden' id='removeMno' value='"+mno+"'>"
								+ "<span class='username'>" + nick + " <span class='text-muted pull-right'>" 
								+ regDate + " </span></span> " 
								+ content + "<button type='submit' id='removeReply' value='" + trno + "'<span class='glyphicon glyphicon-remove' style='color : black;' ></span></button></div> </div>" 				    		
			    		
				    	}
				    	
					 };
				
					fn(str);

    			}
    						
    		});//ajax end
	  		
	      };
	     
	      return {addReply: addReply, removeReply: removeReply, listReply: listReply};
	      //키가 addReply 값이 함수
	  })();
	
	
	
     //무한스크롤
	//	$(document).ready(function () {
			
			//event.preventDefault();
			
	$(document).scroll(function() {
		var maxHeight = $(document).height();
		var currentScroll = $(window).scrollTop() + $(window).height();
		var $timelinebigbox = $("#timelinebigbox");
	
		function updateTimeLine(result, fn){	
	    	
		    	var nStr = "";
				for(var j = 0; j< result.length; j++){
					var nNickname = result[j].nickname;
					var nContent = result[j].content;
					var nPicture = result[j].picture;
					var nTno = result[j].tno;
					var nLikeCnt = result[j].likeCnt;
					var nReplyCnt = result[j].replyCnt;
					var nMno = result[j].mno;		
					//날짜 형식
					var nRegDate = result[j] .regDate;
					var d = new Date();	
					nRegDate = d.getFullYear()  + "년" + (d.getMonth()+1) + "월" + d.getDate() + "일" +
						d.getHours() + ":" + d.getMinutes();
												
					nStr += " <div class='box box-solid' id='timelineBox'> <!-- .box-header START -->"
								+ " <div class='box-header with-border'> "
								+ " <div class='user-block'> "
								+ " <img class='img-circle' src='/user/show?name="+nPicture+"' alt='User Image'>"
								+ " <input type='hidden' id='userTno' value='"+nTno+"'> <span class='username'> "+nNickname+" </span>"
								+ "	<span class='description'> "+ nRegDate +" </span> "
								+ " <div id='userBtn'> </div> "
								
								+ " <!-- Modify Modal --> <div id='myModal' class='modal'> "
								+ " <!-- Modal content --> <div class='modal-content'> <div class='modal-header'> "
								+ " <span class='close' id='closeBtn'>&times;</span> <h2>수정할 내용을 입력해주세요!</h2> </div> "
								+ " <div class='modal-body'> <textarea name='content' id='modContent'>"+ nContent +"</textarea> </div> "
								
								+ " <div class='modal-footer'> "
								+ " <button type='button' id='modBtn' value='"+nTno+"'><span class='mod glyphicon glyphicon-erase' ></span></button> "
								+ " </div> </div> </div><!-- modal 끝 --> </div> </div> <!-- .box-header END--> <!-- .box-body START --> "
								+ " <div class='box-body'> <!-- post text --> "
								+ "	<p>"+ nContent+"</p> <input type = 'hidden' id='writer' value='"+nMno+"'> "
									
								+ " <!-- footer buttons --> <div class='pull-right btns'> <div> "
								+ " <button type='button' id='likeBtn' value='"+nTno+"' class='btn btn-default'> "
								+ " <span class='glyphicon glyphicon-thumbs-up'></span> "
								+ " <span class='badge badge-count' id='likeCnt'>"+nLikeCnt+"</span> </button> </div> "
								
								+ " <div> <button type='button' id='replyBtn' value='"+nTno+"' class='btn btn-default'> "
								+ " <span class='glyphicon glyphicon-comment'></span> "
								+ " <span class='badge badge-count' id='replyCnt'>"+nReplyCnt+"</span> </button></div></div></div> "
								+ "<!-- .box-body END --> <!-- .box-footer START --> "
								+ "	<!-- reply start --> <div class = 'replyDiv' name='"+nTno+"'> <!-- reply list --> "
								+ "	<div class='box-footer box-comments' id='commentsbox'> </div> "						
						
								+ " <!-- .box-footer END--> <div class='box-footer'> <img class='img-responsive img-circle img-sm' "
								+ " src='/user/show?name="+nPicture+"' alt='Alt Text'> "
								+ " <!-- .img-push is used to add margin to elements next to floating images --> "
								+ " <div class='img-push'> "
								+ " <input name='tno' type='hidden' value='"+nTno+"' id='replytno'> "
								+ " <input name='mno' type='hidden' value='${sessionScope.VO.mno}' id='replymno'> "
								+ " <input type='text' id='replyContent' class='form-control input-sm' placeholder='댓글은 너의 인성을 보여줍니다'> </div>"
								+ " </div><!-- /.box-footer -->	</div> </div><!-- big div --> ";
							
						  
					};
				fn(nStr);
		
	    };
			
			
		
		
		if (maxHeight <= currentScroll + 1) {
		//여기까지임~ 스크롤이 뭐 맨 아래에 닿으면...scroll event 실행ㄱㄱ하면서 밑에 함수들 다 실행함
			var lastTno = $timelinebigbox.children(":last").find("#userTno").val();
			
			console.log(lastTno);
			
				$.ajax({
					type : 'get',
				    url : '/timeline/lastListView',
				    headers : {
				    			"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
				    				"X-HTTP-Method-Override" : "GET"
				    			},
				    dataType : 'json',
				    data : {tno : lastTno},			
				    success : 
				    	function(result) {		
					    	if(result != ""){	
					    		updateTimeLine(result, function(lastStr){
					    			$timelinebigbox.append(lastStr);	
									user();
									disLikeBtn();
					    			
					    		});
					    		
					    	}else{return;}
				    	}
				    });//ajax end
	
							
		} else if($(window).scrollTop() <= 0) {
						
			var tno = $timelinebigbox.children(":first").find("#userTno").val();
			console.log(tno);
																
				$.ajax({
			    	type : 'get',
			    	url : '/timeline/firstListView',
			    	headers : {
			    			"Content-Type" : "application/x-www-form-urlencoded;charset=UTF-8",
			    			"X-HTTP-Method-Override" : "GET"
			    		},
			    	dataType : 'json',
			    	data : { tno : tno},			
			    	success : 
			    		function(result) {		
					    	if(result != ""){	
					    		updateTimeLine(result, function(firstlist){
					    			$timelinebigbox.prepend(firstlist);
					    		});
					    		
					    	}else{return;}
			    		}
			    		
			    }); // ajax end
					
			}
					 //위에 스크롤이벤트 if문 끝임!
	});

					
}); //DOCUMENT end!
	
	
	</script>


</body>

</html>