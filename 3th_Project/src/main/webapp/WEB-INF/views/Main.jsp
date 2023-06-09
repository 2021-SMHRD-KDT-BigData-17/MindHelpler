<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="kr.smhrd.domain.T_USER" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>::마인드 헬퍼:: | Mind Helper - 당신만을 위한 고민 상담소</title>

<!-- ======= Styles ====== -->
<link rel="stylesheet" type="text/css" href="<c:url value='resources/assets/css/style.css' />" />
<!--==================== Swiper CSS =======================-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
</head>

  <body>
  
  <%
  	// 세션 정보 가져오기
  	HttpSession sessionUser = request.getSession();
    T_USER loginUser = (T_USER) sessionUser.getAttribute("loginUser");
  %>
  
    <!-- =============== Navigation ================ -->
    <div class="container">
      <div class="navigation">
        <ul>
          <li>
            <div class="nav__logo">
              <img src="resources/assets/img/logo.png" class="nav__img" alt="" />
              <p class="logo_title">
                <span style="color: #9dc3e6">M</span
                ><span style="color: #767171">IND</span><br /><span
                  style="color: #ffd966"
                  >H</span
                ><span style="color: #767171">ELPER</span>
              </p>
            </div>
          </li>

          <li>
            <a href="Main">
              <span class="icon">
                <ion-icon name="home-outline"></ion-icon>
              </span>
              <span class="title">서비스 소개</span>
            </a>
          </li>

          <li style="display: none">
            <a href="survey">
              <span class="icon">
                <i class="fa-solid fa-list-check"></i>
              </span>
              <span class="title">간편 설문 테스트</span>
            </a>
          </li>

          <li style="display: none">
            <a href="emotion">
              <span class="icon">
                <ion-icon name="happy-outline"></ion-icon>
              </span>
              <span class="title">간편 이미지 표정 테스트</span>
            </a>
          </li>

          <li style="display: none">
            <a href="emotionDiary">
              <span class="icon">
                <ion-icon name="book-outline"></ion-icon>
              </span>
              <span class="title">감정일기</span>
            </a>
          </li>

          <li style="display: none">
            <a href="userprofile">
              <span class="icon">
                <ion-icon name="settings-outline"></ion-icon>
              </span>
              <span class="title">마이페이지</span>
            </a>
          </li>
          <li>
            <a href="loginCounselor">
              <span class="icon">
                <ion-icon name="settings-outline"></ion-icon>
              </span>
              <span class="title"> 상담사 전용페이지</span>
            </a>
          </li>
          <li>
			<li>
			  <a href="${cpath}${loginUser != null ? '/Logout' : '/login'}">
			    <span class="icon">
			      <ion-icon name="log-in-outline"></ion-icon>
			    </span>
			    <span class="title">
			      ${loginUser != null ? 'Sign Out' : 'Sign in'}
			    </span>
			  </a>
			</li>
        </ul>
      </div>

      <!-- ========================= Main ==================== -->
      <div class="main">
        <div class="topbar">
          <div class="user" style="display: none">
            <c:choose>
			    <c:when test="${not empty loginUser}">
			      <p><span>${loginUser.userId}</span>님 환영합니다.</p>
			    </c:when>
			    <c:otherwise>
			      <p>로그인 해주세요.</p>
			    </c:otherwise>
			 </c:choose>
          </div>
        </div>
        <!-- ================ 서비스 소개 시작============= -->
        <header>
          <div class="section__container header__container">
            <div class="header__image">
              <img
                src="resources/assets/img/KakaoTalk_20230602_123733900.gif"
                alt="header"
              />
            </div>
            <div class="header__content">
              <div>
                <h1>마인드 헬퍼 <br />Emotion analyzer</h1>
                <p class="section__subtitle">
			                  당신의 곁에서 24시간, 365일<br />
			                  그 누구에게도 털어놓지 못했던 감정이나 고민들을 들어드립니다.
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
		                마인드 헬퍼는 간단한 설문을 통해 사용자의 현재의 감정을 분석하고
		                사용자만의 고민을 해소하기 위한 공간을 제공하기 위해
		                태어났습니다.
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
              <img
                src="resources/assets/img/KakaoTalk_20230531_173824442.png"
                style="width: 500px"
              />
            </div>
            <div>
              <h2 class="section__title">감정데이터에 기반한 전문 심리상담</h2>
              <p class="section__subtitle">
		                공인된 상담학회에 자격증을 보유한 상담가가<br />
		                분석결과에 맞는 상담을 해드립니다.<br />
		                자신도 몰랐던 감정을 알아보는 시간을 가져보세요.
              </p>
            </div>
          </div>
        </section>

        <section class="trip">
          <div class="section__container trip__container">
            <h2 class="section__title">Our Service</h2>
            <p class="section__subtitle" style="max-width: 1000px">
              	마인드 헬퍼만의 서비스로 당신의 마음을 위로해 드리겠습니다.
            </p>
            <div class="trip__grid">
              <div class="trip__card">
                <img
                  src="resources/assets/img/KakaoTalk_20230530_144117237.png"
                  class="trip_img"
                />
                <div class="trip__details">
                  <p>간편 설문</p>
                  <div class="booking__price">
                  <a href="survey"><button class="book__now">간편 설문 하러 가기</button></a>
<%-- 					<% if (loginUser != null) { %>
						<a href="survey"><button class="book__now">간편 설문 하러 가기</button></a>
					<% } else { %>
					    <a href="login"><button class="book__now">로그인이 필요합니다.</button></a>
					<% } %> --%>
                  </div>
                </div>
              </div>
              <div class="trip__card">
                <img
                  src="resources/assets/img/KakaoTalk_20230530_152738969.png"
                  class="trip_img"
                />
                <div class="trip__details">
                  <p>이미지 표정 분석</p>
                  <div class="booking__price">
                  <a href="emotion"><button class="book__now">표정 분석하러 가기</button></a>
<%--                     <% if (loginUser != null) { %>
						<a href="emotion"><button class="book__now">표정 분석하러 가기</button></a>
					<% } else { %>
					    <a href="login"><button class="book__now">로그인이 필요합니다.</button></a>
					<% } %> --%>
                  </div>
                </div>
              </div>
              <div class="trip__card">
                <img
                  src="resources/assets/img/KakaoTalk_20230530_144850957.png"
                  class="trip_img"
                />
                <div class="trip__details">
                  <p>감성일기</p>
                  <div class="booking__price">
                  <a href="emotion"><button class="book__now">오늘의 일기 쓰러 가기</button></a>
<%--                     <% if (loginUser != null) { %>
						<a href="emotion"><button class="book__now">오늘의 일기 쓰러 가기</button></a>
					<% } else { %>
					    <a href="login"><button class="book__now">로그인이 필요합니다.</button></a>
					<% } %> --%>
                  </div>
                </div>
              </div>
              <div class="trip__card">
                <img
                  src="resources/assets/img/KakaoTalk_20230530_143456101.png"
                  class="trip_img"
                  style="width: 200px; height: 210px"
                />
                <div class="trip__details">
                  <p>상담사와의 채팅</p>
                  <div class="booking__price">
<%--                     <% if (loginUser != null) { %>
						<a href="emotion"><button class="book__now">채팅하러 가기</button></a>
					<% } else { %>
					    <a href="login"><button class="book__now">로그인이 필요합니다.</button></a>
					<% } %> --%>
					<a href="chatbase"><button class="book__now">채팅하러 가기</button></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <footer class="footer">
          <div class="section__container footer__container">
            <div class="footer__col">
              <h3>Mind Helper<span>.</span></h3>
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
              <p><span>Address:</span> 전남 순천시 중앙로 260</p>
              <p><span>Email:</span> info@mindhelper.com</p>
              <p><span>Phone:</span> +82 02-123-4567</p>
            </div>
          </div>
          <div class="footer__bar">
            Copyright © 2023 Mind Helper. All rights reserved.
          </div>
        </footer>
      </div>
    </div>
    <div id="progress">
      <span id="progress-value"><i class="fa-solid fa-arrow-turn-up"></i></span>
    </div>
    
    <!-- =========== Scripts =========  -->
    <script>
      // add hovered class to selected list item
      let list = document.querySelectorAll(".navigation li");

      function activeLink() {
        list.forEach((item) => {
          item.classList.remove("hovered");
        });
        this.classList.add("hovered");
      }

      list.forEach((item) => item.addEventListener("mouseover", activeLink));
      /*=======================================================================*/
      let calcScrollValue = () => {
        let scrollProgress = document.getElementById("progress");
        let progressValue = document.getElementById("progress-value");

        if (!scrollProgress || !progressValue) {
          return; // Exit the function if elements are not found
        }

        let pos = document.documentElement.scrollTop;
        let calcHeight =
          document.documentElement.scrollHeight -
          document.documentElement.clientHeight;
        let scrollValue = Math.round((pos * 100) / calcHeight);

        if (pos > 100) {
          scrollProgress.style.display = "grid";
        } else {
          scrollProgress.style.display = "none";
        }

        scrollProgress.addEventListener("click", () => {
          document.documentElement.scrollTop = 0;
        });

        scrollProgress.style.background = `conic-gradient(#E3B172 ${scrollValue}%, #d7d7d7 ${scrollValue}% 100%)`;
      };

      window.addEventListener("scroll", calcScrollValue);
      window.addEventListener("load", calcScrollValue);

      /* ===================로그인==================================*/

      const sign_in_btn = document.querySelector("#sign-in-btn");
      const sign_up_btn = document.querySelector("#sign-up-btn");
      const container = document.querySelector(".login_container");

      sign_up_btn.addEventListener("click", () => {
        container.classList.add("sign-up-mode");
      });

      sign_in_btn.addEventListener("click", () => {
        container.classList.remove("sign-up-mode");
      });
    </script>

    <!-- ====== icons ======= -->
    <script
      src="https://kit.fontawesome.com/08d807a96c.js"
      crossorigin="anonymous"
    ></script>
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
  </body>
</html>
