<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Voter Registration</title>
     <link rel="stylesheet" type="text/css" href="css/navbar.css">
     <link rel="stylesheet" href="css/register.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
     <style>
     #bd{
    width:100%;
    height: 700px;
    background-image: url('image/rg-gp.jpg');
    background-repeat: no-repeat;
    background-size:cover;
    font-family: 'Arial', sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    background-color:rgba(240, 248, 255, 0.557);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
    font-family: 'Times New Roman', Times, serif;
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

.input-group {
    margin-bottom: 15px;
}

     
     </style>
     
    
    
    <%
        String msg = null;
        String fmsg = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("userAdded")) {
                    msg = "User registered successfully!";
                } else if (cookie.getName().equals("userNotAdded")) {
                    fmsg = "User registration failed!";
                }
            }
        }
    %>
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
            <form action="addUser" method="post">
                <%
                    if (msg != null) {
                %>
                    <p style="color: green"><%= msg %></p>
                <%
                    }
                %>
                <%
                    if (fmsg != null) {
                %>
                    <p style="color: red"><%= fmsg %></p>
                <%
                    }
                %>
    <div id="bd">
    <div class="form-container">
            <h1>Register</h1>

            <div class="input-group">
                <label for="name" style="font-size:20px;">User Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter Your User Name" required>
            </div>

            <div class="input-group">
                <label for="password" style="font-size:20px;">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter Your Password" required>
            </div>

            <div class="input-group">
                <label for="email" style="font-size:20px;">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter Your Email" required>
            </div>

            <div class="input-group">
                <label for="phone" style="font-size:20px;">Phone No:</label>
                <input type="text" id="phone" name="phone" placeholder="Enter Your Phone No" required>
            </div>
            

            <div class="input-group">
                <input type="submit" value="Signup">
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
