<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="kr.smhrd.domain.T_COUNSELOR" %>

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
  
 <%
  	// 세션 정보 가져오기
  	HttpSession sessionUser = request.getSession();
    T_COUNSELOR loginCoun = (T_COUNSELOR) sessionUser.getAttribute("loginCoun");
 %>
  
    <!-- =============== Navigation ================ -->
    <div class="container">
      <div class="navigation">
        <ul>
          <li>
            <div class="nav__logo">
              <img
                src="resources/assets/img/logo.png"
                class="nav__img"
                alt=""
              />
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
          <li style="display: none">
            <a href="Counselorfile">
              <span class="icon">
                <ion-icon name="settings-outline"></ion-icon>
              </span>
              <span class="title"> 상담사 전용 마이페이지</span>
            </a>
          </li>

          <li>
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
        <div class="topbar">
          <div class="user">
             <c:choose>
			    <c:when test="${not empty loginCoun}">
			      <p><span>${loginCoun.counselorName}</span>님 환영합니다.</p>
			    </c:when>
			    <c:otherwise>
			      <p>로그인 해주세요.</p>
			    </c:otherwise>
			 </c:choose>
          </div>
        </div>

        <!-- ================ Order Details List ================= -->
        <div class="details">
          <div class="recentOrders">
            <div class="cardHeader">
              <div class="dropdown">
                <div class="select">
                  <span class="selected">상담내역</span>
                  <div class="caret"></div>
                </div>
                <ul class="menu">
                  <li class="active">상담내역</li>
                  <li>회원 정보 수정</li>
                </ul>
              </div>
              <button
                id="move"
                class="status pending"
                style="
                  width: 100px;
                  height: 60px;
                  border: none;
                  cursor: pointer;
                "
              >
                이동하기
              </button>
            </div>
            <table id="Analysis_List">
              <thead>
                <tr>
                  <td style="width: 240px">상담내역</td>
                  <td>유저</td>
                  <td>상담일자</td>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <td>긍정</td>
                  <td>부정</td>
                  <td>2023/05/29</td>
                </tr>

                <tr>
                  <td>긍정</td>
                  <td>부정</td>
                  <td>2023/05/29</td>
                </tr>

                <tr>
                  <td>긍정</td>
                  <td>부정</td>
                  <td>2023/05/29</td>
                </tr>

                <tr>
                  <td>긍정</td>
                  <td>부정</td>
                  <td>2023/05/29</td>
                </tr>

                <tr>
                  <td>긍정</td>
                  <td>부정</td>
                  <td>2023/05/29</td>
                </tr>
              </tbody>
            </table>
            
            <div id="edit_form-box">
              <form
                action="${cpath}/CounUpdate"
                method="post" class="sign-in-form"
                style="margin-top: 30px; gap: 10px"
              >
                <div class="input-field">
                  <i class="fa-solid fa-envelope"></i>
                  <input type="email" placeholder="Email" id="counselorEmail" name="counselorEmail" />
                </div>
                <div class="input-field">
                  <i class="fas fa-user"></i>
                  <input type="text" placeholder="Username" id="counselorName" name="counselorName" />
                </div>
                <div class="input-field">
                  <i class="fas fa-lock"></i>
                  <input type="password" placeholder="Password" id="counselorPw" name="counselorPw" />
                </div>
                <input
                  type="submit"
                  value="회원정보수정"
                  class="book__now"
                  style="width: 50%; margin-top: 20px"
                />
                <p style="margin-top: 40px; font-size: small; color: gray">
                  저희 Mind Helper의 서비스를 더이상 원하시지 않으신다면
                  <a style="text-decoration: none; color: #000" href=""
                    >&nbsp;<span><b>회원탈퇴</b></span></a
                  >
                </p>
              </form>
            </div>
          </div>

          <!-- ================= New Customers ================ -->
          <div class="recentCustomers">
            <div class="cardHeader">
              <h2>상담 대기 리스트</h2>
            </div>

            <table>
              <tr>
                <td width="60px">
                  <div class="imgBx">
                    <img src="resources/assets/imgs/customer02.jpg" alt="" />
                  </div>
                </td>
                <td>
                  <h4>
                    David <br />
                    <span>Italy</span>
                  </h4>
                </td>
                <td><span class="status pending">상담 대기중</span></td>
                <td style="width: 150px">
                  <div
                    class="book__now"
                    style="font-size: 12px; text-align: center"
                  >
                    채팅하러가기
                  </div>
                </td>
              </tr>

              <tr>
                <td width="60px">
                  <div class="imgBx">
                    <img src="resources/assets/imgs/customer01.jpg" alt="" />
                  </div>
                </td>
                <td>
                  <h4>
                    Amit <br />
                    <span>India</span>
                  </h4>
                </td>
                <td><span class="status pending">상담 대기중</span></td>
                <td style="width: 150px">
                  <div
                    class="book__now"
                    style="font-size: 12px; text-align: center"
                  >
                    채팅하러가기
                  </div>
                </td>
              </tr>

              <tr>
                <td width="60px">
                  <div class="imgBx">
                    <img src="resources/assets/imgs/customer02.jpg" alt="" />
                  </div>
                </td>
                <td>
                  <h4>
                    David <br />
                    <span>Italy</span>
                  </h4>
                </td>
                <td><span class="status pending">상담 대기중</span></td>
                <td style="width: 150px">
                  <div
                    class="book__now"
                    style="font-size: 12px; text-align: center"
                  >
                    채팅하러가기
                  </div>
                </td>
              </tr>

              <tr>
                <td width="60px">
                  <div class="imgBx">
                    <img src="resources/assets/imgs/customer01.jpg" alt="" />
                  </div>
                </td>
                <td>
                  <h4>
                    Amit <br />
                    <span>India</span>
                  </h4>
                </td>
                <td><span class="status pending">상담 대기중</span></td>
                <td style="width: 150px">
                  <div
                    class="book__now"
                    style="font-size: 12px; text-align: center"
                  >
                    채팅하러가기
                  </div>
                </td>
              </tr>
            </table>
          </div>
        </div>
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

    <!-- ====== ionicons ======= -->
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    <script
      src="https://kit.fontawesome.com/08d807a96c.js"
      crossorigin="anonymous"
    ></script>
    
    <!-- 드롭다운 메뉴 -->
    <script>
      const dropdowns = document.querySelectorAll(".dropdown");

      dropdowns.forEach((dropdown) => {
        const select = dropdown.querySelector(".select");
        const caret = dropdown.querySelector(".caret");
        const menu = dropdown.querySelector(".menu");
        const options = dropdown.querySelectorAll(".menu li");
        const selected = dropdown.querySelector(".selected");
        const analysisList = document.getElementById("Analysis_List");
        const editFormBox = document.getElementById("edit_form-box");
        const moveButton = document.getElementById("move");

        // Hide the edit_form-box initially
        editFormBox.style.display = "none";

        select.addEventListener("click", function () {
          select.classList.toggle("select-clicked");
          caret.classList.toggle("caret-rotate");
          menu.classList.toggle("menu-open");
        });

        options.forEach((option) => {
          option.addEventListener("click", function () {
            selected.innerText = option.innerText;
            select.classList.remove("select-clicked");
            caret.classList.remove("caret-rotate");
            menu.classList.remove("menu-open");
            options.forEach((option) => {
              option.classList.remove("drop_active");
            });
            option.classList.add("drop_active");

            // Check which option is selected and show/hide the corresponding content
          });
        });

        moveButton.addEventListener("click", function () {
          const selectedOption = dropdown.querySelector(".menu li.drop_active");
          if (selectedOption.innerText === "회원 정보 수정") {
            analysisList.style.display = "none";
            editFormBox.style.display = "block";
          }
          if (selectedOption.innerText === "상담내역") {
            analysisList.style.display = "table";
            editFormBox.style.display = "none";
          }
        });
      });
    </script>
  </body>
</body>
</html>
