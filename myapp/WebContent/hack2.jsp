<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="3; URL='http://172.30.1.32/myapp/loginAction.jsp?userID=test&userPW=test'">
<meta http-equiv="Set-Cookie" content="JSESSIONID=CC7A475383A6805FFB1F03D62F6D9D96">
<meta charset="utf-8">
<title>���� ��ȭ</title>
</head>
<body>
<%
PrintWriter script = response.getWriter();
script.println("<script>");
script.println("alert('������ ��ȭ�Ǿ����ϴ�.')");
script.println("</script>");
%>
</body>
</html>