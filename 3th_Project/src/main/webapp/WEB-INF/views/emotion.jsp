<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="kr.smhrd.domain.T_USER" %>

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

          <li>
            <a href="survey">
              <span class="icon">
                <i class="fa-solid fa-list-check"></i>
              </span>
              <span class="title">간편 설문 테스트</span>
            </a>
          </li>

          <li>
            <a href="emotion">
              <span class="icon">
                <ion-icon name="happy-outline"></ion-icon>
              </span>
              <span class="title">간편 이미지 표정 테스트</span>
            </a>
          </li>

          <li>
            <a href="emotionDiary">
              <span class="icon">
                <ion-icon name="book-outline"></ion-icon>
              </span>
              <span class="title">감정일기</span>
            </a>
          </li>

          <li>
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
			    <c:when test="${not empty loginUser}">
			      <p><span>${loginUser.userId}</span>님 환영합니다.</p>
			    </c:when>
			    <c:otherwise>
			      <p>로그인 해주세요.</p>
			    </c:otherwise>
			 </c:choose>
          </div>
        </div>

        <!-- ================ 이미지 분석 ================= -->
        <div class="emotion_header">
          <h1>이미지 분석</h1>
          <p>
            원하는 얼굴 정면 사진을 업로드 해주시면 <br />마인드 헬퍼의 이미지
            AI 가 분석해드립니다.
          </p>
        </div>
        <div class="wrapper">
          <div class="upload">
            <form action="${cpath}/UploadImg" method="">
              <div class="upload-wrapper">
                <div class="upload-img">
                  <!-- image here -->
                </div>
                <div class="upload-info">
                  <p>
                    <span class="upload-info-value">0</span> file(s) uploaded.
                  </p>
                </div>
                <div class="upload-area">
                  <div class="upload-area-img">
                    <img src="resources/assets/static/img/upload.png" alt="" />
                  </div>
                  <p class="upload-area-text">
                    Select images or <span>browse</span>.
                  </p>
                </div>
                <input
                  type="file"
                  class="visually-hidden"
                  id="upload-input"
                  multiple
                />
              </div>
              <button class="btn" style="width: 200px; margin-top: 20px">
             	   이미지 전송하기
              </button>
            </form>
          </div>
        </div>
        <div class="details" id="res_emotion" style="display: none">
          <div class="recentOrders">
            <div class="cardHeader">
              <h2>이미지 분석 결과</h2>
            </div>
            <div class="res_emotion_contents">
              <div class="res_img">
                <img src="resources/assets/static/img/trip-1.jpg" alt="" />
              </div>
              <div id="chart"></div>
            </div>
          </div>
          <div class="recentCustomers">
            <div class="cardHeader">
              <h2>분석 결과 설명</h2>
            </div>

            <div
              class="emotion_img_right_content"
              style="margin-top: 90px; margin-bottom: 90px"
            >
              <p class="header">
	             <c:choose>
				    <c:when test="${not empty loginUser}">
				      <p><span style="color:blue">${loginUser.userId}</span>님의 분석결과는 다음과 같습니다.</p>
				    </c:when>
				    <c:otherwise>
				      <p>로그인을 먼저 하고 분석을 진행해주세요.</p>
				    </c:otherwise>
				 </c:choose>
              </p>
              <p class="res_contents_text">불안: <span>40%</span></p>
              <p class="res_contents_text">분노: <span>30%</span></p>
              <p class="res_contents_text">중립: <span>20%</span></p>
              <p class="res_contents_text">기쁨: <span>5%</span></p>
              <p class="res_contents_text">슬픔: <span>5%</span></p>
              <p class="res_contents_text_total">
              	<c:choose>
              		<c:when test="${not empty loginUser}">
              			<span style="color:blue">${loginUser.userId}</span>님은<br /><span>부정</span>적인 표정을 가질 확률이 높습니다.
              		</c:when>
              		<c:otherwise>
              			<p>로그인을 먼저 하고 분석을 진행해주세요.</p>
              		</c:otherwise>
              	</c:choose>
              </p>
            </div>
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
    <!-- JQuery -->
    <script
      src="https://code.jquery.com/jquery-3.7.0.js"
      integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
      crossorigin="anonymous"
    ></script>
    <!-- 이미지 업로드 코드 -->
    <script>
      $(document).ready(function () {
        $(".upload-area").click(function () {
          $("#upload-input").trigger("click");
        });

        $("#upload-input").change((event) => {
          if (event.target.files) {
            let filesAmount = event.target.files.length;

            for (let i = 0; i < filesAmount; i++) {
              let reader = new FileReader();
              reader.onload = function (event) {
                let html = `
            <div class="uploaded-img">
              <img src="${event.target.result}">
              <button type="button" class="remove-btn">
                <i class="fas fa-times"></i>
              </button>
            </div>
          `;
                $(".upload-img").append(html);

                let totalFilesAmount = $(".upload-img .uploaded-img").length;
                $(".upload-info-value").text(totalFilesAmount);
                $(".upload-img").css("padding", "20px");
              };
              reader.readAsDataURL(event.target.files[i]);
            }
          }
        });

        $(document).on("click", ".remove-btn", function () {
          $(this).parent().remove();
          let totalFilesAmount = $(".upload-img .uploaded-img").length;
          $(".upload-info-value").text(totalFilesAmount);

          if (totalFilesAmount === 0) {
            $(".upload-img").css("padding", "0");
          }
        });
      });
    </script>

    <script>
      const uploadButton = document.querySelector(".btn");
      const uploadWrapper = document.querySelector(".wrapper");
      const resEmotion = document.getElementById("res_emotion");
      const uploadImgContainer = document.querySelector(".upload-img");
      const resImgContainer = document.querySelector(".res_img");

      uploadButton.addEventListener("click", function (event) {
        event.preventDefault();
        uploadWrapper.style.display = "none";
        resEmotion.style.display = "";

        // Get the uploaded file from the input element
        const fileInput = document.getElementById("upload-input");
        const file = fileInput.files[0];

        // Display the uploaded image
        const reader = new FileReader();
        reader.onload = function (e) {
          const img = document.createElement("img");
          img.src = e.target.result;
          resImgContainer.innerHTML = ""; // Clear the existing content
          resImgContainer.appendChild(img);
        };
        reader.readAsDataURL(file);
      });
    </script>
    <!-- 차트 코드 -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script>
      var options = {
        series: [40, 30, 20, 5, 5],
        chart: {
          width: 500,
          type: "radialBar",
        },
        plotOptions: {
          radialBar: {
            offsetY: 0,
            startAngle: 0,
            endAngle: 270,
            hollow: {
              margin: 5,
              size: "30%",
              background: "transparent",
              image: undefined,
            },
            dataLabels: {
              name: {
                show: false,
              },
              value: {
                show: false,
              },
            },
          },
        },
        colors: ["#1ab7ea", "#0084ff", "#39539E", "#0077B5", "#767268"],
        labels: ["불안", "분노", "중립", "기쁨", "슬픔"],
        legend: {
          show: true,
          floating: true,
          fontSize: "16px",
          position: "left",
          offsetX: 50,
          offsetY: 15,
          labels: {
            useSeriesColors: true,
          },
          markers: {
            size: 0,
          },
          formatter: function (seriesName, opts) {
              // 수정 시작
              var percent = opts.w.globals.seriesPercent[opts.seriesIndex];
              percent = parseFloat(percent).toFixed(2);
              return seriesName + ":  " + percent + "%";
              // 수정 끝
          },
          itemMargin: {
            vertical: 3,
          },
        },
        responsive: [
          {
            breakpoint: 480,
            options: {
              legend: {
                show: false,
              },
            },
          },
        ],
      };

      var chart = new ApexCharts(document.querySelector("#chart"), options);
      chart.render();
    </script>
  </body>
</html>
