<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>loginForm.jsp<br>

	<% if(session.getAttribute("id") != null){ %>
		<%= session.getAttribute("id") %>님 로그인 상태입니다. 
	<% }else { %>	
	<form action="chkLogin.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" value="로그인">
	</form>
	
	<% } %>

</body>
</html>