<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
%>

<%--
	id = bean의 이름
	class = 실제 사용할 클래스의 경로
	scope = bean의 사용범위
	
	스코프속성
	page = 현재 페이지에서만 사용 가능
	request = 다음 페이지까지 사용이 가능
	session = 브라우저가 종료되기 까지 모든 페이지에서 사용이 가능
	application = 톰캣이 종료되기 까지 사용이 가능
--%> 

<jsp:useBean id = "User" class = "bean.example.User" scope = "request"/>

<!-- setProperty의 사용 -->
<jsp:setProperty property="id" name="User" value="<%=id %>"/>
<jsp:setProperty property="pw" name="User" value="<%=pw %>"/>
<jsp:setProperty property="name" name="User" value="<%=name %>"/>
<jsp:setProperty property="email" name="User" value="<%=email %>"/>

<!-- getProperty의 사용 -->
<jsp:getProperty property="id" name="User"/>
<jsp:getProperty property="pw" name="User"/>
<jsp:getProperty property="name" name="User"/>
<jsp:getProperty property="email" name="User"/>