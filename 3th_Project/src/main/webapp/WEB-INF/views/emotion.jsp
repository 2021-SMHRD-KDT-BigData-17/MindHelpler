<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
							<span style="color: #ffd966">H</span><span style="color: #767171">ELPER</span>
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

				<li><a href="userprofile.jsp"> <span class="icon"> <ion-icon
								name="settings-outline"></ion-icon>
					</span> <span class="title">마이페이지</span>
				</a></li>
				<li style="display: none"><a href="Counselorfile.jsp"> <span
						class="icon"> <ion-icon name="settings-outline"></ion-icon>
					</span> <span class="title">상담사 전용 페이지</span>
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

			<!-- ======================= Cards ================== -->

			<!-- ================ Order Details List ================= -->
		</div>
	</div>

	<!-- =========== Scripts =========  -->
	<script src="<c:url value='resources/assets/js/main.js'/>"></script>

	<!-- ====== ionicons ======= -->
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script src="https://kit.fontawesome.com/369266d994.js"
		crossorigin="anonymous"></script>
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.7.0.js"
		integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
		crossorigin="anonymous"></script>
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
                let html = `<div class="uploaded-img"> <img src="${event.target.result}"> 
                <button type="button" class="remove-btn"> <i class="fas fa-times"></i>
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
</body>
</html>
