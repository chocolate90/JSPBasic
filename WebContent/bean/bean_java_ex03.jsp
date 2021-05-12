<%@page import="bean.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User user = (User)request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디: <%= user.getId() %> <br>
	이메일: <%= user.getEmail() %>
</body>
</html>