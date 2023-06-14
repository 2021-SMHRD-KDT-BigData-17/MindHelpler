<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>::마인드 헬퍼:: | Mind Helper - 당신만을 위한 고민 상담소</title>
    
    <link
      rel="stylesheet"
      href="resources/assets/css/chat.css"
    />
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.0.1/socket.io.js"
      integrity="sha512-q/dWJ3kcmjBLU4Qc47E4A9kTB4m3wuTY7vkFJDTZKjTs8jhyGQnaUrxa0Ytd0ssMZhbNua9hE+E7Qv1j+DyZwA=="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="ChatContainer">
      <div class="ChatSidebar">
        <div class="logo">
          <div class="logo_img">
            <img src="resources/assets/img/logo.png" alt="" />
          </div>
          <div class="logo_data">
            <h3>Mind Helper Counselor System</h3>
            <span>마인드헬퍼상담서비스</span>/span>
          </div>
        </div>
        <div class="online">
          <h3 class="title">현재 접속 중</h3>
          <div class="online-ids">
            <div class="recent-data">
             {{names}}
              <span
                style="
                  display: flex;
                  font-size: 20px;
                  margin-top: 50px;
                  color: #fff;
                  font-weight: bolder;
                "
                >상담 신청자</span
              >
              <ul>
                {% for member in room_members %}
                <li>{{ member }}</li>
                {% endfor %}
              </ul>
            </div>
          </div>
        </div>
        <!-- Message recents-->
        <div class="messages">
          <h3 class="title">Room Code</h3>
          <div class="recents active">
            <div class="recent-data">{{code}}</div>
          </div>
        </div>
        <button id="openModal">Create a Room/Join Room</button>
      </div>
      <!-- Message Box -->
      <div class="message-box">
        <div class="box-top">
          <div class="recents">
            <div class="recent-data">
              <h3>{{code}}</h3>
            </div>
          </div>
        </div>
        <div class="box" id="messages"></div>
        <div class="input-box">
          <input
            type="text"
            name="message"
            id="message"
            placeholder="메시지를 입력해주세요"
          />
          <div class="input-box-bottom">
            <i class="fas fa-microphone"></i>
            <i class="fas fa-paperclip"></i>
            <button id="send-btn" name="message" onClick="sendMessage()">
              <i class="fas fa-paper-plane"></i>ì ì¡
            </button>
          </div>
        </div>
      </div>
      <!-- 상담사 상세 프로필 -->
      <div class="Counselor-contact">
        <div class="contact-detail">
          <img src="resources/assets/img/destination1.jpg" alt="" />
	          {% for member in room_members %}
	          	<h3>{{ member }}</h3>
	          {% endfor %}
        </div>
        <div class="Counselor_spec">
          <h3 class="title">인적사항</h3>
          <div class="spec">
            <div class="user_info">
              <ul>
                <li>성별 : 여</li>
                <li>나이 : 20세</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="Counselor_spec">
          <h3 class="title">진단내역</h3>
          <div class="spec">
            <div class="spec_data">
              <div id="chat_chart"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="modal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <div class="chat_content">{% block content %}{% endblock %}</div>
      </div>
    </div>

    <!-- icon -->
    <script
      src="https://kit.fontawesome.com/08d807a96c.js"
      crossorigin="anonymous"
    ></script>
    
    <!-- 모달창 -->
    <script>
      var options = {
        series: [
          {
            name: "series1",
            data: [31, 40, 28, 51, 42, 109, 100],
          },
          {
            name: "series2",
            data: [11, 32, 45, 32, 34, 52, 41],
          },
        ],
        chart: {
          height: 350,
          type: "area",
        },
        dataLabels: {
          enabled: false,
        },
        stroke: {
          curve: "smooth",
        },
        xaxis: {
          type: "datetime",
          categories: [
            "2018-09-19T00:00:00.000Z",
            "2018-09-19T01:30:00.000Z",
            "2018-09-19T02:30:00.000Z",
            "2018-09-19T03:30:00.000Z",
            "2018-09-19T04:30:00.000Z",
            "2018-09-19T05:30:00.000Z",
            "2018-09-19T06:30:00.000Z",
          ],
        },
        tooltip: {
          x: {
            format: "dd/MM/yy HH:mm",
          },
        },
      };

      var chart = new ApexCharts(
        document.querySelector("#chat_chart"),
        options
      );
      chart.render();
    </script>
  </body>
</html>
