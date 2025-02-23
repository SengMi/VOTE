<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kill Cookie</title>
</head>
<body>
<%
String logoutmsg = null;

try{
Cookie[] cookies2 = request.getCookies();
for(int i = 0; i < cookies2.length; i++) 
{
	if (cookies2[i].getName().equals("voter")) 
	{
    cookies2[i].setMaxAge(0);
    response.addCookie(cookies2[i]);
	logoutmsg = "Logout successfully";
	} 
	
	if (cookies2[i].getName().equals("admin")) 
	{
    cookies2[i].setMaxAge(0);
    response.addCookie(cookies2[i]);
	logoutmsg ="Logout successfully";
	} 		
}
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>