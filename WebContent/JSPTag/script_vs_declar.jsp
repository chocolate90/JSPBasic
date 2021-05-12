<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	// 선언자와 스크립트릿의 차이점
	// 선언자 - 멤버변수, 메서드를 선언할 때 사용(페이지에서 한번만 실행된다.)
	
	public int total = 0;
%>

<%
	// 스크립트릿은 페이지 실행마다 실행된다.
	int each = 0;

	total++;
	each++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		선언자: <%= total %> <br>
		스크립트: <%= each %>
	</p>
</body>
</html>