<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 스크립트릿과 선언자를, 표현식을 적절히 사용 -->
<%!
	public int count = 0;
	/* Random r = new Random(); */
%>

<%
	/* int ran = r.nextInt(8) +2; */
	int ran = (int)(Math.random() * 8) + 2;
	/* count++; */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- <%= count %>번째 방문자 입니다. <br> --%>
	<%= ++count %>번째 방문자 입니다. <br>
	<% if (count % 10 == 0) { %>
		당첨되셨습니다.
	<%} %>
	<hr>
	
	<h3>랜덤 구구단 <%= ran %> 단</h3>
	
	이번에 니온 구구단 <%= ran %>단 입니다. <br>
	
	<% for(int i = 1; i < 10; i++) { %>
		<%= ran %> * <%= i %> = <%= ran*i %> <br>
	<% } %>

</body>
</html>