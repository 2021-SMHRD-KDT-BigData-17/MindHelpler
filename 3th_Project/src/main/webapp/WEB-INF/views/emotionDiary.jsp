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
					</span> <span class="title">서비스 소개</span>
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
					</span> <span class="title">상담사 전용 마이페이지</span>
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
			<div class="grid_emotion">
				<!-- ========================ë¬ë ¥======================================== -->
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
								<div>금</div>
								<div>토</div>
							</div>
							<div class="days"></div>
							<div class="goto-today">
								<div class="goto">
									<input type="text" placeholder="mm/yyyy" class="date-input" />
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
									<input type="text" placeholder="Event Name" class="event-name" />
								</div>
								<div class="add-event-input">
									<input type="text" placeholder="Event Time From"
										class="event-time-from" />
								</div>
								<div class="add-event-input">
									<input type="text" placeholder="Event Time To"
										class="event-time-to" />
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
				<!-- ========================ê¸ì°ë ë¶ë¶======================================== -->
				<div class="row_grid_emotion">
					<div class="emotion_Diary_details">
						<div class="emotion_Diary">
							<div class="emotion_Diary_Header">
								<h2>감정일기</h2>
							</div>
							<div class="emotion_Diary_subHeader">
								<h4>오늘 당신의 하루는 어땠나요?</h4>
							</div>
							<div class="emotion_Diary_content">
								<form action="" class="diary_form">
									<textarea name="" id="" cols="50" rows="10"
										placeholder="여기에 오늘의 하루를 정리해 보세요"></textarea>
									<button class="btn">일기 전송하기</button>
								</form>
							</div>
						</div>
					</div>
					<div class="emotion_Diary_bottom">
						<div class="emotion_Diary">
							<div class="emotion_Diary_Header">
								<h2>분석 결과</h2>
							</div>
							<p>분석 결과입니다.</p>
						</div>
					</div>
				</div>
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

	<!-- ë¬ë ¥ ìë°ì¤í¬ë¦½í¸ -->
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
      // const eventsArr = [
      //   {
      //     day: 13,
      //     month: 11,
      //     year: 2022,
      //     events: [
      //       {
      //         title: "Event 1 lorem ipsun dolar sit genfa tersd dsad ",
      //         time: "10:00 AM",
      //       },
      //       {
      //         title: "Event 2",
      //         time: "11:00 AM",
      //       },
      //     ],
      //   },
      // ];

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
      function addListner() {
        const days = document.querySelectorAll(".day");
        days.forEach((day) => {
          day.addEventListener("click", (e) => {
            getActiveDay(e.target.innerHTML);
            updateEvents(Number(e.target.innerHTML));
            activeDay = Number(e.target.innerHTML);
            //remove active
            days.forEach((day) => {
              day.classList.remove("active");
            });
            //if clicked prev-date or next-date switch to that month
            if (e.target.classList.contains("prev-date")) {
              prevMonth();
              //add active to clicked day afte month is change
              setTimeout(() => {
                //add active where no prev-date or next-date
                const days = document.querySelectorAll(".day");
                days.forEach((day) => {
                  if (
                    !day.classList.contains("prev-date") &&
                    day.innerHTML === e.target.innerHTML
                  ) {
                    day.classList.add("active");
                  }
                });
              }, 100);
            } else if (e.target.classList.contains("next-date")) {
              nextMonth();
              //add active to clicked day afte month is changed
              setTimeout(() => {
                const days = document.querySelectorAll(".day");
                days.forEach((day) => {
                  if (
                    !day.classList.contains("next-date") &&
                    day.innerHTML === e.target.innerHTML
                  ) {
                    day.classList.add("active");
                  }
                });
              }, 100);
            } else {
              e.target.classList.add("active");
            }
          });
        });
      }

      todayBtn.addEventListener("click", () => {
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
          year + "년" + " " + months[month] + " " + date + "일";
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
            <h3>ì¼ì  ìì</h3>
        </div>`;
        }
        eventsContainer.innerHTML = events;
        saveEvents();
      }

      //function to add event
      addEventBtn.addEventListener("click", () => {
        addEventWrapper.classList.toggle("active");
      });

      addEventCloseBtn.addEventListener("click", () => {
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
      addEventSubmit.addEventListener("click", () => {
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
	<!-- 달력 자바스크립트 -->
</body>
</html>