<%-- 
    Document   : StatusDisp
    Created on : 19 Sep, 2021, 5:43:33 PM
    Author     : Pranav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.*"%>
<%
    String compid = request.getParameter("compid");
    
    try
    {
       String url,uname,pass;
       url = "jdbc:mysql://localhost:3306/EJ_Mini_Project?useSSL=false";
       uname ="root" ;
       pass = "root";

       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection(url,uname,pass);

       PreparedStatement pst = con.prepareStatement("SELECT * FROM ComplaintTable where id=?");
       pst.setString(1,compid);
       ResultSet rs = pst.executeQuery();
       HttpSession ses = request.getSession();
       if(rs.next())
       {
           ses.setAttribute("compid","Your Complaint Status is: "+rs.getString(3));
       }
       else
       {
           ses.setAttribute("compid","Invalid Complaint ID");
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
    
  <div class="banner3-image"> </div>
    <div class="banner3-text">
        <h1 style="font-size: 70px">We Listen</h1>
    </div>
<header style = "background-image: radial-gradient(#D6EAF8,#EBF5FB);"> 
<div class="content">
    
    <br><br><br><br>
    <!-- Display Label -->
    <center>
        <label style="font-size: 24px; color:darkblue" name="disp"> 
        <% HttpSession ses = request.getSession(); out.print(ses.getAttribute("compid")); %>
        </label>
    </center>
    <!-- Display Label -->
    <br><br><br><br><br><br>
    <center>
        <label style="font-size: 24px;padding: 10px">Fill in another complaint?</label>
        <br><br><br>
        <a href="Complaint.jsp"><button type="button" style=" width: 120px; height: 45px; background: #FF7043"value="Sign Up" class="btn">Yes</button></a>
  </center>
        <br><br><br><br><br><br>
</div>
 <br><br>
 </header>

</body>
</html>
