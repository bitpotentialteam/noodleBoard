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
		<title>라면나라 상화공주</title>
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
								<li><a href="#three" class="button scrolly">Lean more</a></li>
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
								<li><a href="#three" class="button">Learn more</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights">
						<section>
							<a href="#" class="image"><img src="../images/pic01.jpg" alt="" data-position="center center" /></a>
							<div class="content">
								<div class="inner">
									<h2>Search data</h2>
									<p>데이터 검색할 수 있으며 블라블라블라.</p>
									<ul class="actions">
										<li><a href="#three" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<section>
							<a href="#" class="image"><img src="../images/pic02.jpg" alt="" data-position="top center" /></a>
							<div class="content">
								<div class="inner">
									<h2>Filter of data</h2>
									<p>데이터를 필터링할 수 있으며 블라블라블라.</p>
									<ul class="actions">
										<li><a href="#three" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<section>
							<a href="#" class="image"><img src="../resources/images/pic03.jpg" alt="" data-position="25% 25%" /></a>
							<div class="content">
								<div class="inner">
									<h2>Line up data</h2>
									<p>데이터를 정렬할 수 있으며 블라블라블라.</p>
									<ul class="actions">
										<li><a href="#three" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<section>
							<a href="#" class="image"><img src="../resources/images/pic03.jpg" alt="" data-position="25% 25%" /></a>
							<div class="content">
								<div class="inner">
									<h2>Choice data of your taste</h2>
									<p>추출할 데이터를 입맛대로 골라 사용할 수 있으며 블라블라블라.</p>
									<ul class="actions">
										<li><a href="#three" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
					</section>
				
				<!-- Three -->
					<section id="three" class="wrapper style1 fade-up">
						<div class="inner">
							<h2>Demo Search </h2>
							<div class='groupType'>
							<p>search type</p>
								<div class="brandCheckbox">
									<input type="checkbox" id='nongsim'><label>농심</label>
									<input type="checkbox" id='samyang'><label>삼양</label>
									<input type="checkbox" id='paldo'><label>팔도</label>
									<input type="checkbox" id='ottogi'><label>오뚜기</label>
									<input type="checkbox" id='Pulmuone'><label>풀무원</label>
								</div>
								<div class="typeCheckbox">
									<input type="checkbox" id='nomal'><label>일반</label>
									<input type="checkbox" id='jjajang'><label>짜장</label>
									<input type="checkbox" id='jjamppong'><label>짬뽕</label>
									<input type="checkbox" id='spicy'><label>비빔면</label>
									<input type="checkbox" id='kalguksu'><label>칼국수</label>
								</div>
								<div class="noodleCheckbox">
									<input type="checkbox" class="filterCheckbox" id='dry'><label>건면</label>
									<input type="checkbox" class="filterCheckbox" id='raw'><label>생면</label>
									<input type="checkbox" class="filterCheckbox" id='oil'><label>유탕면</label>
								</div>
							</div>
							<div class='groupType'>
								<p>data type</p>
								<div class="outputCheckbox">
									<input type="checkbox" id='nongsim'><label>noodle</label>
									<input type="checkbox" id='samyang'><label>nutrition</label>
									<input type="checkbox" id='paldo'><label>material</label>
									<input type="checkbox" id='ottogi'><label>component</label>
									<input type="checkbox" id='Pulmuone'><label>rank</label>
								</div>
							</div>
							<div class='groupType'>
								<p>order type</p>
								<div class="orderCheckbox">
									<input type="checkbox" id='popular'><label>popular</label>
									<input type="checkbox" id='calories'><label>calories</label>
									<input type="checkbox" id='release'><label>release</label>
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
						<li>와꾸대장 김국희</li><li>NORTH KOREA</li>
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


	<script>
		
	</script>

	</body>
</html>