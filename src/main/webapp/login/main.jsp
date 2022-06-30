<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		if(session.getAttribute("id") == null){ // session 값이 없을 경우
			response.sendRedirect("loginForm.jsp");
		}
	%>

	로그인 성공한 사용자만 접근 가능합니다. <br>
	<%= session.getAttribute("id") %> 님 환영 합니다 !
	
	<a href="logout.jsp"> 로그아웃 </a>
	<a href="loginForm.jsp"> 로그인 이동 </a>
	
</body>
</html>