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
            <% String username=(String)session.getAttribute("username");
             String friendname=request.getParameter("friendname");
            %>
            <center><h2><font color="red"> <%=username%>'s</font> Profile</h2></center>
            <%@page import="java.sql.*" %>
            <%
               
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
      ResultSet rs=st.executeQuery("select * from user where username='"+friendname+"'");
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
          <%while(rs.next())
          {
              %>
              <tr>
                  <td><%=rs.getString(1)%></td>
                  
                  <td><%=rs.getString(3)%></td>
                  <td><%=rs.getString(4)%></td>
                  <td><%=rs.getString(5)%></td>
                  <td><%=rs.getString(6)%></td>
                  <td><%=rs.getString(7)%></td>
                  <td><img src="view.jsp?id=<%=rs.getString(10)%>" width="100px" height="100px"></td>
                  <td><%=rs.getString(9)%></td>
                 
              </tr>
         <% }
}
catch(Exception e)
{
out.print(e);
}
         %>
      </table>
      <p align="center" style="font-size:20px;"><a href="ViewFriendRequest.jsp">Back</a></p>
    
        </div>
         
    </body>
</html>
