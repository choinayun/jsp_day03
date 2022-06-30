<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	안녕하세요
	
	<%
		// 쿠키값이 없으면 팝업창 띄우기 (있으면 띄우지않기)
		boolean bool = true;
	
		// 사용자가 갖고 있는 모든 쿠키를 가져오는 것  
		Cookie[] cookieArr = request.getCookies();
	
		if( cookieArr != null) {
			for(Cookie c : cookieArr) {
				out.print("name : " + c.getName() + "<br>");
				out.print("value : " + c.getValue() + "<hr>");
				if(c.getName().equals("testCookie")) {
					bool = false; 
				}
			}
		/* for(int i=0; i < cookieArr.length; i++){
				cookieArr[i].getName(); 
			} */
		}
	
		// cookie 를 만들 땐 cookie 객체 사용
		Cookie cook 
				= new Cookie("testCookie", "myCookie");
		cook.setMaxAge(5); // 쿠키 시간 설정 (5초)
		response.addCookie(cook); // 만든 쿠키 불러오기 
	%>	
	
	<% if(bool) { %>
		<script type="text/javascript">
			open("popup.jsp", "", 
					"width=300, height=200, top=500, left=500");
		</script>	
	<% } %>
		
</body>
</html>








