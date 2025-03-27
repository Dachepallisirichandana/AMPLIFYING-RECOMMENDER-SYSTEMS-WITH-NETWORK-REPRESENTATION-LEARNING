<%-- 
    Document   : SendFriendRequest
    Created on : Dec 17, 2019, 4:26:44 PM
    Author     : Venkat Sweety
--%>
 <% String username=(String)session.getAttribute("username");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    String receiver=request.getParameter("receiver");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
        int i=st.executeUpdate("insert into friends values('"+username+"','"+receiver+"','Waiting',now() )");
        if(i>0)
        {
            %>
              <script type="text/javascript">
                  window.alert("Friend request Sent SucessFully");
                  window.location="SearchFriend.jsp";
                      </script>
                      <%
         
        }
else
{
%>
              <script type="text/javascript">
                  window.alert("Unable Send Friend Request");
                  window.location="SearchFriend.jsp";
                      </script>
                      <%     
}
}
                catch(Exception e)
                {
                    out.println(e);
}
                
%>