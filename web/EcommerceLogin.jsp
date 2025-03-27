<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%
    String username=request.getParameter("username");
    session.setAttribute("username",username);
    String password=request.getParameter("password");
    String provider=request.getParameter("provider");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
         Connection    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
     
      Statement st= con.createStatement();
      ResultSet rs=st.executeQuery("select * from ecommerce where username='"+username+"' and password='"+password+"' and provider='"+provider+"'");
      if(rs.next())
      {
       %>
       <script type="text/javascript">
           window.alert("E-commerce Server Login SuccessFully");
           window.location="ECommerceHome.jsp";
           
           </script>
        <%
      }
else
{
%>
       <script type="text/javascript">
           window.alert("E-commerce Server Login Fail");
           window.location="Ecommerce.jsp";
           
           </script>
        <%
}
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>


