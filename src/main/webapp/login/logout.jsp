<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% session.invalidate(); // 현재 존재하는 모든 session 종료 %>
	<script type="text/javascript">
		alert('로그아웃 되었습니다')
		location.href="loginForm.jsp"
	</script>

</body>
</html>