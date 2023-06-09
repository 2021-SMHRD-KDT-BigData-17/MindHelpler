<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

{% extends 'chatbase.html' %} {% block content %}
<form method="post" class="chat_buttons">
  <h3>Enter The Chat Room</h3>
  <div>
    <label>Name:</label>
    <input
      type="text"
      placeholder="Pick a name!"
      name="name"
      value="{{name}}"
    />
  </div>
  <div class="chat_join">
    <input type="text" placeholder="Room Code" name="code" value="{{code}}" />
    <button type="submit" name="join">Join a Room</button>
  </div>
  <button type="submit" name="create" class="chat_create-btn">
    Create a Room
  </button>
  {% if error %}
  <ul>
    <li>{{error}}</li>
  </ul>
  {% endif %}
</form>
{% endblock %}
