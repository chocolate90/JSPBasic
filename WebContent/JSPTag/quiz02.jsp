<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 정수를  저장하는 list를 선언
	2. 1~45까지 로또번호를 리스트에 추가
	3. 중복되지 않는 숫자 6개를 저장
	4. 화면에 출력
	
	5. set을 이용해서도 확인
	*/
	
	List<Integer> list = new ArrayList<>();
	Random ran = new Random();
	
	while(list.size() < 6) {
		int r = ran.nextInt(45) + 1;
		if(!list.contains(r)) {
			list.add(r);
		}
	}
	
	// set
	
	Set<Integer> set = new HashSet<>();
	
	while(set.size() < 6) {
		int r = ran.nextInt(45) + 1;
		set.add(r);
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	list:<%= list.toString() %> <br>
	set:<%= set.toString() %>
</body>
</html>