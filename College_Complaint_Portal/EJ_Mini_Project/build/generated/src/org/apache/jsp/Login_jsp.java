package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body style=\"font-family: 'Poppins', sans-serif;\">\n");
      out.write("    \n");
      out.write("  <div class=\"banner-image\"> </div>\n");
      out.write("  <div class=\"banner-text\">\n");
      out.write("      <br><br><br><br><br><br>\n");
      out.write("    <h1 style=\"font-size: 80px\">Welcome</h1>\n");
      out.write("      <p style=\"font-size: 20px\">To</p> \n");
      out.write("      <p style=\"font-size: 20px\">College Complaint Form</p>   \n");
      out.write("</div>  \n");
      out.write("    \n");
      out.write("<header style = \"background-image: radial-gradient(#D6EAF8,#EBF5FB);\"> \n");
      out.write("<div class=\"content\">\n");
      out.write("      <div class=\"title\" align = \"center\"><br>How may we assist you?</div>\n");
      out.write("        \n");
      out.write("    <br><br><br><br><br>\n");
      out.write("    <center>\n");
      out.write("     <form action=\"Validate.jsp\" name=\"form1\" id=\"form1\">\n");
      out.write("        <label style=\"font-size: 24px; width: 120px; height: 45px; padding: 10px\">Username: </label>\n");
      out.write("        <input type=\"text\" style=\"font-size: 24px; width: 200px; height: 30px;\" name=\"uname\">\n");
      out.write("        <br><br><br>\n");
      out.write("        \n");
      out.write("        <label style=\"font-size: 24px; width: 120px; height: 45px; padding: 10px \">Password: </label>\n");
      out.write("        <input type=\"password\" style=\"font-size: 24px; width: 200px; height: 30px; margin-left: 5px\" name=\"upass\">\n");
      out.write("        <br><br><br><br><br>\n");
      out.write("      <input type=\"submit\" style=\" width: 120px; height: 45px;\" class=\"btn\">\n");
      out.write("        \n");
      out.write("        <a href=\"Register.jsp\"><button type=\"button\" style=\" width: 120px; height: 45px; \"value=\"Sign Up\" class=\"btn\">Sign Up?</button></a>\n");
      out.write("    </form>\n");
      out.write("   </center>\n");
      out.write("        <br><br><br><br><br><br>\n");
      out.write("</div>\n");
      out.write(" <br><br>\n");
      out.write(" </header>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
