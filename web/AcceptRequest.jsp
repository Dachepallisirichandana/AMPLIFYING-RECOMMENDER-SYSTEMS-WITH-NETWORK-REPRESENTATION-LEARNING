<%-- 
    Document   : AcceptRequest
    Created on : Dec 17, 2019, 6:15:45 PM
    Author     : Venkat Sweety
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
            <%
                String sender=request.getParameter("sender");
                
                String receiver=request.getParameter("receiver");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
      int i=st.executeUpdate("update friends set status='Friends' where sender='"+sender+"'and receiver='"+receiver+"'");
      if(i>0)
      {
          %>
              <script type="text/javascript">
                  window.alert("Friend request Accepted SucessFully");
                  window.location="UserHome.jsp";
                      </script>
                      <%
         }
      
else
{
        %>
              <script type="text/javascript">
                  window.alert("Unable to Accept Friend request");
                  window.location="UserHome.jsp";
                      </script>
                      <%
         
        }
}
catch(Exception e)
{
out.println(e);
}
     %>