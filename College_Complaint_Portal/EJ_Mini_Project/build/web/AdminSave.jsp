<%-- 
    Document   : AdminSave
    Created on : 19 Sep, 2021, 5:44:31 PM
    Author     : Pranav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.*"%>

<%
    String id = request.getParameter("cid");
    String status = request.getParameter("status");
    
    try
    {
       String url,uname,pass;
       url = "jdbc:mysql://localhost:3306/EJ_Mini_Project?useSSL=false";
       uname ="root" ;
       pass = "root";

       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection(url,uname,pass);

       PreparedStatement pst = con.prepareStatement("UPDATE ComplaintTable SET status = ? WHERE id=?;");
       pst.setString(1,status);
       pst.setString(2,id);
       
       HttpSession ses = request.getSession();
       int row = pst.executeUpdate();
       if(row>=1)
       {
            ses.setAttribute("complaint","Status Updated!");
       }
       else
       {
            ses.setAttribute("complaint","Invalid Complaint ID");   
       }

    }
        
    catch(Exception e)
    {
        out.print("<br>"+"<br>");
        out.println(e);
        out.print("<br>"+"<br>");
    }
    
%>
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
    
  <div class="banner4-image"> </div>

<header style = "background-image: radial-gradient(#D6EAF8,#EBF5FB);"> 
<div class="content">
      <br><br><br>
    <!-- Display Label -->
    <center>
        <label style="font-size: 24px; color:darkblue" name="disp"> 
            <% HttpSession ses = request.getSession(); out.print(ses.getAttribute("complaint")); %>

        </label>
    </center>
    <!-- Display Label -->
        
    <br><br><br><br>
    
    <center>
        <label style="font-size: 24px;padding: 10px">Update Another Complaint?</label>
        <br><br><br>
        <a href="Admin.jsp"><button type="button" style=" width: 120px; height: 45px; background: #FF7043"value="Sign Up" class="btn">Yes</button></a>
  </center>
        <br><br><br><br><br><br>
</div>
 <br><br>
 </header>

</body>
</html>
