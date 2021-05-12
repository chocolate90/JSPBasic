<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String nick = request.getParameter("nick");
	String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디: <%= id %> <br>
	닉네임: <%= nick %> <br>
	나이: <%= age %>
</body>
</html>