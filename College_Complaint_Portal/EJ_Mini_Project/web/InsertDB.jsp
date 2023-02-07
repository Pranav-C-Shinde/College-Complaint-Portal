<%-- 
    Document   : InsertDB
    Created on : 19 Sep, 2021, 7:58:23 PM
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
    </head>
    <body>

<%
    String name = request.getParameter("name");
    String username = request.getParameter("uname");
    String password = request.getParameter("pass");
    String email = request.getParameter("email");
    String contact = request.getParameter("cont");
    
    try
    {
       String url,uname,pass;
       url = "jdbc:mysql://localhost:3306/EJ_Mini_Project?useSSL=false";
       uname ="root" ;
       pass = "root";
       HttpSession ses = request.getSession();
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection(url,uname,pass);

       PreparedStatement pst = con.prepareStatement("SELECT * FROM UserTable WHERE uname=?");
       pst.setString(1,username);
       ResultSet rs = pst.executeQuery();
       
       if(rs.next()){
         String value = rs.getString(2);
         if(value.equals(username))
          {
            ses.setAttribute("uname","Username already exists");
            response.sendRedirect("Register.jsp");
          }
        }
    
    
    else
    {
       pst = con.prepareStatement("Insert into UserTable values (?,?,?,?,?)");
       pst.setString(1,name);
       pst.setString(2, username);
       pst.setString(3,password);
       pst.setString(4, email);
       pst.setString(5,contact);
       pst.executeUpdate();
       response.sendRedirect("Login.jsp");
    }
    }
        
    catch(Exception e)
    {
        out.print("<br>"+"<br>");
        out.println(e);
        out.print("<br>"+"<br>");
    }
    
%>
    </body>
</html>
