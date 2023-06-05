<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>::마인드 헬퍼:: | Mind Helper - 당신만을 위한 고민 상담소</title>
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

				<li><a href="survey.jsp"> <span class="icon"> <ion-icon
								name="people-outline"></ion-icon>
					</span> <span class="title">간편 설문 테스트</span>
				</a></li>

				<li><a href="emotion.jsp"> <span class="icon"> <ion-icon
								name="chatbubble-outline"></ion-icon>
					</span> <span class="title">간편 이미지 표정 테스트</span>
				</a></li>

				<li><a href="emotionDiary.jsp"> <span class="icon">
							<ion-icon name="help-outline"></ion-icon>
					</span> <span class="title">감정일기</span>
				</a></li>

				<li><a href="userprofile.jsp"> <span class="icon">
							<ion-icon name="settings-outline"></ion-icon>
					</span> <span class="title">마이페이지</span>
				</a></li>
				<li style="display: none"><a href="Counselorfile.jsp"> <span
						class="icon"> <ion-icon name="settings-outline"></ion-icon>
					</span> <span class="title">상담사 전용 마이페이지</span>
				</a></li>

				<li><a href="#"> <span class="icon"> <ion-icon
								name="log-out-outline"></ion-icon>
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
		</div>
	</div>
	<div id="progress">
		<span id="progress-value"><i class="fa-solid fa-arrow-turn-up"></i></span>
	</div>
	<!-- =========== Scripts =========  -->
	<script src="<c:url value='resources/assets/js/main.js'/>"></script>

	<!-- ====== ionicons ======= -->
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>