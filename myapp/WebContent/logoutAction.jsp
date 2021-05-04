<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹사이트</title>
</head>
<body>
	<%
		session.invalidate();
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for (int i=0; i < cookies.length; i++){
				if(cookies[i].getName().equals("login_time")){
					 Cookie cookie = new Cookie("login_time","");
					 cookie.setMaxAge(0);
					 response.addCookie(cookie);
				}
				if(cookies[i].getName().equals("auth")){
					 Cookie cookie = new Cookie("auth","");
					 cookie.setMaxAge(0);
					 response.addCookie(cookie);
				}
			}
		}
	%>
	<script type="text/javascript">
		location.href = 'login.jsp';
	</script>
</body>
</html>