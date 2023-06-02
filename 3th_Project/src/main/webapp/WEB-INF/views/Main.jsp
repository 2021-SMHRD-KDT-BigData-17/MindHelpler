<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>::마인드 헬퍼:: | Mind Helper - 당신만을 위한 고민 상담소</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='resources/assets/css/style.css' />" />
<!--==================== Swiper CSS =======================-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
</head>

<body>
	<!-- =============== Navigation ================ -->
	<div class="container">
		<div class="navigation">
			<ul>
				<li>
					<div class="nav__logo">
						<img src="<c:url value='resources/assets/img/logo.png'/>" class="nav__img" alt="" />
						<p class="logo_title">
							<span style="color: #9dc3e6">M</span><span style="color: #767171">IND</span><br />
							<span style="color: #ffd966">H</span><span style="color: #767171">ELPER</span>
						</p>
					</div>
				</li>

				<li><a href="index.jsp"> <span class="icon"> <ion-icon name="home-outline"></ion-icon></span> 
					<span class="title">서비스 소개</span>
				</a></li>

				<li style="display: none"><a href="${cpath}/survey.jsp"> <span class="icon"> <ion-icon name="people-outline"></ion-icon></span> 
					<span class="title">간편 설문 테스트</span>
				</a></li>

				<li style="display: none"><a href="emotion.jsp"> <span
						class="icon"> <ion-icon name="chatbubble-outline"></ion-icon>
					</span> <span class="title">간편 이미지 표정 테스트</span>
				</a></li>

				<li style="display: none"><a href="emotionDiary.jsp"> <span
						class="icon"> <ion-icon name="help-outline"></ion-icon>
					</span> <span class="title">감정일기</span>
				</a></li>

				<li style="display: none"><a href="userprofile.jsp"> <span
						class="icon"> <ion-icon name="settings-outline"></ion-icon>
					</span> <span class="title">마이페이지</span>
				</a></li>
				<li><a href="login_Counselor.jsp"> <span class="icon">
							<ion-icon name="settings-outline"></ion-icon>
					</span> <span class="title"> 상담사 전용페이지</span>
				</a></li>
				<li><a href="login.jsp"> <span class="icon"> <ion-icon
								name="log-in-outline"></ion-icon>
					</span> <span class="title">Sign in</span>
				</a></li>
				<li style="display: none"><a href="#"> <span class="icon">
							<ion-icon name="log-out-outline"></ion-icon>
					</span> <span class="title">Sign Out</span>
				</a></li>
			</ul>
		</div>

		<!-- ========================= Main ==================== -->
		<div class="main">
			<div class="topbar">
				<div class="user">
					<p>
						<span>Admin</span>님 환영합니다.
					</p>
				</div>
			</div>
			<!-- ================ 서비스 소개 시작============= -->
			<header>
				<div class="section__container header__container">
					<div class="header__image">
						<img src="resources/assets/img/KakaoTalk_20230530_154258849.jpg"
							alt="header" /> <img
							src="resources/assets/img/KakaoTalk_20230530_153755394_10.png"
							alt="header" />
					</div>
					<div class="header__content">
						<div>
							<h1>
								마인드 헬퍼 <br />Emotion analyzer
							</h1>
							<p class="section__subtitle">
								당신의 곁에서 24시간, 365일<br /> 그 누구에게도 털어놓지 못했던 감정, 고민들을 들어드립니다.
							</p>
						</div>
					</div>
				</div>
			</header>

			<section class="section__container destination__container">
				<div class="section__header">
					<div>
						<h2 class="section__title">Mind Helper's Identity</h2>
						<p class="section__subtitle">
							마인드 헬퍼는 간단한 설문을 통해 사용자의 현재의 감정을 분석하고<br /> 사용자만의 고민을 해소하기 위한 공간을
							제공하기 위해 태어났습니다.
						</p>
					</div>
					<div class="i_header__image">
						<img src="resources/assets/img/logo.png" />
					</div>
				</div>
			</section>
			<section class="section__container destination__container">
				<div class="section__header" style="gap: 15rem">
					<div class="i_header__image">
						<img src="resources/assets/img/KakaoTalk_20230531_173824442.png"
							style="width: 500px" />
					</div>
					<div>
						<h2 class="section__title">Mind Helper's Identity</h2>
						<p class="section__subtitle">
							마인드 헬퍼는 간단한 설문을 통해 사용자의 현재의 감정을 분석하고<br /> 사용자만의 고민을 해소하기 위한 공간을
							제공하기 위해 태어났습니다.
						</p>
					</div>
				</div>
			</section>

			<section class="trip">
				<div class="section__container trip__container">
					<h2 class="section__title">Our Service</h2>
					<p class="section__subtitle">마인드 헬퍼만의 서비스로 당신의 마음을 위로해 드리겠습니다.
					</p>
					<div class="trip__grid">
						<div class="trip__card">
							<img src="resources/assets/img/KakaoTalk_20230530_144117237.png"
								class="trip_img" />
							<div class="trip__details">
								<p>간편 설문</p>
								<div class="booking__price">
									<a href="survey.jsp"><button class="book__now">간편
											설문 하러 가기</button></a>
								</div>
							</div>
						</div>
						<div class="trip__card">
							<img src="resources/assets/img/KakaoTalk_20230530_152738969.png"
								class="trip_img" />
							<div class="trip__details">
								<p>이미지 표정 분석</p>
								<div class="booking__price">
									<a href="emotion.jsp">
										<button class="book__now">표정 분석하러 가기</button>
									</a>
								</div>
							</div>
						</div>
						<div class="trip__card">
							<img src="resources/assets/img/KakaoTalk_20230530_144850957.png"
								class="trip_img" />
							<div class="trip__details">
								<p>감성일기</p>
								<div class="booking__price">
									<a href="emotionDiary.jsp">
										<button class="book__now">오늘의 일기 쓰러 가기</button>
									</a>
								</div>
							</div>
						</div>
						<div class="trip__card">
							<img src="resources/assets/img/KakaoTalk_20230530_143456101.png"
								class="trip_img" style="width: 200px; height: 210px" />
							<div class="trip__details">
								<p>상담사와의 채팅</p>
								<div class="booking__price">
									<button class="book__now">채팅하러 가기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<footer class="footer">
				<div class="section__container footer__container">
					<div class="footer__col">
						<h3>
							Mind Helper<span>.</span>
						</h3>
						당신만을 위한 고민상담소, 마인드헬퍼
					</div>
					<div class="footer__col">
						<h4>Support</h4>
						<p>FAQs</p>
						<p>Terms & Conditions</p>
						<p>Privacy Policy</p>
						<p>Contact Us</p>
					</div>
					<div class="footer__col">
						<h4>Address</h4>
						<p>
							<span>Address:</span> 전남 순천시 중앙로 260
						</p>
						<p>
							<span>Email:</span> info@mindhelper.com
						</p>
						<p>
							<span>Phone:</span> +82 02-123-4567
						</p>
					</div>
				</div>
				<div class="footer__bar">Copyright © 2023 Mind Helper. All
					rights reserved.</div>
			</footer>
		</div>
	</div>
	<div id="progress">
		<span id="progress-value"><i class="fa-solid fa-arrow-turn-up"></i></span>
	</div>
	<!-- =========== Scripts =========  -->
	<script src="<c:url value='resources/assets/js/main.js'/>"></script>

	<!-- ====== icons ======= -->
	<script src="https://kit.fontawesome.com/369266d994.js"
		crossorigin="anonymous"></script>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>