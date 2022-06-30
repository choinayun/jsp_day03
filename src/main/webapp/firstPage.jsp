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
		// 변수 저장
		pageContext.setAttribute("name", "page");
	
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	
	page : <%= pageContext.getAttribute("name") %><br>
	request : <%= request.getAttribute("name") %><br>
	session : <%= session.getAttribute("name") %><br>
	application : <%= application.getAttribute("name") %><br>
	
	<%
		// 참고 : request객체 forward를 이용해서 다음페이지까지 변수 유지 
		request.getRequestDispatcher("secondPage.jsp")
									.forward(request, response);
	%>

	<hr>
	<a href="secondPage.jsp">secondPage.jsp</a>
	
</body>
</html>







