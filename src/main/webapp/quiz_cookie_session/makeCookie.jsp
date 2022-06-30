<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script type="text/javascript">
		window.close()
	</script>
	
	<%
		// 쿠키 생성
		Cookie cook 
				= new Cookie("makeCookie", "myCookie");
		cook.setMaxAge(5); 
		response.addCookie(cook);	
	%>


</body>
</html>