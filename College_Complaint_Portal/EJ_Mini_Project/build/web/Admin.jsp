<%-- 
    Document   : Admin
    Created on : 19 Sep, 2021, 5:44:19 PM
    Author     : Pranav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.*"%>
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
      <div class="title" align = "center"><br>Admin Panel</div>
        
    <br><br>
<%
    try
    {
       String url,uname,pass;
       url = "jdbc:mysql://localhost:3306/EJ_Mini_Project?useSSL=false";
       uname ="root" ;
       pass = "root";

       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection(url,uname,pass);

       PreparedStatement pst = con.prepareStatement("SELECT * FROM ComplaintTable");
       ResultSet rs = pst.executeQuery();

       out.print("<table><tr>\n"); 
           out.print("<th>ID</th>\n");
           out.print("<th>Complaint</th>\n");
           out.print("<th>Status</th>\n");
           
                while(rs.next())
                {
                    out.print("<tr>\n" + "<td>"+rs.getString(1)+"</td>\n");
                    out.print("<td>"+rs.getString(2)+"</td>\n");
                    out.print("<td>"+rs.getString(3)+"</td>\n"); 
                    
                }
                out.println("</table>");
    }
        
    catch(Exception e)
    {
        out.print("<br>"+"<br>");
        out.println(e);
        out.print("<br>"+"<br>");
    }
%>    
    <br><br><br>
    
    <center>
     <form action="AdminSave.jsp" name="form6" id="form6">
        <br><br><br>
        
    <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px ">Enter ComplaintID: </label>
    <input type="text" style="font-size: 24px; width: 200px; height: 30px;" name="cid">
    <br><br><br> 
         
    <label style="font-size: 24px;">Select Status: </label>
     <select name="status" id="status" style="font-size: 18px; margin-left: 10px; height: 30px; width: 100px;">
        <option value="Solved">Solved</option>
        <option value="Pending">Pending</option>
     </select>
         
         <br><br><br><br><br>
      <input type="submit" style=" width: 120px; height: 45px; background: #FF7043" class="btn">

    </form>
  </center>
        <br><br><br><br><br><br>
</div>
 <br><br>
 </header>

</body>
</html>
