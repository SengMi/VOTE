<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Voter Cookie</title>
</head>
<body>
<%
String voter = null;
Cookie[] vcookie = request.getCookies();
for(int i = 0; i < vcookie.length; i++) 
{
	if (vcookie[i].getName().equals("voter")) 
	{
    vcookie[i].setMaxAge(9999);
    response.addCookie(vcookie[i]);
	voter = vcookie[i].getValue().toString();
	} 	
}
if(voter == null)
{	
	Cookie vloginfail = new Cookie("loginfail","loginfail");
	vloginfail.setMaxAge(10);
	response.addCookie(vloginfail);
	response.sendRedirect("login.jsp");
}
%>
</body>
</html>