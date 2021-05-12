<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Date date = new Date();
	SimpleDateFormat f  = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String now = f.format(date);
	
	// 문자열 저장하는 리스트
	List<String> list = new ArrayList<>();
	
	list.add("java");
	list.add("jsp");
	list.add("javascript");
	// 키 = 숫자, 값 = 문자열 저장하는 해쉬맵
	Map<Integer , String> map = new HashMap<>();
	
	map.put(1, "jung");
	map.put(2, "kim");
	map.put(3, "lee");
	// 숫자 저장하는 셋
	
	Set<Integer> set = new HashSet<>();
	
	set.add(1);
	set.add(2);
	set.add(3);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 지금:<%= now %> <br>
	 리스트:<%= list.toString() %> <br>
	 맵:<%= map.toString() %> <br>
	 셋:<%= set.toString() %> <br>
	 
	 <hr>
	 
	<h4>리스트</h4>
	<% for(int i = 0; i < list.size(); i++) { %>
		<%= list.get(i) %> 	
	<% } %>
	 
	<h4>맵</h4>
	<% 
		Set<Entry<Integer, String>> ent = map.entrySet();
		for(Entry<Integer, String> e : ent) {
	%>
		<%= e.getKey() %>
		<%= e.getValue() %>
	<%	} %>
	
	<h4>셋</h4>
	
	<% for(Integer i : set) { %>
	 	<%= i %>
	<% } %>
</body>
</html>