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
                <ion-icon name="people-outline"></ion-icon>
              </span>
              <span class="title">간편 설문 테스트</span>
            </a>
          </li>

          <li>
            <a href="emotion">
              <span class="icon">
                <ion-icon name="chatbubble-outline"></ion-icon>
              </span>
              <span class="title">간편 이미지 표정 테스트</span>
            </a>
          </li>

          <li>
            <a href="emotionDiary">
              <span class="icon">
                <i class="fa-solid fa-book-heart"></i>
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
            <p><span>Admin</span>님 환영합니다.</p>
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
            <form action="#res_emotion">
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
              <div id="chart">
                <div class="chart_header">
                  <span>종합 분석점수</span>
                </div>
              </div>
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
                <span>Admin</span>님의 분석결과는 다음과 같습니다.
              </p>
              <p class="res_contents_text">긍정: <span>40%</span></p>
              <p class="res_contents_text">부정: <span>60%</span></p>

              <p class="res_contents_text_total">
                <span>Admin</span>님은<br /><span style="font-weight: bold"
                  >부정</span
                >적인 표정을 가질 확률이 높습니다.
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
      src="https://kit.fontawesome.com/369266d994.js"
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
        series: [75],
        chart: {
          width: 350,
          height: 350,
          type: "radialBar",
        },
        plotOptions: {
          radialBar: {
            startAngle: -135,
            endAngle: 225,
            hollow: {
              margin: 0,
              size: "70%",
              background: "#fff",
              image: undefined,
              imageOffsetX: 0,
              imageOffsetY: 0,
              position: "front",
              dropShadow: {
                enabled: true,
                top: 3,
                left: 0,
                blur: 4,
                opacity: 0.24,
              },
            },
            track: {
              background: "#fff",
              strokeWidth: "67%",
              margin: 0, // margin is in pixels
              dropShadow: {
                enabled: true,
                top: -3,
                left: 0,
                blur: 4,
                opacity: 0.35,
              },
            },

            dataLabels: {
              show: true,
              name: {
                offsetY: -10,
                show: true,
                color: "#888",
                fontSize: "17px",
              },
              value: {
                formatter: function (val) {
                  return parseInt(val);
                },
                color: "#111",
                fontSize: "36px",
                show: true,
              },
            },
          },
        },
        fill: {
          type: "gradient",
          gradient: {
            shade: "dark",
            type: "horizontal",
            shadeIntensity: 0.5,
            gradientToColors: ["#ABE5A1"],
            inverseColors: true,
            opacityFrom: 1,
            opacityTo: 1,
            stops: [0, 100],
          },
        },
        stroke: {
          lineCap: "round",
        },
        labels: ["Percent"],
      };

      var chart = new ApexCharts(document.querySelector("#chart"), options);
      chart.render();
    </script>
  </body>
</html>
