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
        <!-- ===================설문시작========================== -->
        <div id="channel-introduce">
          <img src="resources/assets/img/UFXURTRJHA5K6RKPEGCZDZFTO4.jpg" />
          <h3 id="channel-introduce-title">
           	 신뢰성 높은 마인드 헬퍼의 우울 감정 테스트<br />
            <p>당신의 우울 감정 지수는 몇 점 ?</p>
          </h3>
          <button id="start-channel">(우울 감정 자가진단) 검사 시작하기</button>
        </div>
        <div id="channel-question" style="display: none">
          <div class="progress-bar">
            <div class="progress-bar-line"></div>
          </div>

          <h1 id="question-title"></h1>
          <ul id="question-answer">
            <li class="question"></li>
            <li class="question"></li>
            <li class="question"></li>
            <li class="question"></li>
          </ul>
        </div>
        <div id="channel-finish" style="display: none">
        <img src="resources/assets/img/kero.png" id="finish-image" />
          <div class="finish-point-guide">
            <p id="finish-title">
          	    우울증 자가진단 테스트 결과<br />나의 우울증 지수
            </p>
            <p id="finish-point"><span></span>점</p>
            <p id="finish-point-content"></p>
            <p id="finish-content"></p>
          </div>

          <!--    <div id="finish-program-content"></div>-->
          <a href="survey">
            <button class="re">검사 다시하기</button>
          </a>
        </div>
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
    <script>
      // 설문 테스트
      document
        .getElementById("start-channel")
        .addEventListener("click", function () {
          document.getElementById("channel-introduce").style.display = "none";
          document.getElementById("channel-question").style.display = "block";
        });
      const progressBarLine = document.querySelector(".progress-bar-line");
      const answerItems = document.querySelectorAll("#question-answer li");
      const questionTitle = document.getElementById("question-title");

      const questionList = [
        {
          question: "잠을 자기 어려운가요?",
          answers: [
            { text: "전혀 아니에요.", score: 0 },
            { text: "가끔 그럴 때도 있어요.", score: 1 },
            { text: "자주 그래요.", score: 2 },
            { text: "매일 잠을 잘 수 없어요.", score: 3 },
          ],
        },
        {
          question: "평소 일에 흥미를 잃었나요?",
          answers: [
            { text: "전혀 아니에요.", score: 0 },
            { text: "가끔 그럴 때도 있어요.", score: 1 },
            { text: "자주 그래요.", score: 2 },
            { text: "완전히 흥미를 잃었어요.", score: 3 },
          ],
        },
        {
          question: "무기력한 기분이 드나요?",
          answers: [
            { text: "전혀 아니에요.", score: 0 },
            { text: "가끔 느껴지긴 해요.", score: 1 },
            { text: "자주 느껴져요.", score: 2 },
            { text: "항상 무기력한 기분이에요.", score: 3 },
          ],
        },
        {
          question: "자신에 대한 부정적인 생각이 자주 드나요?",
          answers: [
            { text: "항상 긍정적으로 생각해요.", score: 0 },
            { text: "가끔 그럴 때도 있어요.", score: 1 },
            { text: "상당히 자주 그러네요.", score: 2 },
            { text: "항상 부정적인 생각이 들어요.", score: 3 },
          ],
        },
        {
          question: "평소 집중하기 어려운가요?",
          answers: [
            { text: "집중하는데 문제 없어요.", score: 0 },
            { text: "때때로 집중하기 어려워요.", score: 1 },
            { text: "자주 집중하는데 어려워요.", score: 2 },
            { text: "전혀 집중할 수 없어요.", score: 3 },
          ],
        },
        {
          question: "음식에 흥미를 잃었나요?",
          answers: [
            { text: "전혀 그렇지 않아요.", score: 0 },
            { text: "조금 흥미가 떨어진 것 같아요.", score: 1 },
            { text: "음식에 대한 흥미가 많이 줄었어요.", score: 2 },
            { text: "음식에 대한 흥미가 전혀 없어요.", score: 3 },
          ],
        },
        {
          question: "자주 우울한 기분이 드나요?",
          answers: [
            { text: "전혀 우울하지 않아요.", score: 0 },
            { text: "때때로 우울한 기분이 들긴 해요.", score: 1 },
            { text: "자주 우울한 기분이 들어요.", score: 2 },
            { text: "항상 우울한 기분이에요.", score: 3 },
          ],
        },
        {
          question: "자살에 대한 생각이 드나요?",
          answers: [
            { text: "전혀 그런 생각이 없어요.", score: 0 },
            { text: "가끔 그런 생각이 들기도 해요.", score: 1 },
            { text: "자주 자살에 대한 생각이 들어요.", score: 2 },
            { text: "항상 자살에 대한 생각이 들어요.", score: 3 },
          ],
        },
        {
          question: "스트레스에 쉽게 영향을 받나요?",
          answers: [
            { text: "전혀 영향을 받지 않아요.", score: 0 },
            { text: "때때로 스트레스에 영향을 받을 때도 있어요.", score: 1 },
            { text: "상당히 쉽게 스트레스에 영향을 받아요.", score: 2 },
            { text: "항상 스트레스에 쉽게 영향을 받아요.", score: 3 },
          ],
        },
        {
          question: "자신을 가치 없다고 생각하나요?",
          answers: [
            { text: "전혀 그렇게 생각하지 않아요.", score: 0 },
            { text: "가끔 자신을 가치 없다고 생각하기도 해요.", score: 1 },
            { text: "자주 자신을 가치 없다고 생각해요.", score: 2 },
            { text: "항상 자신을 가치 없다고 생각해요.", score: 3 },
          ],
        },
        {
          question: "사회적 활동에 관심이 없나요?",
          answers: [
            { text: "사회적 활동에 큰 관심이 있어요.", score: 0 },
            { text: "때때로 관심이 없는 순간이 있어요.", score: 1 },
            { text: "사회적 활동에 대한 관심이 줄었어요.", score: 2 },
            { text: "사회적 활동에 전혀 관심이 없어요.", score: 3 },
          ],
        },
        {
          question: "피곤한 기분이 지속되나요?",
          answers: [
            { text: "피곤한 기분이 전혀 없어요.", score: 0 },
            { text: "때때로 피곤한 기분이 들기도 해요.", score: 1 },
            { text: "상당히 피곤한 기분이 지속돼요.", score: 2 },
            { text: "항상 피곤한 기분이에요.", score: 3 },
          ],
        },
        {
          question: "긍정적인 감정을 느끼기 어려운가요?",
          answers: [
            { text: "긍정적인 감정을 자주 느껴요.", score: 0 },
            {
              text: "때때로 긍정적인 감정을 느끼기 어려울 때도 있어요.",
              score: 1,
            },
            { text: "상당히 긍정적인 감정을 느끼기 어려워요.", score: 2 },
            { text: "전혀 긍정적인 감정을 느끼지 못해요.", score: 3 },
          ],
        },
        {
          question: "자신에게 대한 자신감이 부족한가요?",
          answers: [
            { text: "자신에게 대한 자신감이 충분해요.", score: 0 },
            {
              text: "때때로 자신에게 대한 자신감이 부족할 때도 있어요.",
              score: 1,
            },
            { text: "상당히 자신에게 대한 자신감이 부족해요.", score: 2 },
            { text: "전혀 자신에게 대한 자신감이 없어요.", score: 3 },
          ],
        },
        {
          question: "다른 사람들과 대화하기 힘들나요?",
          answers: [
            { text: "다른 사람들과 대화하는 데 문제가 없어요.", score: 0 },
            {
              text: " 때때로 다른 사람들과 대화하기 힘들 때도 있어요.",
              score: 1,
            },
            { text: "자주 다른 사람들과 대화하기 힘들어요.", score: 2 },
            { text: "전혀 다른 사람들과 대화하기 힘들어요.", score: 3 },
          ],
        },
        {
          question: "죄책감을 느낄 때가 있나요?",
          answers: [
            { text: "아니요.", score: 0 },
            { text: "가끔 그래요.", score: 1 },
            { text: "대부분 그래요.", score: 2 },
            { text: "항상 죄책감에 시달리고 있어요.", score: 3 },
          ],
        },
        {
          question: "벌을 받는 느낌이 드나요?",
          answers: [
            { text: "아니요.", score: 0 },
            { text: "어쩌면 그럴지도 몰라요.", score: 1 },
            { text: "곧 벌을 받을 것 같아요.", score: 2 },
            { text: "요즘 벌을 받는 기분이에요.", score: 3 },
          ],
        },
        {
          question: "요즘 우는 날이 많아지진 않았나요?",
          answers: [
            { text: "그렇진 않아요.", score: 0 },
            { text: "전보다 많이 울어요.", score: 1 },
            { text: "요즘 항상 울어요.", score: 2 },
            { text: "요즘은 울고 싶어도 눈물이 안 나와요.", score: 3 },
          ],
        },
        {
          question: "최근 심리적인 이유로 체중에 큰 변화가 있었나요?",
          answers: [
            { text: "아니요, 없었어요.", score: 0 },
            { text: "조금요, 2kg 가량 줄었어요.", score: 1 },
            { text: "많이요, 4kg 가량 줄었어요.", score: 2 },
            { text: "너무 급격하게 많이 줄었어요.", score: 3 },
          ],
        },
        {
          question: "성(Sex)에 대한 관심이 어떤가요?",
          answers: [
            { text: "별다른 변화 없이 괜찮아요.", score: 0 },
            { text: "전보다 관심이 줄었어요.", score: 1 },
            { text: "상당히 줄어든 것 같아요.", score: 2 },
            { text: "관심을 완전히 잃어버렸어요.", score: 3 },
          ],
        },
      ];

      const scoreRanges = [
        {
          minScore: 0,
          maxScore: 10,
          status: "우울하지 않은 상태",
          message:
            "우울한 게 뭐죠?!<br> 와우! 축하해요! <br>당신은 보기 드물게<strong> ‘전혀 우울하지 않은’ </strong>사람!! :D",
        },
        {
          minScore: 11,
          maxScore: 15,
          status: "가벼운 우울 상태",
          message:
            "나도 모르게 요즘 좀 우울... 전혀 우울하지 않은~<br>약간 우울한~ 상당히 우울한~<br>심각하게 우울한 상태 중에서 당신은 <strong>‘약간 우울한 상태’예요.</strong>  <br>혹시 조금씩 지쳐가는 요즘, 이 정도는 별일 아니라며 그냥 지나치고 있나요?",
        },
        {
          minScore: 16,
          maxScore: 23,
          status: "중한 우울 상태",
          message:
            "괜찮은 듯 그러나 괜찮지 않은... 전혀 우울하지 않은~<br>약간 우울한~상당히 우울한~<br>심각하게 우울한 상태 중에서 당신은 <strong>‘상당히 우울한 상태’</strong>입니다.<br> 혹시 공허하거나 무기력하고 혼자 이런 감정을 해결하기 어렵다면 심리상담으로 전문적인 도움을 받아보는 게 좋아요.",
        },
        {
          minScore: 24,
          maxScore: Infinity,
          status: "심한 우울 상태",
          message:
            "누군가의 전문적인 도움이 필요해요! <br>네..지금 당신은 우울증 지수에서 가장 높은 단계에 속하는<strong> ‘심각하게 우울한 상태’</strong>입니다. <br>책읽기, 산책 등 일상적인 노력으로는 극복하지 못했다면 꼭 심리상담으로 전문적인 도움을 받으시길 추천해요.",
        },
      ];
      let currentQuestionIndex = 0;
      let totalScore = 0;

      function updateQuestion() {
        const currentQuestion = questionList[currentQuestionIndex];

        questionTitle.textContent = currentQuestion.question;

        const answerList = document.getElementById("question-answer");
        answerList.innerHTML = "";

        currentQuestion.answers.forEach(function (answer, index) {
          const listItem = document.createElement("li");
          listItem.classList.add(
            "question",
            "question_" + (currentQuestionIndex + 1),
            index + 1
          );
          listItem.textContent = answer.text;

          listItem.addEventListener("click", function () {
            answerItems.forEach(function (item) {
              item.classList.remove("active");
            });

            listItem.classList.add("active");

            totalScore += answer.score;

            if (currentQuestionIndex < questionList.length - 1) {
              currentQuestionIndex++;
              updateProgress();
              updateQuestion();
            } else {
              progressBarLine.style.width = "100%";
              showResultButton();
            }
          });

          answerList.appendChild(listItem);
        });
      }

      function updateProgress() {
        const progressWidth =
          ((currentQuestionIndex + 1) / questionList.length) * 100;
        progressBarLine.style.width = progressWidth + "%";
      }

      function showResultButton() {
        const answerList = document.getElementById("question-answer");
        const resultButton = document.createElement("button");
        resultButton.classList.add("book__now");
        resultButton.textContent = "결과 확인하기";
        resultButton.addEventListener("click", function () {
          const channelQuestionDiv =
            document.getElementById("channel-question");
          const channelFinishDiv = document.getElementById("channel-finish");
          const finishPoint = document.getElementById("finish-point");
          const finishPoint_status = document.getElementById(
            "finish-point-content"
          );
          const finishContent = document.getElementById("finish-content");

          channelQuestionDiv.style.display = "none";
          channelFinishDiv.style.display = "block";

          const status = getStatusFromScore(totalScore);
          finishPoint.innerHTML = "<span>" + totalScore + "</span>점";
          finishPoint_status.textContent = status.status;
          finishContent.innerHTML = getMessageFromStatus(status.status);

          if (
            status.status === "중한 우울 상태" ||
            status.status === "심한 우울 상태"
          ) {
            const counselingButton = document.createElement("button");
            counselingButton.classList.add("book__now");
            counselingButton.textContent = "상담사와 채팅하기";
            counselingButton.onclick = function () {
              location.href = "./survey.html";
            };

            // 상담사와 채팅하기 버튼을 가운데로 정렬하기
            const centerDiv = document.createElement("div");
            centerDiv.style.textAlign = "center";
            centerDiv.style.marginTop = "20px";
            centerDiv.appendChild(counselingButton);
            finishContent.insertAdjacentElement("afterend", centerDiv);
          }
        });

        answerList.insertAdjacentElement("afterend", resultButton);
      }

      function getStatusFromScore(score) {
        for (let i = 0; i < scoreRanges.length; i++) {
          const range = scoreRanges[i];
          if (score >= range.minScore && score <= range.maxScore) {
            return range;
          }
        }
        return null;
      }

      function getMessageFromStatus(status) {
        for (let i = 0; i < scoreRanges.length; i++) {
          const range = scoreRanges[i];
          if (range.status === status) {
            return range.message;
          }
        }
        return "";
      }

      updateQuestion();
    </script>
  </body>
</html>
