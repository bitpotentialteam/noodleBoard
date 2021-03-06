<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../page/header.jsp" flush="false" />

<style>
.navbar-custom {
	background-color: #222;
}

.img-responsive {
	width: 100%;
	max-height: 100%;
	height: 360px;
	
}

/* #regBtn{ */
/* 	position: fixed; */
/* 	bottom: 0; */
/* 	right: 0; */
/* 	width: 200px; */
/* 	height: 70px; */
/* } */

#centerBtn button{
	float: right;
	width: 100px;
	height: 50px;
}

#search{
	float: left; 
	width: 35%; 
	text-align: right;
}

#inputBtn{
	float: left; 
	width: 65%; 
	text-align: left;
}

.text-center{
	margin-bottom: 40px;
}

#keywordInput{
	border: 1px solid #bcbcbc;
  	border-radius: 0px;
  	-webkit-appearance: none;
 	height: 33px;
  	-webkit-box-sizing: border-box;
  	-moz-box-sizing: border-box;
  	box-sizing: border-box;
}

div.portfolio-caption p{
	text-overflow: ellipsis;
    overflow: hidden;
	max-width: 290px;
	white-space: nowrap;
}

div.listBox {
	margin-top:30px;
}


section h3.section-subheading {
	margin-bottom:20px;
}

.input-group{
    margin: auto 25%;
    margin-bottom: 10px;
    z-index: 3 !important;
}

 #like {

    background-color: rgba( 255, 255, 255, 0 );
    color : red;
    border : 0;
    outline : 0;
	font-size: 1.5em;
	padding: 0px;
	padding-left: 10px;
}

.badge.badge-count{
	top: -12px;
    left: -11px;
    background-color: #fed136;
}


</style>

	<section id="portfolio" class="bg-light-gray">
		<div class="container">
			<div class="text-center">
                <h2 class="section-heading">나만의 레시피</h2>
				<h3 class="section-subheading text-muted">나만의 특별한 레시피를 공유하세요</h3>
               
				<div class="input-group">
					<div class="input-group-btn">
						<button type="button" id="btnSearch" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" value='tcw'>전체<span class="caret"></span></button>
					    	<ul class="dropdown-menu">
					         	<li id='tcw'><a href="#">전체</a></li>
					         	<li role="separator" class="divider"></li>
					        	<li id='t'><a href="#">제목</a></li>
					         	<li id='c'><a href="#">내용</a></li>
					         	<li id='w'><a href="#">작성자</a></li>
					         	<li id='tc'><a href="#">제목+내용</a></li>
					         	<li id='cw'><a href="#">내용+작성자</a></li>
					        </ul>
					</div><!-- /btn-group -->
					<input type="text" class="form-control" aria-label="..." id="keywordInput" name="keyword" value="${cri.keyword}">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button" id="searchBtn">검색</button>
					</span>
				</div><!-- /input-group -->
					        <input type="button" class="btn btn-default" id="popular" value="인기순">
					        <input type="button" class="btn btn-default" id="viewCnt" value="조회순">
					        <input type="button" class="btn btn-default" id="newest" value="최신순">
			</div>
		
		<div class="container listBox">
		<!-- list div START -->
			<div class="row">
				<!-- items START -->
				<c:forEach items="${list}" var="boardVO">
					<div class="col-md-4 col-sm-6 portfolio-item" id="listBody">
	<!-- 					<div class="portfolio-hover"> -->
	<!-- 						<div class="portfolio-hover-content"> -->
	<!-- 							<i class="fa fa-plus fa-3x"></i> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
						<input type="hidden" id="bno" name="bno" value="${boardVO.bno}">
							<c:set var="loops" value="true"></c:set>
							<c:forEach items="${ilist}" var="imageVO">
							<c:if test="${boardVO.ino eq imageVO.ino}">
							<c:if test="${loops}">
						<a id="srcView" href="/recipe/view${pageMaker.makeSearch(pageMaker.pageVO.page)}&bno=${boardVO.bno}" value="${boardVO.bno}">
							<img src="/recipe/show?name=${imageVO.thumbnail}" class="img-responsive">
						</a>
							<c:set var="loops" value="false"></c:set>
							</c:if>
							</c:if>
						</c:forEach>
						<div class="portfolio-caption">
							<span class='glyphicon glyphicon-heart-empty' id="like"><span class='badge badge-count' id='likeCnt'>${boardVO.likeCnt}</span>
							<span class='badge badge-count' id='viewCnt'>조회수${boardVO.viewCnt}
							</span></span>
							<p class="text-muted">${boardVO.title}</p>
						
						<c:set var="loop" value="true"></c:set>
						<c:forEach items="${MemberList}" var="memberVO">
							<c:if test="${boardVO.mno eq memberVO.mno}">
							<c:if test="${loop}">
								<h5>${memberVO.nickname}</h5>
								<c:set var="loop" value="false"></c:set>
							</c:if>
							</c:if> 
						</c:forEach>						
						<h6><fmt:formatDate value="${boardVO.regdate}" pattern="yyyy년MM월dd일"/></h6>
						</div>
					</div>
				</c:forEach> <!-- items END -->
			</div> <!-- list div END -->

			<div class="text-center" id="centerBtn">
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
				<button type="submit" id="regBtn" class="btn btn-primary">글쓰기</button>
			</div>
		</div>
	</section>

	<form id="pageForm">
		<input type="hidden" name="page" value="${pageMaker.pageVO.page }">
		<input type="hidden" name="pageUnit" value="${pageMaker.pageVO.pageUnit }"> 
		<input type="hidden" name="searchType" value="${cri.searchType}"> 
		<input type="hidden" name="keyword" value="${cri.keyword}">
		<input type="hidden" name="orderType" value="${cri.orderType}">
	</form>

	<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<span class="copyright">BestNoodle &copy; Noodle Website 2017</span>
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
	
	$(document).ready(function() {
		
		//최신순 함수 빼놓음
		var newest = function(event) {
			self.location = "list"
						+ '${pageMaker.makeQuery(1)}'
						+ "&searchType=" 
						+ $("#btnSearch").val()
						+ "&keyword="
						+ $('#keywordInput').val();
		}
		
		//검색
		$('#searchBtn').on("click", function(event){
			newest();
		});
					
					
		$("#keywordInput").keypress(function(e) { 						
		    if (e.keyCode == 13){
			   newest();
		    }    
		});
					
		//인기순
		$('#popular').on("click", function(event) {
			self.location = "list"
						+ '${pageMaker.makeQuery(1)}'
						+ "&searchType="
						+ $("#btnSearch").val()
						+ "&keyword="
						+ $('#keywordInput').val()
						+ "&orderType="
						+ $('#popular').val();
		});
					
		//조회순
		$('#viewCnt').on("click", function(event) {
			self.location = "list"
						+ '${pageMaker.makeQuery(1)}'
						+ "&searchType="
						+ $("#btnSearch").val()
						+ "&keyword="
						+ $('#keywordInput').val()
						+ "&orderType="
						+ $('#viewCnt').val();
		});
		
		//최신순
		$("#newest").on("click", function(event){
			newest();
		});
					
		//등록버튼
		$('#regBtn').on("click", function(evt) {
			self.location = "register";
		});
					
// 					$(".dropdown-menu li a").click(function(){
// 						  $(this).parents(".input-group").find('#btnSearch').html($(this).text() + ' <span class="caret"></span>');
// 						  $(this).parents(".input-group").find('#btnSearch').val($(this).data('value'));
// 					});

		$(".dropdown-menu li").click(function(){
			var $this = $(this);
			var selText = $this.children("a").text();
			console.log(selText);
			var buttonId = $this.attr("id");
			var searchBtn = $this.parents(".input-group-btn").children('#btnSearch');
			
			searchBtn.html(selText+' <span class="caret"></span>');
			searchBtn.val(buttonId);
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