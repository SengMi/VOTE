<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter NavBar</title>
</head>
<body>
<ul>
  <li><a href="voterhome.jsp">User Home</a></li>
  <li><a href="">Welcome  <%= (String) request.getAttribute("vote") %></a></li>
  <li><a href="login.jsp">Logout</a></li>
</ul>
</body>
</html>