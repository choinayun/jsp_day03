<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	기본 페이지
	
	<%
	boolean bool = true; 
		
	// 모든 쿠키값 가져오기 
	Cookie[] cookieArr = request.getCookies();
	
	if( cookieArr != null) {
		for(int i=0; i < cookieArr.length; i++) {
			out.print("name : " + cookieArr[i].getName() + "<br>" );
			out.print("value : " + cookieArr[i].getValue() + "<hr>" );
			if(cookieArr[i].getName().equals("makeCookie")) {
				bool = false; 
			}
		}	
	}
		
	%>
	
	<% if(bool) { %>
		<script type="text/javascript">
			open("popup.jsp", "", 
					"width=400, height=300, top=500, left=500");
		</script>
	<% } %>

</body>
</html>