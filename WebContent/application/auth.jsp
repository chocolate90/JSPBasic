<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UUID uuid = UUID.randomUUID();
	
	String[] arr = uuid.toString().split("-");
	
	session.setAttribute("auth", arr[1]);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>인증 페이지</h2>
	<hr>
	
	<form action="auth_ok.jsp" method = "post">
		<h4>인증문자: <%= arr[1] %></h4>
		인증문자 입력: <input type = "text" name = "code" size = "10"> <br>
		<input type = "submit" value = "확인">
	</form>
</body>
</html>