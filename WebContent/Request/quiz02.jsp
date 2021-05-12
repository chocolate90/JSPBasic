<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>quiz02.jsp</h3>
	
	<% for(int i = 1; i <= 30; i++) { %>
		<a href = "quiz02_result.jsp?num=<%= i%>"><%= i %>번 학생</a> <br>
	<% } %>

</body>
</html>