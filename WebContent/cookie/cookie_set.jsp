<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키는 해당 코드를 만나면 생성되고 브라우저측으로 전달된다.
	// 1. 쿠키 생성 - 생성자의 매개변수로 (쿠키의 이름, 값)이 들어간다.
	Cookie idcoo = new Cookie("user_id", "kkk123");
	Cookie namecoo = new Cookie("user_name", "홍길동");
	// 2. 쿠키 시간(속성) 설정
	idcoo.setMaxAge(10); // 10초
	namecoo.setMaxAge(1800); // 30분
	// 3. response객체에 쿠키 저장
	response.addCookie(idcoo);
	response.addCookie(namecoo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href = "cookie_get.jsp">쿠키 확인해보기</a>

</body>
</html>