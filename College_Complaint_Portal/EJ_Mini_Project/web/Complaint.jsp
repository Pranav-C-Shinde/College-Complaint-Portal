<%-- 
    Document   : Complaint
    Created on : 19 Sep, 2021, 5:42:15 PM
    Author     : Pranav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body style="font-family: 'Poppins', sans-serif;">
    
    <nav class="navbar">
    <div class="content">
    <div></div>
      <ul class="menu-list">
        
        <li><a href="Login.jsp"><img style="height: 80px; width: 80px" src="power.png"> </a></li>
        
      </ul>
      <div class="icon menu-btn">
        <i class="fas fa-bars"></i>
      </div>
    </div>
  </nav>
    
  <div class="banner3-image"> </div>
    <div class="banner3-text">
        <h1 style="font-size: 70px">We Listen</h1>
    </div>
<header style = "background-image: radial-gradient(#D6EAF8,#EBF5FB);"> 
<div class="content">
      <div class="title" align = "center"><br>Complaints</div>
        
    <br><br><br><br><br>
    
    <center>
    <label style="font-size: 24px;padding: 10px">Enter Your Complaint: </label>
        <br><br><br><br>
        
        <textarea type="text" form="form3" style="font-size: 16px; width: 300px; height: 60px; margin-left: 10px" name="carea">
        </textarea>
    </center>
    
    <center>
     <form action="ComplaintSave.jsp" name="form3" id="form3">
        <br><br><br><br><br>
        
      <input type="submit" style=" width: 120px; height: 45px; background: #FF7043" class="btn">
        
        <a href="Status.jsp"><button type="button" style=" width: 120px; height: 45px; background: #FF7043"value="Sign Up" class="btn">Status</button></a>
    </form>
  </center>
        <br><br><br><br><br><br>
</div>
 <br><br>
 </header>

</body>
</html>
