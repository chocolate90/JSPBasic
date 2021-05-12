<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	// double d = Double.parseDouble(height);
	
	double w = Integer.parseInt(weight);
	double h = Integer.parseInt(height);
	
	double bmi = w / (h / 100 * h / 100);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	이름: <%= name %> <br>
	키: <%= height %> <br>
	몸무게: <%= weight %> <br>
	BMI 지수: <%= bmi %> <br>
	
	당신은
	<% if(bmi >= 25) { %>
		과체중 입니다.
	<% } else if(bmi <= 18) { %>
		저체중 입니다.
	<% } else { %>
		정상 입니다.
	<% } %>
</body>
</html>