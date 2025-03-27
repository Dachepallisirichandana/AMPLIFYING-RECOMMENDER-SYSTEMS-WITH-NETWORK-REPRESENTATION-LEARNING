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
table tr th{
    width:300px;
    height:40px;
    background: rosybrown;
    color:red;
}
table tr td{
   height:30px;
   background: aquamarine;
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
            <center><h2>View All Users Search History </h2></center>
            <%@page import="java.sql.*" %>
            <%String username=(String)session.getAttribute("username");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
      ResultSet rs=st.executeQuery("select * from history");
      %>
      <table style="margin: 100px;" border="2px" bgcolor="orange">
          <tr>
              <th>UserName</th>
              
              <th>Product Name</th>
              <th>Date</th>
            
              
          </tr>
          <%while(rs.next())
          {
              %>
              <tr>
                  <td><%=rs.getString("username")%></td>
               
                  <td><%=rs.getString("pname")%></td>
                   <td><%=rs.getString("date")%></td>
                
              </tr>
         <% }
}
catch(Exception e)
{
out.print(e);
}
         %>
      </table>
      <p align="center" style="font-size:20px;margin-bottom:100px;"><a href="ECommerceHome.jsp">Back</a></p>
    
        </div>
    </body>
</html>
