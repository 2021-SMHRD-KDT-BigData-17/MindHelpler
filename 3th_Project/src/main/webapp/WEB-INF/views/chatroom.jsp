<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

{% extends 'chatbase.html' %} {% block content %}

<script type="text/javascript">
  var socketio = io();

  const messages = document.getElementById("messages");

  const createMessage = (name, msg) => {
    const content = `
    <div class="sender">
            <div class="recents">
              <div class="recent-img">
                <img src="resources/assets/img/destination1.jpg" alt="" />
              </div>
              <div class="recent-data">
                <h3>${name}<span class="time">${new Date().toLocaleString()}</span></h3>
                <span>${msg}</span>
              </div>
            </div>
          </div>
          
    `;

    messages.innerHTML += content;
  };

  socketio.on("message", (data) => {
    createMessage(data.name, data.message);
  });

  const sendMessage = () => {
    const message = document.getElementById("message");
    if (message.value == "") return;
    socketio.emit("message", { data: message.value });
    message.value = "";
  };
</script>
{% for msg in messages %}
<script type="text/javascript">
  createMessage("{{msg.name}}", "{{msg.message}}");
</script>
{% endfor %} {% endblock %}
