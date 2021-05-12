<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1. 페이지에서 넘어오는 3가지 값을 받는다.
		2. 아이디랑 비밀번호가 동일하면 로그인 성공이라고 가정 ("user_id", 실제아이디값)의 세선을 생성
		   (user_nick, 실제닉네임)의 세션을 생성
		3. session_welcome으로 리다이렉트 해서 "id(닉네임) 환영합니다"를 출력
		   틀린 경우 로그인 페이지로 리다이렉트
		4. session_welcome에는 로그아웃 a태그를 생성한다.
		   a태그 클릭시 session_logout페이지로 이동해서 세션을 삭제하고 다시 로그인 페이지로 리다이렉트
	*/	
	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)) {

		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);

		response.sendRedirect("session_welcome.jsp");
	} else {
		/* response.sendRedirect("session_login.jsp"); */
%>
	<script>
		/*
			html에서 동적인 부분의 처리는 JS를 이용한다.
			스크립트 사용은 script태그안에 작성한다.
			
		
			let a = 1;
		
			function 이름(b) {
			
			} 
		*/
		
		// JS 내장함수
		// confirm("확인창");
		// alert("아이디 비밀번호를 확인하세요");
		// history.go(-1);
		// location.href = "session_login.jsp"; // redirect
		
		function check() {
			alert("아이디 또는 비밀번호를 확인하세요");
			location.href = "session_login.jsp"
		}
		
		check();
		
	</script>
<%
	}
%>
