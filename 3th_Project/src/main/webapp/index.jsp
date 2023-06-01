<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 페이지</h1>
   		<form action="${cpath}/SignUp" method="post">
   		ID : <input type="text" id="userId" name="userId"><br>
   		NAME : <input type="text" name="userName"><br>
   		EMAIL : <input type="text" name="userEmail"><br>
   		PW : <input type="text" name="userPw"><br>
   		BIRTHDATE : <input type="text" name="userBirthdate"><br>
   		GENDER : <input type="text" name="userGender"><br>
   		PHONE : <input type="text" name="userPhone"><br>
   		ADMIN_YN : <input type="text" name="adminYn"><br>
   		<input type="submit" value="회원가입">
   	</form>
</body>
</html>