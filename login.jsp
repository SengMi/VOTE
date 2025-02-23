<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Login</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/navbar.css">
    <style>
#bd1 {
    position: relative;
    background-image: url('image/lg-gp.jpg');
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
    overflow: hidden;
    width: 100%;
    font-family: 'Times New Roman', Times, serif;
}


.login-container {
    position: relative;
    background-color: rgba(240, 248, 255, 0.655);
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 300px;
    z-index: 2;
}
input[type="submit"] {
    margin-left: 35%;
    width: 30%;
    padding: 10px;
    background-color:aliceblue;
    border: none;
    border-radius: 5px;
    color: black;
    font-size: 14px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
input[type="submit"]:hover {
    background-color:rgba(128, 128, 128, 0.61);
}

    </style>
    

</head>
<body>
<nav>
<ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="register.jsp">Register</a></li>
  <li><a href="login.jsp">Login</a></li>
    <li><a href="about.jsp">About</a></li>
</ul>
</nav>
<%@ include file = "msgcookie.jsp" %>
<%@ include file = "killcookie.jsp" %>
<form action = "checkLogin" method = "post">
<%
if(msg != null)
{%>
<p style="color: green"><%=msg %></p>
<% }%>
<%
if(fmsg != null)
{%>
<p style="color: red"><%=fmsg %></p>
<% }%>
<%
if(logoutmsg != null)
{%>
<p style="color: green"><%=logoutmsg %></p>
<% }%>

<div class="main">
        <div id="bd1">
            <div class="background-overlay"></div>
            <div class="login-container">
                <h1>Login</h1>
                    <div class="input-group">
                        <label for="email" style="font-size:20px;">Email Id:</label>
                        <input type="text" id="email" placeholder="Enter Your Email Id" name="email">
                    </div>
                    <div class="input-group">
                        <label for="password" style="font-size:20px;">Password:</label>
                        <input type="password" id="password" placeholder="Enter Your Password" name="password">
                    </div>
                    <div class="input-group">
                        <input type="submit" value="Login">
                    </div>
            </div>
        </div>
    </div>
       <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section about">
                    <h3>About Us</h3>
                    <p>
                        We are committed to ensuring a fair, transparent, and accessible voting process for everyone. Our platform is dedicated to making voting easy and secure.
                    </p>
                </div>
    
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="/home">Home</a></li>
                        <li><a href="/about">About</a></li>
                        <li><a href="/how-to-vote">How to Vote</a></li>
                        <li><a href="/faq">FAQ</a></li>
                        <li><a href="/contact">Contact Us</a></li>
                    </ul>
                </div>
    
                <div class="footer-section contact">
                    <h3>Contact Us</h3>
                    <ul>
                        <li><i class="fas fa-phone"></i> +1 234 567 890</li>
                        <li><i class="fas fa-envelope"></i> <a href="mailto:fanpower@votingwebsite.com">fanpower@votingwebsite.com</a></li>
                        <li><i class="fas fa-map-marker-alt"></i> 123 Voting St, Democracy City, MDY</li>
                    </ul>
                </div>
    
                <div class="footer-section social">
                    <h3>Follow Us</h3>
                    <p>Stay connected with us on social media for the latest updates:</p>
                    <a href="https://www.facebook.com/YourPage" target="_blank" aria-label="Facebook"><i class="fab fa-facebook-f">
                    </i></a>
                    <a href="https://www.twitter.com/YourPage" target="_blank" aria-label="Twitter"><i class="fab fa-twitter"></i>
                    </a>
                    <a href="https://www.instagram.com/YourPage" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.linkedin.com/company/YourPage" target="_blank" aria-label="LinkedIn"><i class="fab fa-linkedin"></i></a>
                </div>
                
            </div>
    
            <div class="footer-bottom">
                <p>&copy; 2024 VotingWebsite.com. All rights reserved.</p>
            </div>
        </div>
    </footer>
    
    
</form>
</body>
</html>