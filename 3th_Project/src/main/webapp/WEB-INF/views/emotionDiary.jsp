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
        <div class="grid_emotion">
          <!-- ========================달력======================================== -->
          <div class="cal_container">
            <div class="left">
              <div class="calendar">
                <div class="month">
                  <i class="fas fa-angle-left prev"></i>
                  <div class="date"></div>
                  <i class="fas fa-angle-right next"></i>
                </div>
                <div class="weekdays">
                  <div>일</div>
                  <div>월</div>
                  <div>화</div>
                  <div>수</div>
                  <div>목</div>
                  <div>금</div>
                  <div>토</div>
                </div>
                <div class="days"></div>
                <div class="goto-today">
                  <div class="goto">
                    <input
                      type="text"
                      placeholder="mm/yyyy"
                      class="date-input"
                    />
                    <button class="goto-btn">Go</button>
                  </div>
                  <button class="today-btn">Today</button>
                </div>
              </div>
            </div>
            <div class="right">
              <div class="today-date">
                <div class="event-day">wed</div>
                <div class="event-date">12th december 2022</div>
              </div>
              <div class="events"></div>
              <div class="add-event-wrapper">
                <div class="add-event-header">
                  <div class="title">Add Event</div>
                  <i class="fas fa-times close"></i>
                </div>
                <div class="add-event-body">
                  <div class="add-event-input">
                    <input
                      type="text"
                      placeholder="Event Name"
                      class="event-name"
                    />
                  </div>
                  <div class="add-event-input">
                    <input
                      type="text"
                      placeholder="Event Time From"
                      class="event-time-from"
                    />
                  </div>
                  <div class="add-event-input">
                    <input
                      type="text"
                      placeholder="Event Time To"
                      class="event-time-to"
                    />
                  </div>
                </div>
                <div class="add-event-footer">
                  <button class="add-event-btn">Add Event</button>
                </div>
              </div>
            </div>
            <button class="add-event">
              <i class="fas fa-plus"></i>
            </button>
          </div>
          <!-- ========================글쓰는 부분======================================== -->
          <div class="row_grid_emotion">
            <div class="emotion_Diary_details">
              <div class="emotion_Diary">
                <div class="emotion_Diary_Header">
                  <h2>감정일기</h2>
                </div>
                <div class="emotion_Diary_subHeader">
                  <h4>오늘 당신의 하루는 어땠나요?</h4>
                </div>
                <div class="chatbot_container">
                  <div class="chatbot_img">
                    <img src="resources/assets/img/kero.png" alt="" />
                  </div>
                  <div class="chatbot_contents" contenteditable="false">
                    <div id="response"></div>
                    <div id="placeholder">
                      	마인드 헬퍼의 챗봇 '아쿠아'가 드리는 위로의 한마디
                    </div>
                  </div>
                </div>

                <div class="emotion_Diary_content">
                  <form action="#response" method="post" class="diary_form">
                    <textarea
                      name="user_input"
                      id=""
                      cols="30"
                      rows="5"
                      placeholder="이곳에 당신의 감정을 이곳에 남겨주세요"
                    ></textarea>
                    <input type="submit" value="전송" class="btn" />
                  </form>
                </div>
              </div>
            </div>
            <div class="emotion_Diary_bottom">
              <div class="emotion_Diary">
                <div class="emotion_Diary_Header">
                  <h2>분석 결과</h2>
                </div>
                <p id="result"></p>
                <p id="score"></p>
              </div>
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

    <!-- 달력 자바스크립트 -->
    <script>
      const calendar = document.querySelector(".calendar"),
        date = document.querySelector(".date"),
        daysContainer = document.querySelector(".days"),
        prev = document.querySelector(".prev"),
        next = document.querySelector(".next"),
        todayBtn = document.querySelector(".today-btn"),
        gotoBtn = document.querySelector(".goto-btn"),
        dateInput = document.querySelector(".date-input"),
        eventDay = document.querySelector(".event-day"),
        eventDate = document.querySelector(".event-date"),
        eventsContainer = document.querySelector(".events"),
        addEventBtn = document.querySelector(".add-event"),
        addEventWrapper = document.querySelector(".add-event-wrapper "),
        addEventCloseBtn = document.querySelector(".close "),
        addEventTitle = document.querySelector(".event-name "),
        addEventFrom = document.querySelector(".event-time-from "),
        addEventTo = document.querySelector(".event-time-to "),
        addEventSubmit = document.querySelector(".add-event-btn ");

      let today = new Date();
      let activeDay;
      let month = today.getMonth();
      let year = today.getFullYear();

      const months = [
        "1월",
        "2월",
        "3월",
        "4월",
        "5월",
        "6월",
        "7월",
        "8월",
        "9월",
        "10월",
        "11월",
        "12월",
      ];
      const dayNames = [
        "일요일",
        "월요일",
        "화요일",
        "수요일",
        "목요일",
        "금요일",
        "토요일",
      ];

      const eventsArr = [];
      getEvents();
      console.log(eventsArr);

      //function to add days in days with class day and prev-date next-date on previous month and next month days and active on today
      function initCalendar() {
        const firstDay = new Date(year, month, 1);
        const lastDay = new Date(year, month + 1, 0);
        const prevLastDay = new Date(year, month, 0);
        const prevDays = prevLastDay.getDate();
        const lastDate = lastDay.getDate();
        const day = firstDay.getDay();
        const nextDays = 7 - lastDay.getDay() - 1;

        date.innerHTML = year + "년" + " " + months[month];

        let days = "";

        for (let x = day; x > 0; x--) {
          days += `<div class="day prev-date">${prevDays - x + 1}</div>`;
        }

        for (let i = 1; i <= lastDate; i++) {
          //check if event is present on that day
          let event = false;
          eventsArr.forEach((eventObj) => {
            if (
              eventObj.day === i &&
              eventObj.month === month + 1 &&
              eventObj.year === year
            ) {
              event = true;
            }
          });
          if (
            i === new Date().getDate() &&
            year === new Date().getFullYear() &&
            month === new Date().getMonth()
          ) {
            activeDay = i;
            getActiveDay(i);
            updateEvents(i);
            if (event) {
              days += `<div class="day today active event">${i}</div>`;
            } else {
              days += `<div class="day today active">${i}</div>`;
            }
          } else {
            if (event) {
              days += `<div class="day event">${i}</div>`;
            } else {
              days += `<div class="day ">${i}</div>`;
            }
          }
        }

        for (let j = 1; j <= nextDays; j++) {
          days += `<div class="day next-date">${j}</div>`;
        }
        daysContainer.innerHTML = days;
        addListner();
      }

      //function to add month and year on prev and next button
      function prevMonth() {
        month--;
        if (month < 0) {
          month = 11;
          year--;
        }
        initCalendar();
      }

      function nextMonth() {
        month++;
        if (month > 11) {
          month = 0;
          year++;
        }
        initCalendar();
      }

      prev.addEventListener("click", prevMonth);
      next.addEventListener("click", nextMonth);

      initCalendar();

      //function to add active on day
      // function to add active on day
      function addListner() {
        const days = document.querySelectorAll(".day");
        days.forEach((day) => {
          day.addEventListener("click", (e) => {
            getActiveDay(e.target.innerHTML);
            updateEvents(Number(e.target.innerHTML));
            activeDay = Number(e.target.innerHTML);
            // remove active
            days.forEach((day) => {
              day.classList.remove("active");
            });
            // if clicked prev-date or next-date switch to that month
            if (e.target.classList.contains("prev-date")) {
              prevMonth();
              // add active to clicked day after month is changed
              setTimeout(() => {
                // add active where no prev-date or next-date
                const days = document.querySelectorAll(".day");
                days.forEach((day) => {
                  if (
                    !day.classList.contains("prev-date") &&
                    !day.classList.contains("next-date") &&
                    day.innerHTML === e.target.innerHTML
                  ) {
                    day.classList.add("active");
                  }
                });
                updateEventDate();
              }, 100);
            } else if (e.target.classList.contains("next-date")) {
              nextMonth();
              // add active to clicked day after month is changed
              setTimeout(() => {
                const days = document.querySelectorAll(".day");
                days.forEach((day) => {
                  if (
                    !day.classList.contains("prev-date") &&
                    !day.classList.contains("next-date") &&
                    day.innerHTML === e.target.innerHTML
                  ) {
                    day.classList.add("active");
                  }
                });
                updateEventDate();
              }, 100);
            } else {
              e.target.classList.add("active");
              updateEventDate();
            }
          });
        });
      }

      // function to update event date
      function updateEventDate() {
        eventDate.innerHTML =
          year + "년" + " " + months[month] + " " + activeDay + "일";
      }

      todayBtn.addEventListener("click", function () {
        today = new Date();
        month = today.getMonth();
        year = today.getFullYear();
        initCalendar();
      });

      dateInput.addEventListener("input", (e) => {
        dateInput.value = dateInput.value.replace(/[^0-9/]/g, "");
        if (dateInput.value.length === 2) {
          dateInput.value += "/";
        }
        if (dateInput.value.length > 7) {
          dateInput.value = dateInput.value.slice(0, 7);
        }
        if (e.inputType === "deleteContentBackward") {
          if (dateInput.value.length === 3) {
            dateInput.value = dateInput.value.slice(0, 2);
          }
        }
      });

      gotoBtn.addEventListener("click", gotoDate);

      function gotoDate() {
        console.log("here");
        const dateArr = dateInput.value.split("/");
        if (dateArr.length === 2) {
          if (dateArr[0] > 0 && dateArr[0] < 13 && dateArr[1].length === 4) {
            month = dateArr[0] - 1;
            year = dateArr[1];
            initCalendar();
            return;
          }
        }
        alert("잘못 선택된 날짜입니다.");
      }

      //function get active day day name and date and update eventday eventdate
      function getActiveDay(date) {
        const day = new Date(year, month, date);
        const dayIndex = day.getDay();
        const dayName = dayNames[dayIndex];
        eventDay.innerHTML = dayName;
        eventDate.innerHTML =
          year + "년" + " " + months[month] + " " + date + "일";
      }

      //function update events when a day is active
      function updateEvents(date) {
        let events = "";
        eventsArr.forEach((event) => {
          if (
            date === event.day &&
            month + 1 === event.month &&
            year === event.year
          ) {
            event.events.forEach((event) => {
              events += `<div class="event">
            <div class="title">
              <i class="fas fa-circle"></i>
              <h3 class="event-title">${event.title}</h3>
            </div>
            <div class="event-time">
              <span class="event-time">${event.time}</span>
            </div>
        </div>`;
            });
          }
        });
        if (events === "") {
          events = `<div class="no-event">
            <h3>일정 없음</h3>
        </div>`;
        }
        eventsContainer.innerHTML = events;
        saveEvents();
      }

      //function to add event
      addEventBtn.addEventListener("click", function () {
        addEventWrapper.classList.toggle("active");
      });

      addEventCloseBtn.addEventListener("click", function () {
        addEventWrapper.classList.remove("active");
      });

      document.addEventListener("click", (e) => {
        if (e.target !== addEventBtn && !addEventWrapper.contains(e.target)) {
          addEventWrapper.classList.remove("active");
        }
      });

      //allow 50 chars in eventtitle
      addEventTitle.addEventListener("input", (e) => {
        addEventTitle.value = addEventTitle.value.slice(0, 60);
      });

      //allow only time in eventtime from and to
      addEventFrom.addEventListener("input", (e) => {
        addEventFrom.value = addEventFrom.value.replace(/[^0-9:]/g, "");
        if (addEventFrom.value.length === 2) {
          addEventFrom.value += ":";
        }
        if (addEventFrom.value.length > 5) {
          addEventFrom.value = addEventFrom.value.slice(0, 5);
        }
      });

      addEventTo.addEventListener("input", (e) => {
        addEventTo.value = addEventTo.value.replace(/[^0-9:]/g, "");
        if (addEventTo.value.length === 2) {
          addEventTo.value += ":";
        }
        if (addEventTo.value.length > 5) {
          addEventTo.value = addEventTo.value.slice(0, 5);
        }
      });

      //function to add event to eventsArr
      addEventSubmit.addEventListener("click", function () {
        const eventTitle = addEventTitle.value;
        const eventTimeFrom = addEventFrom.value;
        const eventTimeTo = addEventTo.value;
        if (eventTitle === "" || eventTimeFrom === "" || eventTimeTo === "") {
          alert("모든 입력란을 채워주세요");
          return;
        }

        //check correct time format 24 hour
        const timeFromArr = eventTimeFrom.split(":");
        const timeToArr = eventTimeTo.split(":");
        if (
          timeFromArr.length !== 2 ||
          timeToArr.length !== 2 ||
          timeFromArr[0] > 23 ||
          timeFromArr[1] > 59 ||
          timeToArr[0] > 23 ||
          timeToArr[1] > 59
        ) {
          alert("잘못된 시간 형식입니다.");
          return;
        }

        const timeFrom = convertTime(eventTimeFrom);
        const timeTo = convertTime(eventTimeTo);

        //check if event is already added
        let eventExist = false;
        eventsArr.forEach((event) => {
          if (
            event.day === activeDay &&
            event.month === month + 1 &&
            event.year === year
          ) {
            event.events.forEach((event) => {
              if (event.title === eventTitle) {
                eventExist = true;
              }
            });
          }
        });
        if (eventExist) {
          alert("이미 같은 일정이 추가 되었습니다.");
          return;
        }
        const newEvent = {
          title: eventTitle,
          time: timeFrom + " - " + timeTo,
        };
        console.log(newEvent);
        console.log(activeDay);
        let eventAdded = false;
        if (eventsArr.length > 0) {
          eventsArr.forEach((item) => {
            if (
              item.day === activeDay &&
              item.month === month + 1 &&
              item.year === year
            ) {
              item.events.push(newEvent);
              eventAdded = true;
            }
          });
        }

        if (!eventAdded) {
          eventsArr.push({
            day: activeDay,
            month: month + 1,
            year: year,
            events: [newEvent],
          });
        }

        console.log(eventsArr);
        addEventWrapper.classList.remove("active");
        addEventTitle.value = "";
        addEventFrom.value = "";
        addEventTo.value = "";
        updateEvents(activeDay);
        //select active day and add event class if not added
        const activeDayEl = document.querySelector(".day.active");
        if (!activeDayEl.classList.contains("event")) {
          activeDayEl.classList.add("event");
        }
      });

      //function to delete event when clicked on event
      eventsContainer.addEventListener("click", (e) => {
        if (e.target.classList.contains("event")) {
          if (confirm("선택한 일정을 삭제하고 싶으신가요?")) {
            const eventTitle = e.target.children[0].children[1].innerHTML;
            eventsArr.forEach((event) => {
              if (
                event.day === activeDay &&
                event.month === month + 1 &&
                event.year === year
              ) {
                event.events.forEach((item, index) => {
                  if (item.title === eventTitle) {
                    event.events.splice(index, 1);
                  }
                });
                //if no events left in a day then remove that day from eventsArr
                if (event.events.length === 0) {
                  eventsArr.splice(eventsArr.indexOf(event), 1);
                  //remove event class from day
                  const activeDayEl = document.querySelector(".day.active");
                  if (activeDayEl.classList.contains("event")) {
                    activeDayEl.classList.remove("event");
                  }
                }
              }
            });
            updateEvents(activeDay);
          }
        }
      });

      //function to save events in local storage
      function saveEvents() {
        localStorage.setItem("events", JSON.stringify(eventsArr));
      }

      //function to get events from local storage
      function getEvents() {
        //check if events are already saved in local storage then return event else nothing
        if (localStorage.getItem("events") === null) {
          return;
        }
        eventsArr.push(...JSON.parse(localStorage.getItem("events")));
      }

      function convertTime(time) {
        //convert time to 24 hour format
        let timeArr = time.split(":");
        let timeHour = timeArr[0];
        let timeMin = timeArr[1];
        let timeFormat = timeHour >= 12 ? "PM" : "AM";
        timeHour = timeHour % 12 || 12;
        time = timeHour + ":" + timeMin + " " + timeFormat;
        return time;
      }
    </script>
    <!-- 챗봇 플라스크 영역 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $("form").submit(function (event) {
        event.preventDefault();
        var form = $(this);
        $.ajax({
          type: form.attr("method"),
          url: "/chatbot",
          data: form.serialize(),
          success: function (response) {
            var sentences = response.split(".");
            var formattedResponse = sentences
              .map(function (sentence) {
                return "<span>" + sentence.trim() + "</span>";
              })
              .join("<br>");

            if (formattedResponse.trim() === "") {
              $(".chatbot_contents").addClass("empty");
              $("#placeholder").css("display", "block");
            } else {
              $("#response").html(formattedResponse);
              $(".chatbot_contents").removeClass("empty");
              $("#placeholder").css("display", "none");
            }
          },
        });
      });
    </script>
    <!-- 텍스트 ai 모델 결과값 출력 ajax -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script>
      $(document).ready(function () {
        var options = {
          series: [
            {
              name: "긍정",
              data: [0],
            },
            {
              name: "부정",
              data: [0],
            },
          ],
          chart: {
            type: "bar",
            height: 150,
            stacked: true,
            toolbar: {
              show: false,
            },
          },
          plotOptions: {
            bar: {
              horizontal: true,
            },
          },
          stroke: {
            width: 1,
            colors: ["#fff"],
          },
          xaxis: {
            categories: ["감정지수"],
            max: 1,
          },
          yaxis: {
            labels: {
              formatter: function (value) {
                return value;
              },
            },
            max: 1,
          },
          tooltip: {
            y: {
              formatter: function (val) {
                return val;
              },
            },
          },
          fill: {
            opacity: 1,
          },
          legend: {
            position: "top",
            horizontalAlign: "left",
            offsetX: 40,
          },
        };

        var chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();

        $(".diary_form").submit(function (event) {
          event.preventDefault();

          var user_input = $('textarea[name="user_input"]').val();

          $.ajax({
            url: "/analyze",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify({ text: user_input }),
            success: function (response) {
              var score = response.score;
              console.log(response);
              var chartData = [
                {
                  name: "긍정",
                  data: [score],
                },
                {
                  name: "부정",
                  data: [1 - score],
                },
              ];

              chart.updateSeries(chartData);

              // Reset 버튼 추가
              $(".reset_button").remove();
              $(".save_button").remove();
              $(".btn_box").append(
                '<button class="reset_button">초기화</button>'
              );

              // 저장하기 버튼 추가
              $(".btn_box").append(
                '<button class="save_button">저장하기</button>'
              );
            },
            error: function (error) {
              alert("오류가 발생했습니다.");
            },
          });
        });

        // Reset 버튼 클릭 이벤트
        $(document).on("click", ".reset_button", function () {
          chart.updateSeries([
            {
              name: "긍정",
              data: [0],
            },
            {
              name: "부정",
              data: [0],
            },
          ]);

          $('textarea[name="user_input"]').val(""); // 텍스트 입력란 초기화

          $(this).remove(); // Reset 버튼 제거
          $(".save_button").remove(); // 저장하기 버튼 제거
        });

        // 저장하기 버튼 클릭 이벤트
        $(document).on("click", ".save_button", function () {
          var user_input = $('textarea[name="user_input"]').val();
          // 저장하기 로직 추가

          // $(this).remove(); // 저장하기 버튼 제거
        });
      });
    </script>
  </body>
</html>
