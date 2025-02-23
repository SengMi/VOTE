<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Admin Cookie</title>
</head>
<body>
<%
String admin = null;
Cookie[] acookie = request.getCookies();
for(int i = 0; i < acookie.length; i++) 
{
	if (acookie[i].getName().equals("admin")) 
	{
    acookie[i].setMaxAge(9999);
    response.addCookie(acookie[i]);
	admin = acookie[i].getValue().toString();
	} 	
}
if(admin == null)
{
	Cookie aloginfail = new Cookie("loginfail","loginfail");
	aloginfail.setMaxAge(10);
	response.addCookie(aloginfail);
	response.sendRedirect("login.jsp");
}
%>
</body>
</html>