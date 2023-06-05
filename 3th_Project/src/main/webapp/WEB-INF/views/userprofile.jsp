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
							<span style="color: #ffd966">H</span><span style="color: #767171">ELPER</span>
						</p>
					</div>
				</li>

				<li><a href="Main"> <span class="icon"> <ion-icon
								name="home-outline"></ion-icon>
					</span> <span class="title">서비스 소개</span>
				</a></li>

				<li><a href="survey"> <span class="icon"> <ion-icon
								name="people-outline"></ion-icon>
					</span> <span class="title">간편 설문 테스트</span>
				</a></li>

				<li><a href="emotion"> <span class="icon"> <ion-icon
								name="chatbubble-outline"></ion-icon>
					</span> <span class="title">간편 이미지 표정 테스트</span>
				</a></li>

				<li><a href="emotionDiary"> <span class="icon"> <ion-icon
								name="help-outline"></ion-icon>
					</span> <span class="title">감정일기</span>
				</a></li>

				<li><a href="userprofile"> <span class="icon"> <ion-icon
								name="settings-outline"></ion-icon>
					</span> <span class="title">마이페이지</span>
				</a></li>
				<li style="display: none"><a href="Counselorfile"> <span
						class="icon"> <ion-icon name="settings-outline"></ion-icon>
					</span> <span class="title"> 상담사 전용 마이페이지</span>
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

			<!-- ================ Order Details List ================= -->
			<div class="details">
				<div class="recentOrders">
					<div class="cardHeader">
						<div class="dropdown">
							<div class="select">
								<span class="selected">분석내역</span>
								<div class="caret"></div>
							</div>
							<ul class="menu">
								<li class="active">분석내역</li>
								<li>회원 정보 수정</li>
							</ul>
						</div>
						<button id="move" class="status pending"
							style="width: 100px; height: 60px; border: none; cursor: pointer;">
							이동하기</button>
					</div>
					<table id="Analysis_List">
						<thead>
							<tr>
								<td style="width: 240px">이미지/감정일기 분석결과</td>
								<td>분석일자</td>
								<td>설문테스트 분석결과</td>
								<td>분석일자</td>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>긍정</td>
								<td>2023/05/29</td>
								<td>부정</td>
								<td>2023/05/29</td>
							</tr>

							<tr>
								<td>긍정</td>
								<td>2023/05/30</td>
								<td>부정</td>
								<td>2023/05/30</td>
							</tr>

							<tr>
								<td>긍정</td>
								<td>2023/05/31</td>
								<td>부정</td>
								<td>2023/05/31</td>
							</tr>

							<tr>
								<td>긍정</td>
								<td>2023/06/01</td>
								<td>부정</td>
								<td>2023/06/01</td>
							</tr>

							<tr>
								<td>긍정</td>
								<td>2023/06/01</td>
								<td>부정</td>
								<td>2023/06/01</td>
							</tr>
						</tbody>
					</table>
					<div id="edit_form-box">
						<form action="" class="sign-in-form"
							style="margin-top: 30px; gap: 10px">
							<div class="input-field">
								<i class="fa-solid fa-envelope"></i> <input type="email"
									placeholder="Email" />
							</div>
							<div class="input-field">
								<i class="fas fa-user"></i> <input type="text"
									placeholder="Username" />
							</div>
							<div class="input-field">
								<i class="fas fa-lock"></i> <input type="password"
									placeholder="Password" />
							</div>
							<input type="submit" value="회원정보수정" class="book__now"
								style="width: 50%; margin-top: 20px" />
							<p style="margin-top: 40px; font-size: small; color: gray">
								저희 Mind Helper의 서비스를 더이상 원하시지 않으신다면 <a
									style="text-decoration: none; color: #000" href="">&nbsp;<span><b>회원탈퇴</b></span></a>
							</p>
						</form>
					</div>
				</div>

				<!-- ================= New Customers ================ -->
				<div class="recentCustomers">
					<div class="cardHeader">
						<h2>마인드 헬퍼 전속 상담사 리스트</h2>
					</div>

					<table>
						<tr>
							<td width="60px">
								<div class="imgBx">
									<img src="resources/assets/imgs/customer02.jpg" alt="" />
								</div>
							</td>
							<td class="counselor_list">
								<h4>
									올리비아 <br /> <span>Italy</span>
								</h4>
								<div class="book__now">채팅하러가기</div>
							</td>
						</tr>

						<tr>
							<td width="60px">
								<div class="imgBx">
									<img src="resources/assets/imgs/customer01.jpg" alt="" />
								</div>
							</td>
							<td class="counselor_list">
								<h4>
									올리비아 <br /> <span>India</span>
								</h4>
								<div class="book__now">채팅하러가기</div>
							</td>
						</tr>

						<tr>
							<td width="60px">
								<div class="imgBx">
									<img src="resources/assets/imgs/customer02.jpg" alt="" />
								</div>
							</td>
							<td class="counselor_list">
								<h4>
									올리비아 <br /> <span>Italy</span>
								</h4>
								<div class="book__now">채팅하러가기</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="details">
				<div class="recentOrders"></div>
			</div>
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
          if (selectedOption.innerText === "분석내역") {
            analysisList.style.display = "table";
            editFormBox.style.display = "none";
          }
        });
      });
    </script>
</body>
</html>
