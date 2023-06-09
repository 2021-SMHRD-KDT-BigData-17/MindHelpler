	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

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
                <ion-icon name="people-outline"></ion-icon>
              </span>
              <span class="title">설문 진단</span>
            </a>
          </li>

          <li style="display: none">
            <a href="emotion">
              <span class="icon">
                <ion-icon name="chatbubble-outline"></ion-icon>
              </span>
              <span class="title">표정 진단</span>
            </a>
          </li>

          <li style="display: none">
            <a href="emotionDiary">
              <span class="icon">
                <ion-icon name="help-outline"></ion-icon>
              </span>
              <span class="title">감성 일기</span>
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
          <li style="display: none">
            <a href="Counselorfile">
              <span class="icon">
                <ion-icon name="settings-outline"></ion-icon>
              </span>
              <span class="title"> 상담사 전용 마이페이지</span>
            </a>
          </li>
          <li style="display: none">
            <a href="#">
              <span class="icon">
                <ion-icon name="log-in-outline"></ion-icon>
              </span>
              <span class="title">Sign in</span>
            </a>
          </li>
          <li style="display: none">
            <a href="#">
              <span class="icon">
                <ion-icon name="log-out-outline"></ion-icon>
              </span>
              <span class="title">Sign Out</span>
            </a>
          </li>
        </ul>
      </div>

      <!-- ========================= Main ==================== -->
      <div class="main">
        <!-- ================ login 시작 ================= -->
        <section id="Auth">
          <div class="login_container">
            <div class="forms-container">
              <div class="signin-signup">
                <form action="${cpath}/Login" class="sign-in-form">
                  <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Username" id="userId" name="userId" />
                  </div>
                  <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" id="userPw" name="userPw" />
                  </div>
                  <input
                    type="submit"
                    value="로그인"
                    class="btn solid"
                    style="background-color: wheat"
                  />
                  <p class="social-text">소셜계정으로 로그인</p>
                  <div class="social-media">
                    <a href="#" class="social-icon">
                      <img src="resources/assets/img/naver.png" alt="" />
                    </a>
                    <a href="#" class="social-icon">
                      <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="social-icon">
                      <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-icon">
                      <i class="fab fa-twitter"></i>
                    </a>
                  </div>
                </form>
                <form action="${cpath}/SignUp" method="post" class="sign-up-form">
                  <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Username" id="userId" name="userId" />
                  </div>
                  <div class="input-field">
                    <i class="fas fa-envelope"></i>
                    <input type="email" placeholder="Email" id="userEmail" name="userEmail" />
                  </div>
                  <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" id="userPw" name="userPw"/>
                  </div>
                  <div class="input-field">
                    <i class="fa-solid fa-cake-candles"></i>
                    <input type="date" id="userBirthdate" name="userBirthdate" />
                  </div>
                  <fieldset class="checkbox-group">
                    <div class="checkbox">
                      <label class="checkbox-wrapper">
                        <input type="checkbox" class="checkbox-input" id="userGender" name="userGender" />
                        <span class="checkbox-tile">
                          <span class="checkbox-icon">
                            <i
                              class="fa-solid fa-person"
                              style="font-size: 30px"
                            ></i>
                          </span>
                          <span class="checkbox-label" style="margin-top: 5px"
                            >남</span
                          >
                        </span>
                      </label>
                    </div>
                    <div class="checkbox">
                      <label class="checkbox-wrapper">
                        <input type="checkbox" class="checkbox-input" id="userGender" name="userGender" />
                        <span class="checkbox-tile">
                          <span class="checkbox-icon" style="font-size: 20px">
                            <i
                              class="fa-solid fa-person-dress"
                              style="font-size: 30px"
                            ></i>
                          </span>
                          <span class="checkbox-label" style="margin-top: 5px"
                            >여</span
                          >
                        </span>
                      </label>
                    </div>
                  </fieldset>
                  <input
                    type="submit"
                    class="btn"
                    value="회원가입 "
                    style="background-color: wheat"
                  />
                  <p class="social-text">소셜계정으로 회원가입</p>
                  <div class="social-media">
                    <a href="#" class="social-icon">
                      <img src="resources/assets/img/naver.png" alt="" />
                    </a>
                    <a href="#" class="social-icon">
                      <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="social-icon">
                      <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-icon">
                      <i class="fab fa-twitter"></i>
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
                  <p>
                    회원가입을 통해 마인드헬퍼만의 분석 서비스를 이용해보세요
                  </p>

                  <button class="btn transparent" id="sign-up-btn">
                    회원가입
                  </button>
                </div>
              </div>
              <div class="panel right-panel">
                <div class="login_content">
                  <h3>환영합니다.</h3>
                  <p>이미 저희 마인드 헬퍼의 회원이시라면</p>
                  <button class="btn transparent" id="sign-in-btn">
                    로그인
                  </button>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
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
