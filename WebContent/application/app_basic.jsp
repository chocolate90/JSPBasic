<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		application 객체는 session과 사용방법은 동일하다.
		생명주기가 톰캣을 stop할 때까지 단 1개가 유지된다.
	*/
	
	int total = 0;
	
	if(application.getAttribute("total") != null) {
		total = (int)application.getAttribute("total");
	}

	total++;
	
	application.setAttribute("total", total);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	머플리케이션 객체에 누적된 토탈 값: <%= total %>
</body>
</html>