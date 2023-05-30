<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 야호의 글씨가 점점 커지도록 5번 반복 -->
	<!-- jstl과 el식을 병행 사용 -->
 	<c:forEach begin="1" end="5" step="1" var="i">
	<font size="${i}">야호</font>
	</c:forEach> 
	
	<!-- jstl의 if를 사용해서 i가 짝수 일때만 출력하기 
		el식으로 변수를 출력하거나 연산의 결과를 출력할 수도 있음
	-->
	<c:forEach begin="1" end="5" step="1" var="i">
		<c:if test="${i % 2 == 0}">
			<font size="${i}">${i}야호</font>
		</c:if>
	</c:forEach>
</body>
</html>