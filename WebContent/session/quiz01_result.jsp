<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "session.example.User" %>
<%
	/*
		1. 사용자가 입력한 값을 받은 다음에 값을 저장할 수 있는 자바 클래스(getter, setter)를 생성한다.
		2. 받은 값을 User 클래스에 저장하고 저장한 User 클래스를 세션에 저장한다.
		3. quiz01_ok 페이지로 리다이렉트 (세션에 저장된 아이디, 이름만 뽑아서 출력)
	*/
	request.setCharacterEncoding("utf-8");

	User user = new User();

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String region = request.getParameter("region");
	
	user.setId(id);
	user.setPw(pw);
	user.setName(name);
	user.setEmail(email);
	user.setRegion(region);

	// User user = new User(id, pw, name, email, region);
	
	session.setAttribute("User", user);
	
	response.sendRedirect("quiz01_ok.jsp");
	
	
%>