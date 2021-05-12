<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 
	선언자, 스크립트릿을 사용 
	어피치, 라이언, 제이지, 무지, 튜브, 프로도, 콘, 네오
	랜덤하게 선택된 카카오 프렌즈를 list에 추가하는 형식으로 작성한다.
--%>
<%!
	String[] jobs = {"어피치", "라이언", "제이지", "무지", "프로도", "튜브" , "콘", "네오"};
	List<String> list = new ArrayList<>(); // 누적될 리스트
	Random ran = new Random();
	int total = 0;
%>
<%
	int r = ran.nextInt(jobs.length);
	list.add(jobs[r]);
	
	int count = 0; // 중복 인원 체크
	for(String s : list) {
		if(s.equals(jobs[r])) {
			count++;
		}
	}
	
	total++;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h4><%= jobs[r] %> 친구가 입장했습니다</h4>
	<h3>현재 중복인원 <%=count %>명</h3>
	
	현재인원:<%= list.toString() %> <%= total %> 명
	
	<%
		// 리스트 초기화
		if(list.size() == 10) {
			list.clear();
		}
	
		if(total == 10) {
			total = 0;
		}
	%>

</body>
</html>