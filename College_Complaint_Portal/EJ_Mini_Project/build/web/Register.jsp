<%-- 
    Document   : Register
    Created on : 19 Sep, 2021, 5:39:58 PM
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
    
  <div class="banner2-image"> </div>  
    
<header style = "background-image: radial-gradient(#D6EAF8,#EBF5FB);"> 
<div class="content">
      <div class="title" align = "center"><br>Registration</div>
        
    <br><br>
    <center>
        
        <label style="font-size: 24px; color:#145DA0" name="disp3" value=""> 
           <% HttpSession ses = request.getSession(); 
           
           if(ses.getAttribute("uname") == null || ses.getAttribute("uname").equals(""))
           out.print("");
           else
           out.print(ses.getAttribute("uname")); 
           
           ses.removeAttribute("uname");
           %>
        </label>
        <br><br><br>
        
       <form action="InsertDB.jsp" name="form2" id="form2"> 
        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px">Name: </label>
        <input type="text" style="font-size: 24px; width: 200px; height: 30px; margin-left: 40px" name="name">
        <br><br><br>
        
        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px">Username: </label>
        <input type="text" style="font-size: 24px; width: 200px; height: 30px;" name="uname">
        <br><br><br>
        
        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px ">Password: </label>
        <input type="password" style="font-size: 24px; width: 200px; height: 30px; margin-left: 5px" name="pass">
        <br><br><br>
        
        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px ">Email: </label>
        <input type="text" style="font-size: 24px; width: 200px; height: 30px; margin-left: 47px" name="email">
        <br><br><br>
        
        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px ">Contact: </label>
        <input type="text" style="font-size: 24px; width: 200px; height: 30px; margin-left: 26px;" name="cont">
        <br><br><br><br><br>
        
      <input type="submit" style=" width: 120px; height: 45px; background: #FF7043" class="btn">
        
        <a href="Login.jsp"><button type="button" style=" width: 120px; height: 45px; background: #FF7043"value="Sign Up" class="btn">Login</button></a>
        </form>
    </center>
        <br><br><br><br><br><br>
</div>
 <br><br>
 </header>

</body>
</html>
