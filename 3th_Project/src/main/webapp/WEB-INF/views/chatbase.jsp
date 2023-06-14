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
          <h3 class="title">Online</h3>
          <div class="online-ids">
            <div class="recent-data">
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
          <h3>{{names}}</h3>
          <a href="@">info@maindhelper.com</a>
          <div class="contact-icons">
            <i class="fas fa-phone-alt"></i>
            <i class="fas fa-video"></i>
            <i class="fas fa-image"></i>
          </div>
        </div>
        <div class="Counselor_spec">
          <h3 class="title">주요경력</h3>
          <div class="spec">
            <div class="spec_data">
              <li>
                	임상심리사 2급 실습수련 1년
                <span style="font-size: 10px">(한국종합심리상담교육센터)</span>
              </li>
              <li>psychology 심리학 학사 졸업</li>
            </div>
          </div>
        </div>
        <div class="Counselor_spec">
          <h3 class="title">상담 가능시간</h3>
          <div class="spec">
            <div class="spec_data">
              <li>
                	평일 - 9:00 ~ 18:00
                <span style="font-size: 12px">(점심시간 12:00~ 14:00)</span>
              </li>
              <li>토요일 - 10:00 ~ 17:00</li>
              <li>일요일, 공휴일 휴무</li>
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
      // Get the modal element
      var modal = document.getElementById("modal");

      // Get the button that opens the modal
      var openModalBtn = document.getElementById("openModal");

      // Get the <span> element that closes the modal
      var closeModalSpan = document.getElementsByClassName("close")[0];

      // Function to open the modal
      function openModal() {
        modal.style.display = "block";
      }

      // Function to close the modal
      function closeModal() {
        modal.style.display = "none";
      }

      // Event listener to open the modal when the button is clicked
      openModalBtn.addEventListener("click", openModal);

      // Event listener to close the modal when the close button (x) is clicked
      closeModalSpan.addEventListener("click", closeModal);

      // Event listener to close the modal when the user clicks outside of it
      window.addEventListener("click", function (event) {
        if (event.target == modal) {
          closeModal();
        }
      });
    </script>
  </body>
</html>
