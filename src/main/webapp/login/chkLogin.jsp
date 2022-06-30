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
		String id="1", pwd="1"; // 저장 되어 있는 값 
		String uid = request.getParameter("id"); // 사용자가 입력해서 넘겨준 값 
		String upwd = request.getParameter("pwd");
		
		// 비교
		if(id.equals(uid) && pwd.equals(upwd)){
			session.setAttribute("id", "홍길동"); // 로그인 성공시 session 생성 
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("loginForm.jsp");
		}
	%>

</body>
</html>







