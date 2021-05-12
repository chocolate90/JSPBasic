<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String lang = request.getParameter("lang");
	String math = request.getParameter("math");
	String eng = request.getParameter("eng");
	
	if (lang.equals("") || math.equals("") || eng.equals("")) {
		response.sendRedirect("quiz_re.jsp");
	} else {
	
	int l = Integer.parseInt(lang);
	int m = Integer.parseInt(math);
	int e = Integer.parseInt(eng);
	
	int result = (l + m + e)/3;
	
	if (result >= 60) {
		response.sendRedirect("quiz_pass.jsp");
	} else if (result < 60) {
		response.sendRedirect("quiz_fail.jsp");
	}
	}  
%>