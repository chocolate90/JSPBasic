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
		1. form태그를 이용해서 post형식 이름, 키, 몸무게 3가지를 입력받는다.
		2. quiz01_result.jsp로 데이터를 전송
		3. 해당 페이지에서는 넘어간 값을 BMI지수로 처리한다.
		BMI 공식  = kg / (cm/100 * cm/100) -> double 형이어어야 하고 문자열이기 때문에 형변환 진행
		
		결과
		화면에 이름 키 몸무게 BMI지수 출력
		조건문을 이용해서 BMI 25이상 과체중, 18이하 저체중 나머지 정상 
	 -->

	<form action="quiz01_result.jsp" method = "post">
		이름: <input type = "text" name = "name"> <br>
		키 : <input type = "text" name = "height"> <br>
		몸무게 : <input type = "text" name = "weight"> <br>
		
		<input type = "submit" value = "확인">
	</form>
</body>
</html>