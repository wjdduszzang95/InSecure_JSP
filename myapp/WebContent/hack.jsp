<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>보안 강화</title>
</head>
<body>
	<%
	   File Text = new File("hack.txt");
	   String sessionID = session.getId();
	   try{
		   FileWriter fw = new FileWriter("hack.txt", false);		   
		   BufferedWriter bw = new BufferedWriter(fw);
		   bw.write(sessionID);
		   bw.close();
	   } catch (IOException e) {
		   e.printStackTrace();
	   }
 		if(Text.length() != 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('보안이 강화되었습니다.')");
			script.println("location.href='http://localhost/myapp/loginAction.jsp?userID=test&userPW=test'");
			script.println("</script>");
		}  
	%>
</body>
</html>