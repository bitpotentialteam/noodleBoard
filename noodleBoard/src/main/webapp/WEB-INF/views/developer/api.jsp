<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Ramen API</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
	<style>
	#three .inner p{
		margin-bottom:0.8em;
	}
	
	#two .inner .features p{
		margin-top: 2em;
	}
	
	.groupType{
		margin-bottom: 2em;
	}
	
	.contact{
		margin-left: 4em;
		margin-top: 2em;
		font-style: inherit;
	}

	.tbl_basicInfo .center{
		font-size: small;
		text-align: center;
	}
	.tbl_basicInfo .left{
		font-size: small;
		text-align: left;
		padding-left: 3em;
	}	
	.tbl_requestVari td{
		font-size: small;
		text-align: center;
	}
	
	.tbl_basicInfo th{
		text-align: center;
	}
	.tbl_requestVari th{
		text-align: center;
	}
	
	.orderTypeCheckbox input{
		margin: 1.5em;
	}
	
	</style>
	</head>
	<body>

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro">Introduce</a></li>
							<li><a href="#two">Database</a></li>
							<li><a href="#one">Guide</a></li>
							<li><a href="#three">Using Data</a></li>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up">
						<div class="inner">
							<h1>라면 API</h1>
							<p>라면은 굉장히 맛있습니다. 그러므로 라면에 대한 API가 절실하게 필요했고, 라면에 관한 API가 존재하지 않는다는 것을 깨닳았을 때 이 API의 탄생을 직감하였습니다.
							 그리고 그 탄생을 저희가 이뤄낸 과업입니다. 라면의, 라면을 위한, 라면에 의한  API는 라면에 관한 모든 데이터를 무료로 사용하실 수 있습니다! 사실 뻘소리를 쓴 것이니 자세히 들여다보시지 말아주세요.</p>
							<ul class="actions">
								<li><a href="#three" class="button scrolly">Using data in web</a></li>
							</ul>
						</div>
					</section>

				<!-- Two -->
					<section id="two" class="wrapper style3 fade-up">
						<div class="inner">
							<h2>Database</h2>
							<p>데이터베이스 테이블 소개입니다. 블라블라블라</p>
							<div class="features">
								<section>
									<span class="icon major fa-desktop"></span>
									<h3>Noodles data</h3>
									<p>라면에 대한 기본적인 정보를 제공합니다.</p>
									<p>brand, name, type, noodleType, soupColor, weight, releaseDate</p>
								</section>
								<section>
									<span class="icon major fa-code"></span>
									<h3>Nutritions data</h3>
									<p>라면에 대한 영양 정보를 제공합니다.</p>
									<p>colories, carbonhydrate, protein, fat, staturedFat, transFat, cholesterol, natrium</p>
								</section>
								<section>
									<span class="icon major fa-cog"></span>
									<h3>Materials date</h3>
									<p>라면에 대한 원재료 정보를 제공합니다.</p>
									<p>materials of noodle, materials of powder</p>
								</section>
								<section>
									<span class="icon major fa-lock"></span>
									<h3>Components data</h3>
									<p>라면에 대한 구성 정보를 제공합니다.</p>
									<p>category, component, time</p>
								</section>
								<section>
									<span class="icon major fa-chain"></span>
									<h3>Rank data</h3>
									<p>라면에 대한 인기순위 정보를 제공합니다.</p>
									<p>year, rank</p>
								</section>
								<section>
									<span class="icon major fa-diamond"></span>
									<h3>Recipes data</h3>
									<p>라면에 대한 조리법 정보를 제공합니다.</p>
									<p>water, minutes</p>
								</section>
							</div>
							<ul class="actions">
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights">
						<section>
							<div class="content">
								<div class="inner">
									<h2>Preparations</h2>
									<ul>
										<p>애플리케이션 등록: Ramen open API로 개발하시려면 먼저 'Mypage-developer' 메뉴에서 API 사용 등록을 하셔야 합니다. </p>
										<li>Client ID 확인: 'developer'에서 사용 등록한 Client를 선택하면 Client ID 값을 확인할 수 있습니다.</li>
										<li>Client PW 확인: 'developer'에서 사용 등록한 Client를 선택하면 Client PW 값을 확인할 수 있습니다.</li>
									</ul>
									<ul class="actions">
									</ul>
								</div>
							</div>
							<a href="#" class="image"><img src="../images/pic01.jpg" alt="" data-position="center center" /></a>
						</section>
						<section>
							<div class="content">
								<div class="inner">
									<h2>Basic information of API</h2>
									 <table border="1" class="tbl_basicInfo">
								        <thead>
								        <tr>
								            <th scope="col">메서드</th>
								            <th scope="col">인증</th>
								            <th scope="col">요청 URL</th>
								            <th scope="col">출력 포맷</th>
								            <th scope="col">설명</th>
								        </tr>
								        </thead>
								        <tbody>
								        <tr>
								            <td class="center">GET</td>
								            <td class="center">OAuth</td>
								            <td class="left">https://noodle.com/api/noodles/{name</td>
								            <td class="center">json</td>
								            <td class="center">라면 조회</td>
								        </tr>
								        <tr>
								            <td class="center">GET</td>
								            <td class="center">OAuth</td>
								            <td class="left">https://noodle.com/api/noodles/brands/{brand}</td>
								            <td class="center">json</td>
								            <td class="center">브랜드 조회</td>
								        </tr>
								        <tr>
								            <td class="center">GET</td>
								            <td class="center">OAuth</td>
								            <td class="left">https://noodle.com/api/noodles/rank/{year}</td>
								            <td class="center">json</td>
								            <td class="center">인기순 조회</td>
								        </tr>
								        </tbody>
								    </table>
									<ul class="actions">
									</ul>
								</div>
							</div>
							<a href="#" class="image"><img src="../images/pic02.jpg" alt="" data-position="top center" /></a>
						</section>
						<section>
							<div class="content">
								<div class="inner">
									<h2>Request variable of API</h2>
									<table border="1" class="tbl_requestVari">
								        <thead>
								        <tr>
								            <th scope="col">요청 변수명</th>
								            <th scope="col">타입</th>
								            <th scope="col">필수 여부</th>
								            <th scope="col">설명</th>
								        </tr>
								        </thead>
								        <tbody>
								        <tr>
								            <td class="center">Client ID</td>
								            <td class="center">String</td>
								            <td class="left">Y</td>
								            <td class="center">발급된 Client ID</td>
								        </tr>
								        <tr>
								            <td class="center">Client PW</td>
								            <td class="center">String</td>
								            <td class="left">Y</td>
								            <td class="center">발급된 Client PW</td>
								        </tr>
								        <tr>
								            <td class="center">name</td>
								            <td class="center">String</td>
								            <td class="left">N</td>
								            <td class="center">라면 이름</td>
								        </tr>
								        <tr>
								            <td class="center">brand</td>
								            <td class="center">String</td>
								            <td class="left">N</td>
								            <td class="center">라면 브랜드</td>
								        </tr>
								        <tr>
								            <td class="center">year</td>
								            <td class="center">Integer</td>
								            <td class="left">N</td>
								            <td class="center">년도 (YYYY)</td>
								        </tr>
								        </tbody>
								    </table>
									<ul class="actions">
									</ul>
								</div>
							</div>
							<a href="#" class="image"><img src="../images/pic02.jpg" alt="" data-position="top center" /></a>
						</section>
						<section>
							<div class="content">
								<div class="inner">
									<h2>Example code of API</h2>
									<p>상세한 예제코드 보기, 프로젝트 다운로드를 하실 수 있습니다.</p>
									<ul class="actions">
										<li><a href="https://github.com/bitpotentialteam/noodleAPI/tree/master/src/main/java/org/noodle/example" target="_blank" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
							<a href="#" class="image"><img src="../images/pic05.jpg" alt="" data-position="top center" /></a>
						</section>
					</section>
				
				<!-- Three -->
					<section id="three" class="wrapper style1 fade-up">
						<div class="inner">
							<h2>Demo Search </h2>
							<div class='groupType'>
							<p>search type</p>
								<div class="brandTypeCheckbox">
									<span id='nongsim'><input type="checkbox" name='brandType'><label>농심</label></span>
									<span id='samyang'><input type="checkbox" name='brandType'><label>삼양</label></span>
									<span id='paldo'><input type="checkbox" name='brandType'><label>팔도</label></span>
									<span id='ottogi'><input type="checkbox" name='brandType'><label>오뚜기</label></span>
									<span id='pulmuone'><input type="checkbox" name='brandType'><label>풀무원</label></span>
									<span id='brandEtc'><input type="checkbox" name='brandType'><label>기타</label></span>
								</div>
								<div class="kindsCheckbox">
									<span id='nomal'><input type="checkbox" name='kinds'><label>일반</label></span>
									<span id='jjajang'><input type="checkbox" name='kinds'><label>짜장</label></span>
									<span id='jjamppong'><input type="checkbox" name='kinds'><label>짬뽕</label></span>
									<span id='spicy'><input type="checkbox" name='kinds'><label>비빔면</label></span>
									<span id='kalguksu'><input type="checkbox" name='kinds'><label>칼국수</label></span>
									<span id='typeEtc'><input type="checkbox" name='kinds'><label>기타</label></span>
								</div>
								<div class="noodleTypeCheckbox">
									<span id='dry'><input type="checkbox" name=noodleTypeCheckbox><label>건면</label></span>
									<span id='raw'><input type="checkbox" name=noodleTypeCheckbox><label>생면</label></span>
									<span id='oil'><input type="checkbox" name=noodleTypeCheckbox><label>유탕면</label></span>
								</div>
							</div>
							<div class='groupType'>
								<p>data type</p>
								<div class="outputCheckbox">
									<span id='noodle'><input type="checkbox"><label>noodle</label></span>
									<span id='nutrition'><input type="checkbox"><label>nutrition</label></span>
									<span id='material'><input type="checkbox"><label>material</label></span>
									<span id='component'><input type="checkbox"><label>component</label></span>
									<span id='rank'><input type="checkbox"><label>rank</label></span>
								</div>
							</div>
							<div class='groupType'>
								<p>order type</p>
								<div class="orderTypeCheckbox">
									<span id='popular'><input type="button" value="popular"></span>
									<span id='calories'><input type="button" value="calories"></span>
									<span id='release'><input type="button" value="release"></span>
								</div>
							</div>
							<div class="split style1">
								<section>
									<form method="post" action="#">
										<div class="field half first">
											<label for="name">Search</label>
											<input type="text" name="name" id="name" />
										</div>
										<div class="field half first">
											<label for="submit"><br></label>
											<input type="button" name="submit" id="submit" value="submit"/>
										</div>
										
										<div class="field">
											<label for="message">Output data</label>
											<textarea name="message" id="message" rows="10"></textarea>
										</div>
									</form>
								</section>
								</div>
				

								<section>
									<ul class="contact">
										<li>
											<h3>Address</h3>
											<span>비트캠프 | 서울시 서초구 서초동 1327-15번지 비트아카데미 빌딩 3층 <br />
											 사업자등록번호: 214-85-24928 | (주)비트컴퓨터 서초지점 대표 조현정<br />
											</span>
										</li>
										<li>
											<h3>Email</h3>
											<a href="#"> bit@bitacademy.net</a>
										</li>
										<li>
											<h3>Phone</h3>
											<span>02)3486-9600</span>
										</li>
									</ul>
								</section>
							</div>
						

		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li>TeamPotential</li><li>KOREA</li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="../resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="../resources/assets/js/skel.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../resources/assets/js/main.js"></script>

			<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	
	<script>

	

	$(document).ready(function(){
		$("input").removeAttr("disabled");
	
		
		$(".brandTypeCheckbox span").on("click", function() {
			var input = $(this).children();
			
			if(input.is(":checked")){
				input.prop("checked", false);
				
			}else{
				input.prop("checked", true);
			}
		});
		
		
		$(".kindsCheckbox span").on("click", function() {
			var input = $(this).children();
			
			if(input.is(":checked")){
				input.prop("checked", false);
				
			}else{
				input.prop("checked", true);
			}
		});
		
		
		$(".noodleTypeCheckbox span").on("click", function() {
			var input = $(this).children();
			
			if(input.is(":checked")){
				input.prop("checked", false);
				
			}else{
				input.prop("checked", true);
			}
		});
		
		
		$(".orderTypeCheckbox span").on("click", function(){
			var button = $(this).children();
			console.log(button);
			
		});
		
		/* 데이터 출력 방식 --> foreach문으로 데이터 출력....
		$(".outputCheckbox span").on("click", function() {
			
			var input = $(this).children();
			
			if(input.is(":checked")){
				input.prop("checked", false);
				
			}else{
				input.prop("checked", true);
			}
		});
		*/
		
	}); //end ready...
	
	
	</script>

	</body>
</html>