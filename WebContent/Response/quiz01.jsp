<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		1. form태그를 이용해서 post 형식으로 이름 국어 수학 영어 점수를 받는다.
		2. quiz02 페이지로 전송해서 평균을 구하고
		3. 평균이 60 이상이라면 합격페이지로 이동
		4. 60 미만이라면 불합격 페이지로 이동
		5. 넘어가는 값이 공백이라면 다시 받도록 리다이렉트 한다. (공백이라면)
	--%>
	
	<form action="quiz01_result.jsp" method = "post">
		<input type = "text" placeholder = "이름" name = "name" required> <br>
		<input type = "text" placeholder = "국어" name = "lang"> <br>
		<input type = "text" placeholder = "수학" name = "math"> <br>
		<input type = "text" placeholder = "영어" name = "eng"> <br>
		<input type = "submit" value = "확인">
	</form> 
</body>
</html>