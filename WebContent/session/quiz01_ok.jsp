<%@page import="session.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User u = (User)session.getAttribute("User");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디: <%= u.getId() %> <br>
	이름: <%= u.getName() %> <br>
</body>
</html>