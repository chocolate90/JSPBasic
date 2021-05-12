<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		앞에서 넘어온 값을 받아서 평균을 구한다.
		평균이 60점 이상이라면 quiz01_ok.jsp로 이동해서
		~~님 평균xx점 합격입니다. 출력
		
		평균이 60점미만인 경우에는 quiz01_no.jsp로 이동해서
		~~님 평균xx점 불합격입니다 출력
		
		조건: 세션을 사용하지 않는다.
	*/
	
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String math = request.getParameter("math");
	String eng = request.getParameter("eng");
	
	int k = Integer.parseInt(kor);
	int m = Integer.parseInt(math);
	int e = Integer.parseInt(eng);
	
	double avg = (k + m + e) / 3;
	
	request.setAttribute("name", name);
	request.setAttribute("avg" , avg);
	
	if(avg >= 60) {
		request.getRequestDispatcher("quiz01_ok.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("quiz01_no.jsp").forward(request, response);
	}
%>