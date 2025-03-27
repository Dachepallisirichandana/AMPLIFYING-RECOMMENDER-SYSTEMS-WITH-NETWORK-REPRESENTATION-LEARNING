<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>AMPLIFYING RECOMMENDER SYSTEMS WITH NETWORK REPRESENTATION LEARNING</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <style>
           

#abstract
{
    width:80%;
    height:400px;
 float:right;
    margin-right:80px;
}
        </style>
    </head>
    <body>
        <div id="title">AMPLIFYING RECOMMENDER SYSTEMS WITH NETWORK REPRESENTATION LEARNING</div>
        <div id="menu">
            <ul>
                <li><a href="ECommerceHome.jsp">Home</a></li>
                 <li><a href="index.html">Logout</a></li>
                   
            </ul>
        </div>
        
        
       
        
        <div id="abstract">
            <% String username=(String)session.getAttribute("username");%>
             <h2>Welcome Mr/Miss<font color="red"> <%=username%></font></h2>
             <center><h2>Search Friend Results</h2></center>
             <%@page import="java.sql.*" %>
            <%
                String fname=request.getParameter("fname");
                try
                {
                    
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
      ResultSet rs=st.executeQuery("select * from friends where sender='"+username+"' and receiver='"+fname+"' or sender='"+fname+"' and receiver='"+username +"'");
      if(rs.next())
      {
          String status=rs.getString(3);
          if(status.equalsIgnoreCase("Waiting"))
          {
              %>
              <script type="text/javascript">
                  window.alert("Friend request Alredy Sent");
                  window.location="SearchFriend.jsp";
                      </script>
                      <%
          }
            else
            if(status.equalsIgnoreCase("Friends"))
{
%>
              <script type="text/javascript">
                  window.alert("Alredy Friend ");
                  window.location="SearchFriend.jsp";
                      </script>
                      <%
}
}
else
{
ResultSet rs1=st.executeQuery("select * from user where username='"+fname+"'");
%>
      
      <table style="margin: 100px;" border="2px" bgcolor="orange">
          <tr>
              <th>User Name</th>
              <th>Email Id</th>
              <th>Mobile Number</th>
              <th>Address</th>
              <th>Date Of Birth</th>
              <th>Gender</th>
              <th>Profile Pic</th>
              <th>Status</th>
             
          </tr>
          <%while(rs1.next())
          {
              %>
              <tr>
                  <td><%=rs1.getString(1)%></td>
                  
                  <td><%=rs1.getString(3)%></td>
                  <td><%=rs1.getString(4)%></td>
                  <td><%=rs1.getString(5)%></td>
                  <td><%=rs1.getString(6)%></td>
                  <td><%=rs1.getString(7)%></td>
                  <td><img src="view.jsp?id=<%=rs1.getString(10)%>" width="100px" height="100px"></td>
                  <td><a href="SendFriendRequest.jsp?receiver=<%=rs1.getString(1)%>">Send Friend Request</a></td>
                 
              </tr>
         <% }
}

}
catch(Exception e)
{
out.print(e);
}

         %>
      </table>
            <p align="center" style="font-size:20px;"><a href="UserHome.jsp">Back</a></p>
        </div>
         
    </body>
</html>
