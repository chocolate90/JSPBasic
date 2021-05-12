<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 특정 쿠키 확인하기
	Cookie[] cookies = request.getCookies();
	
	String name = "";	

	if(cookies != null) {
		for(Cookie c : cookies) {
			if(c.getName().equals("user_name")) {
				name = c.getValue();
			}
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	user_name 쿠키 값:<%= name %>
</body>
</html>