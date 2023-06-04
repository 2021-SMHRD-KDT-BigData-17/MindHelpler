<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Responsive Admin Dashboard | Korsat X Parmaga</title>
<!-- ======= Styles ====== -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='resources/assets/css/style.css' />" />
</head>

<body>
	<!-- =============== Navigation ================ -->
	<div class="container">
		<div class="navigation">
			<ul>
				<li>
					<div class="nav__logo">
						<img src="resources/assets/img/logo.png" class="nav__img" alt="" />
						<p class="logo_title">
							<span style="color: #9dc3e6">M</span><span style="color: #767171">IND</span><br />
							<span style="color: #ffd966">H</span><span
								style="color: #767171">ELPER</span>
						</p>
					</div>
				</li>

				<li><a href="index.jsp"> <span class="icon"> <ion-icon
								name="home-outline"></ion-icon>
					</span> <span class="title">서비스 소개</span>
				</a></li>

				<li style="display: none"><a href="survey.jsp"> <span
						class="icon"> <ion-icon name="people-outline"></ion-icon>
					</span> <span class="title">설문 진단</span>
				</a></li>

				<li style="display: none"><a href="emotion.jsp"> <span
						class="icon"> <ion-icon name="chatbubble-outline"></ion-icon>
					</span> <span class="title">표정 진단</span>
				</a></li>

				<li style="display: none"><a href="emotionDiary.jsp"> <span
						class="icon"> <ion-icon name="help-outline"></ion-icon>
					</span> <span class="title">감성 일기</span>
				</a></li>

				<li style="display: none"><a href="userprofile.jsp"> <span
						class="icon"> <ion-icon name="settings-outline"></ion-icon>
					</span> <span class="title">마이페이지</span>
				</a></li>
				<li style="display: none"><a href="Counselorfile.jsp"> <span
						class="icon"> <ion-icon name="settings-outline"></ion-icon>
					</span> <span class="title">상담사 전용 마이페이지</span>
				</a></li>
				<li style="display: none"><a href="#"> <span class="icon">
							<ion-icon name="log-in-outline"></ion-icon>
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
			<!-- ================ login ìì ================= -->
			<section id="Auth">
				<div class="login_container">
					<div class="forms-container">
						<div class="signin-signup">
							<form action="" class="sign-in-form">
								<div class="input-field">
									<i class="fas fa-user"></i> <input type="text"
										placeholder="Username" />
								</div>
								<div class="input-field">
									<i class="fas fa-lock"></i> <input type="password"
										placeholder="Password" />
								</div>
								<input type="submit" value="로그인" class="btn solid"
									style="background-color: wheat" />
								<p class="social-text">소셜계정으로 로그인</p>
								<div class="social-media">
									<a href="#" class="social-icon"> <img
										src="resources/assets/img/naver.png" alt="" />
									</a> <a href="#" class="social-icon"> <i class="fab fa-google"></i>
									</a> <a href="#" class="social-icon"> <i
										class="fab fa-facebook-f"></i>
									</a> <a href="#" class="social-icon"> <i class="fab fa-twitter"></i>
									</a>
								</div>
							</form>
							<form action="#" class="sign-up-form">
								<div class="input-field">
									<i class="fas fa-user"></i> <input type="text"
										placeholder="Username" />
								</div>
								<div class="input-field">
									<i class="fas fa-envelope"></i> <input type="email"
										placeholder="Email" />
								</div>
								<div class="input-field">
									<i class="fas fa-lock"></i> <input type="password"
										placeholder="Password" />
								</div>
								<div class="input-field">
									<i class="fa-solid fa-cake-candles"></i> <input type="date" />
								</div>
								<fieldset class="checkbox-group">
									<div class="checkbox">
										<label class="checkbox-wrapper"> <input
											type="checkbox" class="checkbox-input" /> <span
											class="checkbox-tile"> <span class="checkbox-icon">
													<i class="fa-solid fa-person" style="font-size: 30px"></i>
											</span> <span class="checkbox-label" style="margin-top: 5px">남</span>
										</span>
										</label>
									</div>
									<div class="checkbox">
										<label class="checkbox-wrapper"> <input
											type="checkbox" class="checkbox-input" /> <span
											class="checkbox-tile"> <span class="checkbox-icon"
												style="font-size: 20px"> <i
													class="fa-solid fa-person-dress" style="font-size: 30px"></i>
											</span> <span class="checkbox-label" style="margin-top: 5px">여</span>
										</span>
										</label>
									</div>
								</fieldset>
								<input type="submit" class="btn" value="회원가입"
									style="background-color: wheat" />
								<p class="social-text">소셜계정으로 회원가입</p>
								<div class="social-media">
									<a href="#" class="social-icon"> <img
										src="resources/assets/img/naver.png" alt="" />
									</a> <a href="#" class="social-icon"> <i class="fab fa-google"></i>
									</a> <a href="#" class="social-icon"> <i
										class="fab fa-facebook-f"></i>
									</a> <a href="#" class="social-icon"> <i class="fab fa-twitter"></i>
									</a>
								</div>
							</form>
						</div>
					</div>

					<div class="panels-container">
						<div class="panel left-panel">
							<div class="login_content">
								<h3>환영합니다.</h3>
								<p>저희 마인드 헬퍼가 처음이신가요?</p>
								<p>회원가입을 통해 마인드헬퍼만의 분석 서비스를 이용해보세요</p>

								<button class="btn transparent" id="sign-up-btn">
									회원가입</button>
							</div>
						</div>
						<div class="panel right-panel">
							<div class="login_content">
								<h3>환영합니다.</h3>
								<p>이미 저희 마인드 헬퍼의 회원이시라면</p>
								<button class="btn transparent" id="sign-in-btn">
									로그인</button>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
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
