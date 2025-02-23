<%@page import="entity.User"%>
<%@page import="conn.DBConnect"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voter Login</title>
	<link rel="stylesheet" href="css/navbar.css">
	<style type="text/css">
	table,tr,th,td{
	border:1px solid black;
	}
	th{
	width:100px;
	
	
	}
	td{
	width:200px;
	text-align:center;}
	</style>
	
</head>
<body>
    <%@ include file="checkvotercookie.jsp" %>
    <%
        UserDAO dao = new UserDAO(DBConnect.getConn());
        User user = dao.getVoterByEmail(voter);
    %>

    <nav>
        <ul>
            <li><a href="index.jsp">User Home</a></li>
            <li><a href="voterhome.jsp">Welcome <%= user.getName() %></a></li>
            <li><a href="login.jsp">Logout</a></li>
        </ul>
    </nav>
    


    <%@ include file="msgcookie.jsp" %>

    <div class="container">
        <div class="layout">
            <div class="col col-main" style="float: left; width: 60%;">
                <h1 style="text-align:center;">Voter Details</h1>
                <img src="image/user.png" height="125px" alt="User Icon" style="margin-left:44%;padding-bottom:50px;">
                <table style="margin:auto;border-collapse:collapse;height:300px;">
                    <tr>
                        <th>Id:</th>
                        <td><%= user.getId() %></td>
                    </tr>
                    <tr>
                        <th>Name:</th>
                        <td><%= user.getName() %></td>
                    </tr>
                    <tr>
                        <th>Email Id:</th>
                        <td><%= user.getEmail() %></td>
                    </tr>
                    <tr>
                        <th>Phone No:</th>
                        <td><%= user.getPhone() %></td>
                    </tr>
                    <tr>
                        <th>Status:</th>
                        <td><%= user.getStatus() %></td>
                    </tr>
                </table>
            </div>

            <div class="col col-complementary" style="float: right; width: 35%;">
                <% try { %>
                    <% if (user.getStatus().equals("Voted") && msg == null) { %>
                        <h1 style="color: green">You have already voted.</h1>
                    <% } else if (msg != null) { %>
                        <h1 style="color: green"><%= msg %></h1>
                    <% } else { %>
                        <% if (fmsg != null) { %>
                            <h1 style="color: red"><%= fmsg %></h1>
                        <% } %>
                        <h1>Select a Candidate:</h1>
                        <form action="addVote" method="post" style="line-height:50px;">
                            <input value="<%= voter %>" name="voter" type="hidden">
                            <div>
                                <input type="radio" name="Candidates" value="Chan Myae Oo"> Chan Myae Oo<br>
                                <input type="radio" name="Candidates" value="Bhone Nay Lin Kai"> Bhone Nay Lin Kai<br>
                                <input type="radio" name="Candidates" value="William Tun"> William Tun<br>
                                <input type="radio" name="Candidates" value="Min Khant Hein"> Min Khant Hein<br>
                                <input type="radio" name="Candidates" value="Ye Yint Thaw"> Ye Yint Thaw<br>
                            </div>
                            <input type="submit" value="Vote" class="btn">
                        </form>
                    <% } %>
                <% } catch (Exception e) {
                    e.printStackTrace();
                } %>
            </div>
        </div>
        <div style="clear: both;"></div> 
    </div>
</body>
</html>