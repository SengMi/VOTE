<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Voter Login</title>
    <link rel="stylesheet" href="css/navbar.css">
    <style>
 body {
            background-color: aliceblue;
            font-family: Arial, sans-serif;
        }
        #img {
        	
        	background-color: transparent;
            width: 200px;
            height: 200px;
            display: flex;
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
            /* Center the div itself */
             margin: 0 auto;
            /* Add box shadow */
            border-radius: 20px; /* Optional: rounded corners for the container */
        }
        #img img{
         margin-top:50px;
                	
        
        }

        .container {
            line-height: 50px;
            max-width: 400px; 
            margin: 80px auto; 
            padding: 20px;
            background-color: white; 
            border-radius: 8px; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
            text-align: center;
        }

        h1 {
            color: #333; 
            margin-bottom: 20px; 
        }

        .candidate {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #f9f9f9;
            height: auto; /* Adjust height based on content */
        }

        h3 {
            color: #444; 
            margin: 30px 0; 
        }

        b {
            color: limegreen; 
            font-weight: bold; 
        }

        /* Add this CSS to style the image */
        img {
            width: 100%; /* Make image responsive */
            height: 100%; /* Maintain aspect ratio */
            border-radius: 15px; /* Set border radius for images */
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <%@ include file="checkadmincookie.jsp" %>
    <%@ include file="msgcookie.jsp" %>

    <div class="container">
        <h1>All Candidates Votes</h1>

<%
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    ResultSet rs1 = null;
    ResultSet rs2 = null;
    ResultSet rs3 = null;
    ResultSet rs4 = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingappj2ee", "root", "Akl#123$");
        
        stmt = con.createStatement();
        rs = stmt.executeQuery("SELECT * FROM candidate where id=1");
        
        while (rs.next()) {
           String candidateName = rs.getString(2);
           String totalVotes = rs.getString(3);
           String imgPath = rs.getString(4); // Retrieve image path from database
           byte[] imgData = rs.getBytes(4); 
           String imgBase64="";
           if (imgData != null) {
               // Convert byte array to Base64 string
               imgBase64 = java.util.Base64.getEncoder().encodeToString(imgData);
           }
%>
           <div class="candidate">
               <div id="img">
           	<img src="image/cmoo.jpg" alt="error" width="200px" height="200px">
           	
           	
           	 
           	</div>
               <h3><%= candidateName %>: Total Votes = <b><%= totalVotes %></b></h3>
           </div>
<%
       }
        
        
rs1 = stmt.executeQuery("SELECT * FROM candidate where id=2");
        
        while (rs1.next()) {
           String candidateName = rs1.getString(2);
           String totalVotes = rs1.getString(3);
           String imgPath = rs1.getString(4); // Retrieve image path from database
           byte[] imgData = rs1.getBytes(4); 
           String imgBase64="";
           if (imgData != null) {
               // Convert byte array to Base64 string
               imgBase64 = java.util.Base64.getEncoder().encodeToString(imgData);
           }
%>
           <div class="candidate">
               <div id="img">
           	<img src="image/pnlk.jpg" alt="error" width="200px" height="200px">
           	
           	
           	 
           	</div>
               <h3><%= candidateName %>: Total Votes = <b><%= totalVotes %></b></h3>
           </div>
<%
       }
       
        
        
        rs2 = stmt.executeQuery("SELECT * FROM candidate where id=3");
                
                while (rs2.next()) {
                   String candidateName = rs2.getString(2);
                   String totalVotes = rs2.getString(3);
                  
                
        %>
                   <div class="candidate">
                       <div id="img">
                   	<img src="image/Wtt.jpg" alt="error" width="200px" height="200px">
                   	
                   	
                   	 
                   	</div>
                       <h3><%= candidateName %>: Total Votes = <b><%= totalVotes %></b></h3>
                   </div>
        <%
               }
                
                
                
                rs3 = stmt.executeQuery("SELECT * FROM candidate where id=4");
                        
                        while (rs3.next()) {
                           String candidateName = rs3.getString(2);
                           String totalVotes = rs3.getString(3);
                          
                %>
                           <div class="candidate">
                               <div id="img">
                           	<img src="image/mkhh.jpg" alt="error" width="200px" height="200px">
                           	
                           	
                           	 
                           	</div>
                               <h3><%= candidateName %>: Total Votes = <b><%= totalVotes %></b></h3>
                           </div>
                <%
                       }
                        
                        
                        rs4 = stmt.executeQuery("SELECT * FROM candidate where id=5");
                                
                                while (rs4.next()) {
                                   String candidateName = rs4.getString(2);
                                   String totalVotes = rs4.getString(3);
                                
                        %>
                                   <div class="candidate">
                                       <div id="img">
                                   	<img src="image/ytt.jpg" alt="error" width="200px" height="200px">
                                   	
                                   	
                                   	 
                                   	</div>
                                       <h3><%= candidateName %>: Total Votes = <b><%= totalVotes %></b></h3>
                                   </div>
                        <%
                               }
       
        
        
        
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (con != null) con.close();
    }
%>

    </div>

</body>
</html>