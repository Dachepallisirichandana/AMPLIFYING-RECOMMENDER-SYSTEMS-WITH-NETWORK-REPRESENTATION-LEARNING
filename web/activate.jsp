<%-- 
    Document   : activate
    Created on : 28 Jul, 2019, 6:39:20 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String username=request.getParameter("username");
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
        int i=st.executeUpdate("update user set status='Activated' where username='"+username+"'");
        if(i>0)
        {
             %>
                  <script type="text/javascript">
           window.alert("User Activated SuccessFully ");
           window.location="ViewAllUsers.jsp";
           
           </script>
                  <%
        }
else
{
 %>
                  <script type="text/javascript">
           window.alert("User Activation Fail");
           window.location="ViewAllUsers.jsp";
           
           </script>
                  <%
}
    }
    catch(Exception e)
    {
        out.print(e);
    }
    %>
