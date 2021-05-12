<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 
		a태그에 강의 목록을 식별할 수 있는 매개값을 넘긴다.
		두번째 화면에서는 식별할 값 별로 해당 동영상만 보여지도록 처리
	 -->
	
	<div align = "center">
		<h3>신나는 강의 목록</h3>
		<table border = "1">
			<tr>
				<th>이미지</th>
				<th>강의명</th>
				<th>내용</th>
				<th>일자</th>
			</tr>
			<tr>
				<th>
					<a href = "req_video_result.jsp?name=JAVA"><img alt="자바" src="img/java.png" width = "200"></a>
				</th>
				<th>자바 강의</th>
				<th>
					<a href = "req_video_result.jsp?name=JAVA">자바 기본 문법을 학습합니다.</a>
				</th>
				<th>2020-01-01</th>
			</tr>
			<tr>
				<th>
					<a href = "req_video_result.jsp?name=JS"><img alt="자바 스크립트" src="img/javascript.png" width = "200"></a>
				</th>
				<th>JS 강의</th>
				<th>
					<a href = "req_video_result.jsp?name=JS">JS 기본 문법을 학습합니다.</a>
				</th>
				<th>2020-02-02</th>
			</tr>
			<tr>
				<th>
					<a href = "req_video_result.jsp?name=ORACLE"><img alt="오라클" src="img/oracle.png" width = "200"></a>
				</th>
				<th>오라클 강의</th>
				<th>
					<a href = "req_video_result.jsp?name=ORACLE">SQL문을 학습합니다.</a>
				</th>
				<th>2020-03-03</th>
			</tr>
		</table>
	</div>
	
</body>
</html>