<%@page import="bean.example.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	
	User user = new User();
	user.setId(id);
	user.setEmail(email);
	
	request.setAttribute("user", user);
	
	request.getRequestDispatcher("bean_java_ex03.jsp").forward(request, response);
%>