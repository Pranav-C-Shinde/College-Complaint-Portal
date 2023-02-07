<%@ page import = "java.sql.*"%>
<%@ page import = "java.util.*"%>
<%
    String username = request.getParameter("uname");
    String password = request.getParameter("upass");
    
    try
        {
           String url,uname,pass;
           url = "jdbc:mysql://localhost:3306/EJ_Mini_Project?useSSL=false";
           uname ="root" ;
           pass = "root";
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url,uname,pass);
         
           PreparedStatement pst = con.prepareStatement("Select * From UserTable where uname=? and pass=?");
           pst.setString(1,username);
           pst.setString(2, password); 
           ResultSet rs = pst.executeQuery();
           
           PreparedStatement pst2 = con.prepareStatement("Select * From AdminTable where uname=? and pass=?");
           pst2.setString(1,username);
           pst2.setString(2, password); 
           ResultSet rs2 = pst2.executeQuery();
           
           if(rs.next())
           {
               response.sendRedirect("Complaint.jsp");
           }

           else if(rs2.next())
           {
               response.sendRedirect("Admin.jsp");
           }
           
           else
           {
%>
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

                    <br><br>
                    <center>
                        <label style="font-size: 24px; color:red" name="disp"> 

                        Username or Password Incorrect

                        </label>
                    </center>
                    <br><br><br>
                    <center>
                     <form action="Validate.jsp" name="form1" id="form1">
                        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px">Username: </label>
                        <input type="text" style="font-size: 24px; width: 200px; height: 30px;" name="uname">
                        <br><br><br>

                        <label style="font-size: 24px; width: 120px; height: 45px; padding: 10px ">Password: </label>
                        <input type="text" style="font-size: 24px; width: 200px; height: 30px; margin-left: 5px" name="upass">
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


<%
               
           }
           
        }
        
        catch(Exception e)
        {
            out.print("<br>"+"<br>");
            out.println(e);
            out.print("<br>"+"<br>");
        }
%>

