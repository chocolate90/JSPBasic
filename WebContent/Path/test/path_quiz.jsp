<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그를 이용해서 req_video페이지 상대경로, 절대경로 이동-->
	
	<a href = "../../Request/req_video.jsp">req_vidoe상대경로</a> <br>
	<a href = "/JSPBasic/Request/req_video.jsp">req_video절대경로</a> <br>
	
	<hr>
	
	<!-- a태그를 이용해서 TestServlet 맵핑경로를 확인해서 상대경로 절대경로 이동 -->
	
	<a href = "../../kkk">TestServlet상대경로</a> <br>
	<a href = "/JSPBasic/kkk">TestServlet절대경로</a> <br>
	
	<hr>
	
	<!-- img태그로 java.png파일을 상대경로 절대경로 -->
	
	<img src="../../Request/img/java.png" width = "200px"> <br> 
	java.png상대경로 <br>
	<img src="/JSPBasic/Request/img/java.png" width = "200px"> <br>
	java.png절대경로
	
</body>
</html>