<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body style="font-family: 'Poppins', sans-serif;">
    
  <div class="banner-image"> </div>
  <div class="banner-text">
      <br><br><br><br><br><br>
    <h1 style="font-size: 80px">Welcome</h1>
      <p style="font-size: 20px">To</p> 
      <p style="font-size: 20px">College Complaint Form</p>   
</div>  
    
<header style = "background-image: radial-gradient(#D6EAF8,#EBF5FB);"> 
<div class="content">
      <div class="title" align = "center"><br>How may we assist you?</div>
        
    <br><br><br><br><br>
    <center>
     <form action="Validate.jsp" name="form1" id="form1">
        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px">Username: </label>
        <input type="text" style="font-size: 24px; width: 200px; height: 30px;" name="uname">
        <br><br><br>
        
        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px ">Password: </label>
        <input type="password" style="font-size: 24px; width: 200px; height: 30px; margin-left: 5px" name="upass">
        <br><br><br><br><br>
      <input type="submit" style=" width: 120px; height: 45px;" class="btn">
        
        <a href="Register.jsp"><button type="button" style=" width: 120px; height: 45px; "value="Sign Up" class="btn">Sign Up?</button></a>
    </form>
   </center>
        <br><br><br><br><br><br>
</div>
 <br><br>
 </header>

</body>
</html>
