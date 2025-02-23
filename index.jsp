<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
     <style>
        #members {
            background-image: url('image/gp1.jpg');
            height: 800px; 
            background-size: cover; 
            background-position: center; 
            background-repeat: no-repeat; 
        }
   body {
     background-color: aliceblue;
     font-family: 'Times New Roman', Times, serif;
    
}

#singers {
    width: 300px;
    height: 300px;
    background-color: rgba(128, 128, 128, 0.084);
    margin-left: 20px;
    overflow: hidden;
    border-radius: 15px; 
    border: 3px solid transparent; 
    background-image: linear-gradient(white, white), 
                      radial-gradient(circle, rgba(255, 255, 255, 0.5), rgba(0, 0, 0, 0.2));
    background-origin: border-box;
    background-clip: content-box, border-box;
    transition: transform 0.3s ease, box-shadow 0.3s ease, border-color 0.3s ease; 
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
<div id="members"></div>

	    <div>
		<h1 style="text-align:center;">Fan Power Voting System</h1>
	</div>
	
    <div id="singerPart">
        <div id="singers">
            <img src="image/chan1.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
             <img src="image/chan2.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/chan3.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/chan4.jpg" alt="error" width="300px" height="300px">
        </div>
    </div>
    <div id="singerName"><h2 style="text-align: center;"> Chan Myae Oo (Htet Phone Naing) !Htet Phone Naing </h2></div>
    <div id="singerPart">
        <div id="singers">
        	  <img src="image/nay1.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/nay2.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/nay3.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/nay4.jpg" alt="error" width="300px" height="300px">
        </div>
    </div>
    <div id="singerName"><h2 style="text-align: center;"> Bhone Nay Lin Kai (Micky) !Micky</h2></div>
    <div id="singerPart">
        <div id="singers">
        	  <img src="image/william1.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/william2.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/william3.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/WT1.jpg" alt="error" width="300px" height="300px">
        </div>
    </div>
    <div id="singerName"><h2 style="text-align: center;">William Tun !William Tun</h2></div>
    <div id="singerPart">
        <div id="singers">
        	  <img src="image/minkhant1.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/minkhant2.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/minkhant3.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/minkhant4.jpg" alt="error" width="300px" height="300px">
        </div>
    </div>

    <div id="singerName"><h2 style="text-align: center;">Min Khant Hein</h2></div>
    <div id="singerPart">
        <div id="singers">
        	  <img src="image/yeyint1.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/yeyint2.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/yeyint3.jpg" alt="error" width="300px" height="300px">
        </div>
        <div id="singers">
        	  <img src="image/yeyint4.jpg" alt="error" width="300px" height="300px">
        </div>
    </div>
    <div id="singerName"><h2 style="text-align: center;">Ye Yint Thaw</h2></div>
    
    
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
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="register.jsp">How to Vote</a></li>
                        <li><a href="login.jsp">Contact Us</a></li>
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

</body>
</html>