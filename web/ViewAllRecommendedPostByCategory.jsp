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
            <center>  <h2>View All Recommended Post Based On Post Category</h2></center>
            <%@page import="java.sql.*" %>
            <%String username=(String)session.getAttribute("username");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/network", "root", "root");
        Statement st= con.createStatement();
         Statement st1= con.createStatement();
      ResultSet rs=st.executeQuery("select * from products");
      %>
      <table style="margin: 100px;" border="2px" bgcolor="orange">
          <tr>
              <th>Category</th>
                 <th>Product name</th>
                    <th>Recommend By</th>
                       <th>Recommend To</th>
                          <th>Date</th>
                          <th>Image</th>
                </tr>
          <%while(rs.next())
          {
              String category=rs.getString("category");
              String id=rs.getString("id");
              String d="select p.category,p.pname,r.recommendby,r.recommendto,r.date,p.id from products p, recommend r where p.id=r.pid and p.category='"+category+"'";
ResultSet rr= st1.executeQuery(d);
while(rr.next()){
%>
              <tr>
                  <td><%=rr.getString("p.category")%></td>
               
                  <td><%=rr.getString("p.pname")%></td>
                   <td><%=rr.getString("r.recommendby")%></td>
                   <td><%=rr.getString("r.recommendto")%></td>
                    <td><%=rr.getString("r.date")%></td>
                     
                   <td><image src="view2.jsp?id=<%=rr.getString("p.id")%>" width="200" height="200"></td>
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
      <p align="center" style="font-size:20px;"><a href="ECommerceHome.jsp">Back</a></p>
    
        </div>
    </body>
</html>
